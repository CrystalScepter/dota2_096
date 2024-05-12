modifier_item_belt_of_strength_096 = class({})

-- Called when the modifier is created
function modifier_item_belt_of_strength_096:OnCreated( kv )
	self.bonus_strength = self:GetAbility():GetSpecialValueFor("bonus_strength")
end

-- Returns the events and properties our modifier affects
function modifier_item_belt_of_strength_096:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
	}
	return funcs
end

-- Returns the value for the property
function modifier_item_belt_of_strength_096:GetModifierBonusStats_Strength( params )
	return self.bonus_strength
end

-- Allows the modifier to stack
function modifier_item_belt_of_strength_096:GetAttributes()
	return MODIFIER_ATTRIBUTE_MULTIPLE
end

-- Prevents the modifier from showing up on the buff bar
function modifier_item_belt_of_strength_096:IsHidden()
	return true
end
