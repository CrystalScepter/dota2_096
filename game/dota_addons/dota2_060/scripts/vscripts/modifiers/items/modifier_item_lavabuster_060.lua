modifier_item_lavabuster_060 = class({})

-- Called when the modifier is created
function modifier_item_lavabuster_060:OnCreated(kv)
	self.bonus_damage = self:GetAbility():GetSpecialValueFor("bonus_damage")
	self.spell_damage = self:GetAbility():GetSpecialValueFor("spell_damage")
	self.stun_duration = self:GetAbility():GetSpecialValueFor("stun_duration")
end

-- Returns the events and properties our modifier affects
function modifier_item_lavabuster_060:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE,
	}
	return funcs
end

-- Returns the value for the property
function modifier_item_lavabuster_060:GetModifierPreAttack_BonusDamage(params)
	return self.bonus_damage
end

-- Allows the modifier to stack
function modifier_item_lavabuster_060:GetAttributes()
	return MODIFIER_ATTRIBUTE_MULTIPLE
end

-- Prevents the modifier from showing up on the buff bar
function modifier_item_lavabuster_060:IsHidden()
	return true
end
