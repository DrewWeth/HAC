-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_ENERGYBALL,0,1,1,1,1,0,1,-1,0,-1,-1,-1,-1,0,-1,1}

-- Areas/Combat for 100ms
local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat1_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat1_Brush = {CONST_ANI_ENERGYBALL,-1,1,0,1,1,1,1,0,1,-1,0,-1,-1,-1,-1,0}local combat1_Brush_2 = createCombatObject()
setCombatParam(combat1_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat1_Brush_2,createCombatArea({{1, 1, 1, 1, 1},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{1, 1, 1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat1_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat1_Brush_2 = {CONST_ANI_ENERGY,-2,0,-2,1,-2,2,-1,2,0,2,1,2,2,2,2,1,2,0,2,-1,2,-2,1,-2,0,-2,-1,-2,-2,-2,-2,-1}

-- Areas/Combat for 200ms
local combat2_Brush_2 = createCombatObject()
setCombatParam(combat2_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat2_Brush_2,createCombatArea({{1, 1, 1, 1, 1},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{1, 1, 1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat2_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat2_Brush_2 = {CONST_ANI_ENERGY,-2,-1,-2,0,-2,1,-2,2,-1,2,0,2,1,2,2,2,2,1,2,0,2,-1,2,-2,1,-2,0,-2,-1,-2,-2,-2}local combat2_Brush_3 = createCombatObject()
setCombatParam(combat2_Brush_3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat2_Brush_3,createCombatArea({{1, 1, 1, 1, 1, 1, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 1, 1, 1, 1, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat2_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat2_Brush_3 = {CONST_ANI_FIRE,-3,-2,-3,-1,-3,0,-3,1,-3,2,-3,3,-2,3,-1,3,0,3,1,3,2,3,3,3,3,2,3,1,3,0,3,-1,3,-2,3,-3,2,-3,1,-3,0,-3,-1,-3,-2,-3,-3,-3}

-- Areas/Combat for 300ms
local combat3_Brush_3 = createCombatObject()
setCombatParam(combat3_Brush_3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat3_Brush_3,createCombatArea({{1, 1, 1, 1, 1, 1, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 1, 1, 1, 1, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat3_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat3_Brush_3 = {CONST_ANI_FIRE,-3,-3,-3,-2,-3,-1,-3,0,-3,1,-3,2,-3,3,-2,3,-1,3,0,3,1,3,2,3,3,3,3,2,3,1,3,0,3,-1,3,-2,3,-3,2,-3,1,-3,0,-3,-1,-3,-2,-3}local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat3_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat3_Brush = {CONST_ANI_ENERGYBALL,-3,4,-3,5,-4,5,-4,4,-4,3,-5,3,-5,4,-5,5,4,-3,4,-4,3,-4,3,-5,4,-5,5,-5,5,-4,5,-3}local combat3_Brush_2 = createCombatObject()
setCombatParam(combat3_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat3_Brush_2,createCombatArea({{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat3_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat3_Brush_2 = {CONST_ANI_ENERGY,3,4,3,5,4,5,5,5,5,4,5,3,4,3,4,4,-4,-3,-3,-4,-4,-4,-3,-5,-4,-5,-5,-5,-5,-4,-5,-3}

-- Areas/Combat for 400ms
local combat4_Brush_3 = createCombatObject()
setCombatParam(combat4_Brush_3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat4_Brush_3,createCombatArea({{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{1, 1, 0, 0, 0, 2, 0, 0, 0, 1, 1},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat4_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat4_Brush_3 = {CONST_ANI_FIRE,-4,2,-5,2,-5,1,-5,0,-5,-1,-5,-2,-4,-2,-4,-1,-4,0,-4,1,-2,4,-2,5,-1,5,0,5,1,5,2,5,2,4,1,4,0,4,-1,4,4,2,5,2,5,1,5,0,5,-1,5,-2,4,-2,4,-1,4,0,4,1,-2,-4,-2,-5,-1,-5,0,-5,1,-5,2,-5,2,-4,1,-4,0,-4,-1,-4}local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{0, 1, 1},
{1, 2, 1},
{1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat4_Brush = {CONST_ANI_ENERGYBALL,-1,0,-1,1,0,1,1,0,1,-1,0,-1}

-- Areas/Combat for 500ms
local combat5_Brush_2 = createCombatObject()
setCombatParam(combat5_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat5_Brush_2,createCombatArea({{1, 1, 0},
{1, 2, 1},
{0, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat5_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat5_Brush_2 = {CONST_ANI_ENERGY,-1,0,-1,-1,0,-1,0,1,1,1,1,0}

-- Areas/Combat for 600ms
local combat6_Brush_3 = createCombatObject()
setCombatParam(combat6_Brush_3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat6_Brush_3,createCombatArea({{0, 1, 1},
{1, 2, 1},
{1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat6_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat6_Brush_3 = {CONST_ANI_FIRE,1,0,1,-1,0,-1,-1,0,-1,1,0,1}

-- Areas/Combat for 700ms
local combat7_Brush = createCombatObject()
setCombatParam(combat7_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat7_Brush,createCombatArea({{1, 1, 0},
{1, 2, 1},
{0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat7_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat7_Brush = {CONST_ANI_ENERGYBALL,-1,0,-1,-1,0,-1,0,1,1,1,1,0}

-- Areas/Combat for 800ms
local combat8_Brush_2 = createCombatObject()
setCombatParam(combat8_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat8_Brush_2,createCombatArea({{0, 1, 1},
{1, 2, 1},
{1, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat8_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat8_Brush_2 = {CONST_ANI_ENERGY,1,0,1,-1,0,-1,-1,0,-1,1,0,1}

-- Areas/Combat for 900ms
local combat9_Brush_3 = createCombatObject()
setCombatParam(combat9_Brush_3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat9_Brush_3,createCombatArea({{1, 1, 0},
{1, 2, 1},
{0, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat9_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat9_Brush_3 = {CONST_ANI_FIRE,0,1,1,1,1,0,0,-1,-1,-1,-1,0}

-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (30000000)*-1,(30000000)*-1 
end
setCombatCallback(combat10_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat10_Brush = {CONST_ANI_ENERGYBALL,1,0,1,-1,0,-1,-1,0,-1,1,0,1,1,1,-1,-1,-2,0,0,-2,2,0,0,2}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Partzz
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
	addEvent(RunPart,100,combat1_Brush,cid,var,dfcombat1_Brush,startPos)
	addEvent(RunPart,100,combat1_Brush_2,cid,var,dfcombat1_Brush_2,startPos)
	addEvent(RunPart,200,combat2_Brush_2,cid,var,dfcombat2_Brush_2,startPos)
	addEvent(RunPart,200,combat2_Brush_3,cid,var,dfcombat2_Brush_3,startPos)
	addEvent(RunPart,300,combat3_Brush_3,cid,var,dfcombat3_Brush_3,startPos)
	addEvent(RunPart,300,combat3_Brush,cid,var,dfcombat3_Brush,startPos)
	addEvent(RunPart,300,combat3_Brush_2,cid,var,dfcombat3_Brush_2,startPos)
	addEvent(RunPart,400,combat4_Brush_3,cid,var,dfcombat4_Brush_3,startPos)
	addEvent(RunPart,400,combat4_Brush,cid,var,dfcombat4_Brush,startPos)
	addEvent(RunPart,500,combat5_Brush_2,cid,var,dfcombat5_Brush_2,startPos)
	addEvent(RunPart,600,combat6_Brush_3,cid,var,dfcombat6_Brush_3,startPos)
	addEvent(RunPart,700,combat7_Brush,cid,var,dfcombat7_Brush,startPos)
	addEvent(RunPart,800,combat8_Brush_2,cid,var,dfcombat8_Brush_2,startPos)
	addEvent(RunPart,900,combat9_Brush_3,cid,var,dfcombat9_Brush_3,startPos)
	addEvent(RunPart,1000,combat10_Brush,cid,var,dfcombat10_Brush,startPos)
	return true
end