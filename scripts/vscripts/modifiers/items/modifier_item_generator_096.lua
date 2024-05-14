modifier_item_generator_096 = class({})

-- Called when the modifier is created
function modifier_item_generator_096:OnCreated( kv )
	self.bonus_health_regen = self:GetAbility():GetSpecialValueFor( "bonus_health_regen" )
	self.bonus_mana_regen = self:GetAbility():GetSpecialValueFor( "bonus_mana_regen" )
	self.radius = self:GetAbility():GetSpecialValueFor( "radius" )
end

-- Returns the events and properties our modifier affects
function modifier_item_generator_096:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT,
		MODIFIER_PROPERTY_MP_REGEN_AMPLIFY_PERCENTAGE,
	}
	return funcs
end

-- Returns the value for the property
function modifier_item_generator_096:GetModifierConstantHealthRegen( params )
	return self.bonus_health_regen
end

-- Returns the value for the property
function modifier_item_generator_096:GetModifierMPRegenAmplify_Percentage( params )
	return self.bonus_mana_regen
end

-- Allows the modifier to stack
function modifier_item_generator_096:GetAttributes()
	return MODIFIER_ATTRIBUTE_MULTIPLE
end

-- Prevents the modifier from showing up on the buff bar
function modifier_item_generator_096:IsHidden()
	return true
end

-- Indicates that the item has an aura
function modifier_item_generator_096:IsAura()
	return true
end

-- Returns the name of the aura modifier
function modifier_item_generator_096:GetModifierAura()
	return "modifier_truesight"
end

-- Restricts the aura to only allied units
function modifier_item_generator_096:GetAuraSearchTeam()
	return DOTA_UNIT_TARGET_TEAM_ENEMY
end

-- Allows the aura to affect only heroes and creeps (includes summons)
function modifier_item_generator_096:GetAuraSearchType()
	return DOTA_UNIT_TARGET_HERO + DOTA_UNIT_TARGET_CREEP
end

-- Returns the radius of the aura
function modifier_item_generator_096:GetAuraRadius()
	return self.radius
end
