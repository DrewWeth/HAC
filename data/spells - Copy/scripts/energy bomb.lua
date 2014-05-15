-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 2, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_ENERGY,-1,0,0,1,1,0,0,-1,-1,-1,1,1,1,-1,-1,1,0,2,1,2,-1,2,-2,1,-2,0,-2,-1,-1,-2,0,-2,1,-2,2,-1,2,0,2,1}

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat20_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat20_Brush = {CONST_ANI_ENERGY,-1,1,1,1,1,-1,-1,-1}

-- Areas/Combat for 1900ms
local combat19_Brush = createCombatObject()
setCombatParam(combat19_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat19_Brush,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat19_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat19_Brush = {CONST_ANI_ENERGY,0,-3,3,0,0,3,-3,0}

-- Areas/Combat for 1800ms
local combat18_Brush = createCombatObject()
setCombatParam(combat18_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat18_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{1, 1, 2, 1, 1},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat18_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat18_Brush = {CONST_ANI_ENERGY,0,1,1,0,2,0,0,2,-1,0,-2,0,0,-1,0,-2}

-- Areas/Combat for 1700ms
local combat17_Brush_3 = createCombatObject()
setCombatParam(combat17_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat17_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat17_Brush_3,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat17_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1600ms
local combat16_Brush_3 = createCombatObject()
setCombatParam(combat16_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat16_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat16_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1500ms
local combat15_Brush_3 = createCombatObject()
setCombatParam(combat15_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat15_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat15_Brush_3,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat15_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 900ms
local combat9_Brush_3 = createCombatObject()
setCombatParam(combat9_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat9_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush_3,createCombatArea({{1, 1, 1},
{1, 3, 1},
{1, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat9_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 800ms
local combat8_Brush_3 = createCombatObject()
setCombatParam(combat8_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat8_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat8_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 700ms
local combat7_Brush = createCombatObject()
setCombatParam(combat7_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat7_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat7_Brush = {CONST_ANI_ENERGY,-1,1,0,1,1,1,1,0,1,-1,0,-1,-1,-1,-1,0}local combat7_Brush_3 = createCombatObject()
setCombatParam(combat7_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat7_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush_3,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat7_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat6_Brush = {CONST_ANI_ENERGY,1,2,2,1,2,0,2,-1,1,-2,0,-2,-1,-2,-2,-1,-2,0,-2,1,-1,2,0,2}

-- Areas/Combat for 500ms
local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat5_Brush = {CONST_ANI_ENERGY,0,3,1,3,2,2,3,1,3,0,3,-1,2,-2,1,-3,0,-3,-1,-3,-2,-2,-3,-1,-3,0,-3,1,-2,2,-1,3}

-- Areas/Combat for 400ms
local combat4_Brush_2 = createCombatObject()
setCombatParam(combat4_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat4_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_2,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat4_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 300ms
local combat3_Brush_2 = createCombatObject()
setCombatParam(combat3_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat3_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_2,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat3_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 200ms
local combat2_Brush_2 = createCombatObject()
setCombatParam(combat2_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat2_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat2_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

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
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	addEvent(RunPart,2000,combat20_Brush,cid,var,dfcombat20_Brush,startPos)
	addEvent(RunPart,1900,combat19_Brush,cid,var,dfcombat19_Brush,startPos)
	addEvent(RunPart,1800,combat18_Brush,cid,var,dfcombat18_Brush,startPos)
	addEvent(RunPart,1700,combat17_Brush_3,cid,var)
	addEvent(RunPart,1600,combat16_Brush_3,cid,var)
	addEvent(RunPart,1500,combat15_Brush_3,cid,var)
	addEvent(RunPart,900,combat9_Brush_3,cid,var)
	addEvent(RunPart,800,combat8_Brush_3,cid,var)
	addEvent(RunPart,700,combat7_Brush,cid,var,dfcombat7_Brush,startPos)
	addEvent(RunPart,700,combat7_Brush_3,cid,var)
	addEvent(RunPart,600,combat6_Brush,cid,var,dfcombat6_Brush,startPos)
	addEvent(RunPart,500,combat5_Brush,cid,var,dfcombat5_Brush,startPos)
	addEvent(RunPart,400,combat4_Brush_2,cid,var)
	addEvent(RunPart,300,combat3_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush_2,cid,var)
	return true
end