local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{0, 0, 2},
{1, 0, 0},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat1_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1, 1, 0},
{1, 0, 0},
{1, 0, 2}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{1, 1, 1},
{0, 0, 1},
{2, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat3_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1, 1, 1, 0},
{1, 2, 1, 1},
{1, 1, 1, 1},
{0, 0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{0, 1, 1, 1},
{0, 1, 2, 1},
{1, 1, 1, 1},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{1, 1, 0, 0},
{1, 1, 1, 1},
{1, 1, 2, 1},
{0, 1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat7_Brush = createCombatObject()
setCombatParam(combat7_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat7_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush,createCombatArea({{0, 1, 1, 1},
{1, 1, 1, 1},
{1, 2, 1, 0},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat7_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{1, 1, 1, 0},
{1, 2, 1, 1},
{1, 1, 1, 1},
{0, 0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat9_Brush = createCombatObject()
setCombatParam(combat9_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat9_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush,createCombatArea({{0, 1, 1, 1},
{0, 1, 2, 1},
{1, 1, 1, 1},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat9_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{1, 1, 0, 0},
{1, 1, 1, 1},
{1, 1, 2, 1},
{0, 1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat10_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat11_Brush = createCombatObject()
setCombatParam(combat11_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat11_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat11_Brush,createCombatArea({{0, 1, 1, 1},
{1, 1, 1, 1},
{1, 2, 1, 0},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat11_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{1, 1, 1, 0},
{1, 2, 1, 1},
{1, 1, 1, 1},
{0, 0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat12_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat13_Brush = createCombatObject()
setCombatParam(combat13_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat13_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat13_Brush,createCombatArea({{0, 1, 1, 1},
{0, 1, 2, 1},
{1, 1, 1, 1},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat13_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{1, 1, 0, 0},
{1, 1, 1, 1},
{1, 1, 2, 1},
{0, 1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat14_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat15_Brush = createCombatObject()
setCombatParam(combat15_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat15_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat15_Brush,createCombatArea({{0, 1, 1, 1},
{1, 1, 1, 1},
{1, 2, 1, 0},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat15_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{1, 1, 1, 0},
{1, 2, 1, 1},
{1, 1, 1, 1},
{0, 0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat16_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat17_Brush = createCombatObject()
setCombatParam(combat17_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat17_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat17_Brush,createCombatArea({{0, 1, 1, 1},
{0, 1, 2, 1},
{1, 1, 1, 1},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat17_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat18_Brush = createCombatObject()
setCombatParam(combat18_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat18_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat18_Brush,createCombatArea({{1, 1, 0, 0},
{1, 1, 1, 1},
{1, 1, 2, 1},
{0, 1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat18_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat19_Brush = createCombatObject()
setCombatParam(combat19_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat19_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat19_Brush,createCombatArea({{0, 1, 1, 1},
{1, 1, 1, 1},
{1, 2, 1, 0},
{1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat19_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{1, 1, 1, 0},
{1, 2, 1, 1},
{1, 1, 1, 1},
{0, 0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (5000000)*-1,(5000000)*-1 
end
setCombatCallback(combat20_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local function RunPart(c,cid,var,dirList,dirEmitPos)
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	addEvent(RunPart,100,combat1_Brush,cid,var)
	RunPart(combat0_Brush,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,300,combat3_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	addEvent(RunPart,500,combat5_Brush,cid,var)
	addEvent(RunPart,600,combat6_Brush,cid,var)
	addEvent(RunPart,700,combat7_Brush,cid,var)
	addEvent(RunPart,800,combat8_Brush,cid,var)
	addEvent(RunPart,900,combat9_Brush,cid,var)
	addEvent(RunPart,1000,combat10_Brush,cid,var)
	addEvent(RunPart,1100,combat11_Brush,cid,var)
	addEvent(RunPart,1200,combat12_Brush,cid,var)
	addEvent(RunPart,1300,combat13_Brush,cid,var)
	addEvent(RunPart,1400,combat14_Brush,cid,var)
	addEvent(RunPart,1500,combat15_Brush,cid,var)
	addEvent(RunPart,1600,combat16_Brush,cid,var)
	addEvent(RunPart,1700,combat17_Brush,cid,var)
	addEvent(RunPart,1800,combat18_Brush,cid,var)
	addEvent(RunPart,1900,combat19_Brush,cid,var)
	addEvent(RunPart,2000,combat20_Brush,cid,var)
	return true
end