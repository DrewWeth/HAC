-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 100ms
local combat1_Brush_2 = createCombatObject()
setCombatParam(combat1_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat1_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_2,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1},
{0, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat1_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{0, 2},
{0, 0},
{1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 200ms
local combat2_Brush_2 = createCombatObject()
setCombatParam(combat2_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat2_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_2,createCombatArea({{2, 0},
{0, 0},
{0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat2_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 300ms
local combat3_Brush_2 = createCombatObject()
setCombatParam(combat3_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat3_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_2,createCombatArea({{2, 0, 0},
{0, 0, 0},
{0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat3_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat4_Brush_2 = createCombatObject()
setCombatParam(combat4_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat4_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_2,createCombatArea({{2, 0, 0},
{0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat4_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 500ms
local combat5_Brush_2 = createCombatObject()
setCombatParam(combat5_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat5_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_2,createCombatArea({{1, 1, 1, 0},
{1, 2, 1, 1},
{1, 1, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat5_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 600ms
local combat6_Brush_2 = createCombatObject()
setCombatParam(combat6_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat6_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_2,createCombatArea({{0, 0, 1},
{2, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat6_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 700ms
local combat7_Brush_2 = createCombatObject()
setCombatParam(combat7_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat7_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush_2,createCombatArea({{0, 0, 1},
{0, 0, 0},
{2, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat7_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat8_Brush_2 = createCombatObject()
setCombatParam(combat8_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat8_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_2,createCombatArea({{0, 1},
{0, 0},
{2, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat8_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 900ms
local combat9_Brush_2 = createCombatObject()
setCombatParam(combat9_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat9_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush_2,createCombatArea({{0, 1, 0},
{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat9_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1000ms
local combat10_Brush_2 = createCombatObject()
setCombatParam(combat10_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat10_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_2,createCombatArea({{1, 0},
{0, 0},
{0, 2}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat10_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1100ms
local combat11_Brush_2 = createCombatObject()
setCombatParam(combat11_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat11_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat11_Brush_2,createCombatArea({{1, 0, 0},
{0, 0, 0},
{0, 0, 2}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat11_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat12_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat12_Brush_2 = createCombatObject()
setCombatParam(combat12_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat12_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush_2,createCombatArea({{1, 0, 0},
{0, 0, 2}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat12_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1300ms
local combat13_Brush_2 = createCombatObject()
setCombatParam(combat13_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat13_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat13_Brush_2,createCombatArea({{0, 1, 1, 1},
{1, 1, 2, 1},
{0, 1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat13_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1400ms
local combat14_Brush_2 = createCombatObject()
setCombatParam(combat14_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat14_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush_2,createCombatArea({{0, 0, 2},
{1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat14_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1500ms
local combat15_Brush_2 = createCombatObject()
setCombatParam(combat15_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat15_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat15_Brush_2,createCombatArea({{0, 0, 2},
{0, 0, 0},
{1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat15_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1600ms
local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat16_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat16_Brush_2 = createCombatObject()
setCombatParam(combat16_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat16_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush_2,createCombatArea({{0, 2},
{0, 0},
{1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat16_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1700ms
local combat17_Brush_2 = createCombatObject()
setCombatParam(combat17_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat17_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat17_Brush_2,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1},
{0, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat17_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1800ms
local combat18_Brush_2 = createCombatObject()
setCombatParam(combat18_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat18_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat18_Brush_2,createCombatArea({{2, 0},
{0, 0},
{0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat18_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1900ms
local combat19_Brush_2 = createCombatObject()
setCombatParam(combat19_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat19_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat19_Brush_2,createCombatArea({{2, 0, 0},
{0, 0, 0},
{0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat19_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (4500000)*-1,(4500000)*-1 
end
setCombatCallback(combat20_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

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
	addEvent(RunPart,100,combat1_Brush_2,cid,var)
	RunPart(combat0_Brush,cid,var)
	RunPart(combat0_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush_2,cid,var)
	addEvent(RunPart,300,combat3_Brush_2,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush_2,cid,var)
	addEvent(RunPart,500,combat5_Brush_2,cid,var)
	addEvent(RunPart,600,combat6_Brush_2,cid,var)
	addEvent(RunPart,700,combat7_Brush_2,cid,var)
	addEvent(RunPart,800,combat8_Brush,cid,var)
	addEvent(RunPart,800,combat8_Brush_2,cid,var)
	addEvent(RunPart,900,combat9_Brush_2,cid,var)
	addEvent(RunPart,1000,combat10_Brush_2,cid,var)
	addEvent(RunPart,1100,combat11_Brush_2,cid,var)
	addEvent(RunPart,1200,combat12_Brush,cid,var)
	addEvent(RunPart,1200,combat12_Brush_2,cid,var)
	addEvent(RunPart,1300,combat13_Brush_2,cid,var)
	addEvent(RunPart,1400,combat14_Brush_2,cid,var)
	addEvent(RunPart,1500,combat15_Brush_2,cid,var)
	addEvent(RunPart,1600,combat16_Brush,cid,var)
	addEvent(RunPart,1600,combat16_Brush_2,cid,var)
	addEvent(RunPart,1700,combat17_Brush_2,cid,var)
	addEvent(RunPart,1800,combat18_Brush_2,cid,var)
	addEvent(RunPart,1900,combat19_Brush_2,cid,var)
	addEvent(RunPart,2000,combat20_Brush,cid,var)
	return true
end