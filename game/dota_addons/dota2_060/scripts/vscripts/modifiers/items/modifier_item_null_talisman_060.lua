modifier_item_null_talisman_060 = class({})

-- Called when the modifier is created
function modifier_item_null_talisman_060:OnCreated(kv)
	self.bonus_strength = self:GetAbility():GetSpecialValueFor("all_attributes")
	self.bonus_agility = self:GetAbility():GetSpecialValueFor("all_attributes")
	self.bonus_intelligence = self:GetAbility():GetSpecialValueFor("all_attributes")
		+ self:GetAbility():GetSpecialValueFor("bonus_intelligence")
	self.bonus_armor = self:GetAbility():GetSpecialValueFor("bonus_armor")
end

-- Returns the events and properties our modifier affects
function modifier_item_null_talisman_060:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
	}
	return funcs
end

-- Returns the value for the property
function modifier_item_null_talisman_060:GetModifierBonusStats_Strength(params)
	return self.bonus_strength
end

-- Returns the value for the property
function modifier_item_null_talisman_060:GetModifierBonusStats_Agility(params)
	return self.bonus_agility
end

-- Returns the value for the property
function modifier_item_null_talisman_060:GetModifierBonusStats_Intellect(params)
	return self.bonus_intelligence
end

-- Returns the value for the property
function modifier_item_null_talisman_060:GetModifierPhysicalArmorBonus(params)
	return self.bonus_armor
end

-- Allows the modifier to stack
function modifier_item_null_talisman_060:GetAttributes()
	return MODIFIER_ATTRIBUTE_MULTIPLE
end

-- Prevents the modifier from showing up on the buff bar
function modifier_item_null_talisman_060:IsHidden()
	return true
end
