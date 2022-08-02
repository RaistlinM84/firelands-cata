/*
 * This file is part of the FirelandsCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _FIRELANDS_ITEM_H
#define _FIRELANDS_ITEM_H

#include "Object.h"
#include "Common.h"
#include "DatabaseEnvFwd.h"
#include "ItemDefines.h"
#include "ItemEnchantmentMgr.h"
#include "ItemTemplate.h"
#include "Loot.h"

class SpellInfo;
class Bag;
class Unit;

struct ItemSetEffect
{
    uint32 setid;
    uint32 item_count;
    SpellInfo const* spells[8];
};

#define MAX_GEM_SOCKETS               MAX_ITEM_PROTO_SOCKETS// (BONUS_ENCHANTMENT_SLOT-SOCK_ENCHANTMENT_SLOT) and item proto size, equal value expected

enum EnchantmentOffset
{
    ENCHANTMENT_ID_OFFSET       = 0,
    ENCHANTMENT_DURATION_OFFSET = 1,
    ENCHANTMENT_CHARGES_OFFSET  = 2                         // now here not only charges, but something new in wotlk
};

#define MAX_ENCHANTMENT_OFFSET    3

enum ItemUpdateState
{
    ITEM_UNCHANGED                               = 0,
    ITEM_CHANGED                                 = 1,
    ITEM_NEW                                     = 2,
    ITEM_REMOVED                                 = 3
};

bool ItemCanGoIntoBag(ItemTemplate const* proto, ItemTemplate const* pBagProto);

class FC_GAME_API Item : public Object
{
    friend void AddItemToUpdateQueueOf(Item* item, Player* player);
    friend void RemoveItemFromUpdateQueueOf(Item* item, Player* player);

    public:
        static Item* CreateItem(uint32 itemEntry, uint32 count, Player const* player = nullptr);
        Item* CloneItem(uint32 count, Player const* player = nullptr) const;

        Item();

        virtual bool Create(ObjectGuid::LowType guidlow, uint32 itemId, Player const* owner);

        ItemTemplate const* GetTemplate() const;

        ObjectGuid GetOwnerGUID()    const { return GetGuidValue(ITEM_FIELD_OWNER); }
        void SetOwnerGUID(ObjectGuid guid) { SetGuidValue(ITEM_FIELD_OWNER, guid); }
        Player* GetOwner()const;

        void SetBinding(bool val) { ApplyModFlag(ITEM_FIELD_FLAGS, ITEM_FIELD_FLAG_SOULBOUND, val); }
        bool IsSoulBound() const { return HasFlag(ITEM_FIELD_FLAGS, ITEM_FIELD_FLAG_SOULBOUND); }
        bool IsBoundAccountWide() const { return (GetTemplate()->GetFlags() & ITEM_FLAG_IS_BOUND_TO_ACCOUNT) != 0; }
        bool IsBattlenetAccountBound() const { return (GetTemplate()->GetFlags2() & ITEM_FLAG2_BNET_ACCOUNT_TRADE_OK) != 0; }
        bool IsBindedNotWith(Player const* player) const;
        bool IsBoundByEnchant() const;
        virtual void SaveToDB(CharacterDatabaseTransaction& trans);
        virtual bool LoadFromDB(ObjectGuid::LowType guid, ObjectGuid owner_guid, Field* fields, uint32 entry);
        static void DeleteFromDB(CharacterDatabaseTransaction& trans, ObjectGuid::LowType itemGuid);
        virtual void DeleteFromDB(CharacterDatabaseTransaction& trans);
        static void DeleteFromInventoryDB(CharacterDatabaseTransaction& trans, ObjectGuid::LowType itemGuid);

        void DeleteFromInventoryDB(CharacterDatabaseTransaction& trans);
        void SaveRefundDataToDB();
        void DeleteRefundDataFromDB(CharacterDatabaseTransaction* trans);

        Bag* ToBag() { if (IsBag()) return reinterpret_cast<Bag*>(this); else return nullptr; }
        Bag const* ToBag() const { if (IsBag()) return reinterpret_cast<Bag const*>(this); else return nullptr; }

        bool IsLocked() const { return !HasFlag(ITEM_FIELD_FLAGS, ITEM_FIELD_FLAG_UNLOCKED); }
        bool IsBag() const { return GetTemplate()->GetInventoryType() == INVTYPE_BAG; }
        bool IsCurrencyToken() const { return GetTemplate()->IsCurrencyToken(); }
        bool IsNotEmptyBag() const;
        bool IsBroken() const { return GetUInt32Value(ITEM_FIELD_MAXDURABILITY) > 0 && GetUInt32Value(ITEM_FIELD_DURABILITY) == 0; }
        bool CanBeTraded(bool mail = false, bool trade = false) const;
        void SetInTrade(bool b = true) { mb_in_trade = b; }
        bool IsInTrade() const { return mb_in_trade; }

        uint32 CalculateDurabilityRepairCost(float discount) const;

        bool HasEnchantRequiredSkill(Player const* player) const;
        uint32 GetEnchantRequiredLevel() const;

        bool IsFitToSpellRequirements(SpellInfo const* spellInfo) const;
        bool IsLimitedToAnotherMapOrZone(uint32 cur_mapId, uint32 cur_zoneId) const;
        bool GemsFitSockets() const;

        uint32 GetCount() const { return GetUInt32Value(ITEM_FIELD_STACK_COUNT); }
        void SetCount(uint32 value);
        uint32 GetMaxStackCount() const { return GetTemplate()->GetMaxStackSize(); }
        uint8 GetGemCountWithID(uint32 GemID) const;
        uint8 GetGemCountWithLimitCategory(uint32 limitCategory) const;
        InventoryResult CanBeMergedPartlyWith(ItemTemplate const* proto) const;

        uint8 GetSlot() const {return m_slot;}
        Bag* GetContainer() { return m_container; }
        uint8 GetBagSlot() const;
        void SetSlot(uint8 slot) { m_slot = slot; }
        uint16 GetPos() const { return uint16(GetBagSlot()) << 8 | GetSlot(); }
        void SetContainer(Bag* container) { m_container = container; }

        bool IsInBag() const { return m_container != nullptr; }
        bool IsEquipped() const;

        uint32 GetSkill();

        // RandomPropertyId (signed but stored as unsigned)
        int32 GetItemRandomPropertyId() const { return GetInt32Value(ITEM_FIELD_RANDOM_PROPERTIES_ID); }
        uint32 GetItemSuffixFactor() const { return GetUInt32Value(ITEM_FIELD_PROPERTY_SEED); }
        void SetItemRandomProperties(ItemRandomEnchantmentId const& randomPropId);
        void UpdateItemSuffixFactor();
        ItemRandomEnchantmentId GetItemRandomEnchantmentId() const { return m_randomEnchantment; }
        void SetEnchantment(EnchantmentSlot slot, uint32 id, uint32 duration, uint32 charges, ObjectGuid caster = ObjectGuid::Empty);
        void SetEnchantmentDuration(EnchantmentSlot slot, uint32 duration, Player* owner);
        void SetEnchantmentCharges(EnchantmentSlot slot, uint32 charges);
        void ClearEnchantment(EnchantmentSlot slot);
        uint32 GetEnchantmentId(EnchantmentSlot slot)       const { return GetUInt32Value(ITEM_FIELD_ENCHANTMENT_1_1 + slot*MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_ID_OFFSET);}
        uint32 GetEnchantmentDuration(EnchantmentSlot slot) const { return GetUInt32Value(ITEM_FIELD_ENCHANTMENT_1_1 + slot*MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_DURATION_OFFSET);}
        uint32 GetEnchantmentCharges(EnchantmentSlot slot)  const { return GetUInt32Value(ITEM_FIELD_ENCHANTMENT_1_1 + slot*MAX_ENCHANTMENT_OFFSET + ENCHANTMENT_CHARGES_OFFSET);}

        std::string const& GetText() const { return m_text; }
        void SetText(std::string const& text) { m_text = text; }

        void SendUpdateSockets();

        void SendTimeUpdate(Player* owner);
        void UpdateDuration(Player* owner, uint32 diff);

        // spell charges (signed but stored as unsigned)
        int32 GetSpellCharges(uint8 index/*0..5*/ = 0) const { return GetInt32Value(ITEM_FIELD_SPELL_CHARGES + index); }
        void  SetSpellCharges(uint8 index/*0..5*/, int32 value) { SetInt32Value(ITEM_FIELD_SPELL_CHARGES + index, value); }

        Loot loot;
        bool m_lootGenerated;

        // Update States
        ItemUpdateState GetState() const { return uState; }
        void SetState(ItemUpdateState state, Player* forplayer = nullptr);
        bool IsInUpdateQueue() const { return uQueuePos != -1; }
        uint16 GetQueuePos() const { return uQueuePos; }
        void FSetState(ItemUpdateState state)               // forced
        {
            uState = state;
        }

        bool hasQuest(uint32 quest_id) const override { return GetTemplate()->GetStartQuest() == quest_id; }
        bool hasInvolvedQuest(uint32 /*quest_id*/) const override { return false; }
        bool HasStats() const;
        bool IsPotion() const { return GetTemplate()->IsPotion(); }
        bool IsVellum() const { return GetTemplate()->IsVellum(); }
        bool IsConjuredConsumable() const { return GetTemplate()->IsConjuredConsumable(); }
        bool IsRangedWeapon() const { return GetTemplate()->IsRangedWeapon(); }
        uint32 GetItemLevel() const { return GetTemplate()->GetBaseItemLevel(); }
        uint32 GetDisplayId() const { return GetTemplate()->GetDisplayID(); }


        // Item Refund system
        void SetNotRefundable(Player* owner, bool changestate = true, CharacterDatabaseTransaction* trans = nullptr);
        void SetRefundRecipient(ObjectGuid::LowType pGuidLow) { m_refundRecipient = pGuidLow; }
        void SetPaidMoney(uint32 money) { m_paidMoney = money; }
        void SetPaidExtendedCost(uint32 iece) { m_paidExtendedCost = iece; }

        uint32 GetRefundRecipient() const { return m_refundRecipient; }
        uint32 GetPaidMoney() const { return m_paidMoney; }
        uint32 GetPaidExtendedCost() const { return m_paidExtendedCost; }

        void UpdatePlayedTime(Player* owner);
        uint32 GetPlayedTime(Player const* owner) const;
        bool IsRefundExpired(Player const* owner) const;

        // Soulbound trade system
        void SetSoulboundTradeable(GuidSet const& allowedLooters);
        void ClearSoulboundTradeable(Player* currentOwner);
        bool CheckSoulboundTradeExpire();

        void BuildUpdate(UpdateDataMapType&) override;

        bool AddToObjectUpdate() override;
        void RemoveFromObjectUpdate() override;

        uint32 GetScriptId() const { return GetTemplate()->ScriptId; }

        bool CanBeTransmogrified() const;
        bool CanTransmogrify() const;
        static bool CanTransmogrifyItemWithItem(Item const* transmogrified, Item const* transmogrifier);
        static uint32 GetSpecialPrice(ItemTemplate const* proto, uint32 minimumPrice = 10000);
        uint32 GetSpecialPrice(uint32 minimumPrice = 10000) const { return Item::GetSpecialPrice(GetTemplate(), minimumPrice); }

        uint32 GetVisibleEntry() const
        {
            if (uint32 transmogrification = GetEnchantmentId(TRANSMOGRIFY_ENCHANTMENT_SLOT))
                return transmogrification;
            return GetEntry();
        }

        static uint32 GetSellPrice(ItemTemplate const* proto, bool& success);

        int32 GetReforgableStat(ItemModType statType) const;

    private:
        std::string m_text;
        uint8 m_slot;
        Bag* m_container;
        ItemUpdateState uState;
        int16 uQueuePos;
        bool mb_in_trade;                                   // true if item is currently in trade-window
        ObjectGuid::LowType m_refundRecipient;
        uint32 m_paidMoney;
        uint32 m_paidExtendedCost;
        GuidSet allowedGUIDs;
        ItemRandomEnchantmentId m_randomEnchantment;
};
#endif
