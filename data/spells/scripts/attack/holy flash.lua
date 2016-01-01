local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)

local condition = Condition(CONDITION_DAZZLED)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)
condition:addDamage(50, 10000, -10)
combat:setCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
