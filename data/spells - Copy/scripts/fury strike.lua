-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 100ms
local combat1_Brush_2 = createCombatObject()
setCombatParam(combat1_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat1_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat1_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 200ms
local combat2_Brush_2 = createCombatObject()
setCombatParam(combat2_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat2_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat2_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat4_Brush_2 = createCombatObject()
setCombatParam(combat4_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat4_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat4_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 600ms
local combat6_Brush_2 = createCombatObject()
setCombatParam(combat6_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat6_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat6_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat8_Brush_2 = createCombatObject()
setCombatParam(combat8_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat8_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat8_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1000ms
local combat10_Brush_2 = createCombatObject()
setCombatParam(combat10_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat10_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat10_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat10_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat12_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat12_Brush_2 = createCombatObject()
setCombatParam(combat12_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat12_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat12_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1400ms
local combat14_Brush_2 = createCombatObject()
setCombatParam(combat14_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat14_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat14_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat14_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 1600ms
local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat16_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat16_Brush_2 = createCombatObject()
setCombatParam(combat16_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat16_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat16_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1800ms
local combat18_Brush_2 = createCombatObject()
setCombatParam(combat18_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat18_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat18_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat18_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat18_Brush = createCombatObject()
setCombatParam(combat18_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat18_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat18_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat18_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat20_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat20_Brush_2 = createCombatObject()
setCombatParam(combat20_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat20_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat20_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1500000)*-1,(1500000)*-1 
end
setCombatCallback(combat20_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
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
	RunPart(combat0_Brush,cid,var)
	addEvent(RunPart,100,combat1_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush_2,cid,var)
	addEvent(RunPart,600,combat6_Brush_2,cid,var)
	addEvent(RunPart,600,combat6_Brush,cid,var)
	addEvent(RunPart,800,combat8_Brush,cid,var)
	addEvent(RunPart,800,combat8_Brush_2,cid,var)
	addEvent(RunPart,1000,combat10_Brush_2,cid,var)
	addEvent(RunPart,1000,combat10_Brush,cid,var)
	addEvent(RunPart,1200,combat12_Brush,cid,var)
	addEvent(RunPart,1200,combat12_Brush_2,cid,var)
	addEvent(RunPart,1400,combat14_Brush_2,cid,var)
	addEvent(RunPart,1400,combat14_Brush,cid,var)
	addEvent(RunPart,1600,combat16_Brush,cid,var)
	addEvent(RunPart,1600,combat16_Brush_2,cid,var)
	addEvent(RunPart,1800,combat18_Brush_2,cid,var)
	addEvent(RunPart,1800,combat18_Brush,cid,var)
	addEvent(RunPart,2000,combat20_Brush,cid,var)
	addEvent(RunPart,2000,combat20_Brush_2,cid,var)
	return true
end