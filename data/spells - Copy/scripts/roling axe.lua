-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_WHIRLWINDAXE,-1,1,1,-1}

-- Areas/Combat for 100ms
local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat1_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat1_Brush = {CONST_ANI_WHIRLWINDAXE,0,1,0,-1}local combat1_Brush_2 = createCombatObject()
setCombatParam(combat1_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat1_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_2,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat1_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat2_Brush = {CONST_ANI_WHIRLWINDAXE,1,1,-1,-1}local combat2_Brush_2 = createCombatObject()
setCombatParam(combat2_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat2_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_2,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat2_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat2_Brush_3 = createCombatObject()
setCombatParam(combat2_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat2_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_3,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat2_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 300ms
local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{1, 2, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat3_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat3_Brush = {CONST_ANI_WHIRLWINDAXE,1,0,-1,0}local combat3_Brush_2 = createCombatObject()
setCombatParam(combat3_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat3_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_2,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat3_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat3_Brush_3 = createCombatObject()
setCombatParam(combat3_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat3_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_3,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat3_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat4_Brush = {CONST_ANI_WHIRLWINDAXE,1,-1,-1,1}local combat4_Brush_2 = createCombatObject()
setCombatParam(combat4_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat4_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_2,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat4_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat4_Brush_3 = createCombatObject()
setCombatParam(combat4_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat4_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_3,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat4_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 500ms
local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat5_Brush = {CONST_ANI_WHIRLWINDAXE,0,-1,0,1}local combat5_Brush_2 = createCombatObject()
setCombatParam(combat5_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat5_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_2,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat5_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat5_Brush_3 = createCombatObject()
setCombatParam(combat5_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat5_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_3,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat5_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat6_Brush = {CONST_ANI_WHIRLWINDAXE,-1,-1,1,1}local combat6_Brush_2 = createCombatObject()
setCombatParam(combat6_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat6_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_2,createCombatArea({{1},
{3},
{1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat6_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat6_Brush_3 = createCombatObject()
setCombatParam(combat6_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat6_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_3,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat6_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 700ms
local combat7_Brush = createCombatObject()
setCombatParam(combat7_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush,createCombatArea({{1, 2, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat7_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat7_Brush = {CONST_ANI_WHIRLWINDAXE,1,0,-1,0}local combat7_Brush_2 = createCombatObject()
setCombatParam(combat7_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat7_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush_2,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat7_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat7_Brush_3 = createCombatObject()
setCombatParam(combat7_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat7_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat7_Brush_3,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat7_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat8_Brush = {CONST_ANI_WHIRLWINDAXE,1,-1,-1,1}local combat8_Brush_2 = createCombatObject()
setCombatParam(combat8_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat8_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_2,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat8_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat8_Brush_3 = createCombatObject()
setCombatParam(combat8_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat8_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_3,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat8_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 900ms
local combat9_Brush = createCombatObject()
setCombatParam(combat9_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat9_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat9_Brush = {CONST_ANI_WHIRLWINDAXE,0,-1,0,1}local combat9_Brush_2 = createCombatObject()
setCombatParam(combat9_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat9_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush_2,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat9_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat9_Brush_3 = createCombatObject()
setCombatParam(combat9_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat9_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush_3,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat9_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat10_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat10_Brush = {CONST_ANI_WHIRLWINDAXE,-1,-1,1,1}local combat10_Brush_2 = createCombatObject()
setCombatParam(combat10_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat10_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_2,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat10_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat10_Brush_3 = createCombatObject()
setCombatParam(combat10_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat10_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_3,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat10_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1100ms
local combat11_Brush = createCombatObject()
setCombatParam(combat11_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat11_Brush,createCombatArea({{1, 2, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat11_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat11_Brush = {CONST_ANI_WHIRLWINDAXE,1,0,-1,0}local combat11_Brush_2 = createCombatObject()
setCombatParam(combat11_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat11_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat11_Brush_2,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat11_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat11_Brush_3 = createCombatObject()
setCombatParam(combat11_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat11_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat11_Brush_3,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat11_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat12_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat12_Brush = {CONST_ANI_WHIRLWINDAXE,1,-1,-1,1}local combat12_Brush_2 = createCombatObject()
setCombatParam(combat12_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat12_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush_2,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat12_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat12_Brush_3 = createCombatObject()
setCombatParam(combat12_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat12_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush_3,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat12_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1300ms
local combat13_Brush = createCombatObject()
setCombatParam(combat13_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat13_Brush,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat13_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat13_Brush = {CONST_ANI_WHIRLWINDAXE,0,-1,0,1}local combat13_Brush_2 = createCombatObject()
setCombatParam(combat13_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat13_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat13_Brush_2,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat13_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat13_Brush_3 = createCombatObject()
setCombatParam(combat13_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat13_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat13_Brush_3,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat13_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 1400ms
local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{1, 0, 0},
{0, 2, 0},
{0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat14_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat14_Brush = {CONST_ANI_WHIRLWINDAXE,1,1,-1,-1}local combat14_Brush_2 = createCombatObject()
setCombatParam(combat14_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat14_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush_2,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat14_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat14_Brush_3 = createCombatObject()
setCombatParam(combat14_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat14_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush_3,createCombatArea({{0, 0, 1},
{0, 2, 0},
{1, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (900000)*-1,(900000)*-1 
end
setCombatCallback(combat14_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

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
	addEvent(RunPart,100,combat1_Brush,cid,var,dfcombat1_Brush,startPos)
	addEvent(RunPart,100,combat1_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var,dfcombat2_Brush,startPos)
	addEvent(RunPart,200,combat2_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush_3,cid,var)
	addEvent(RunPart,300,combat3_Brush,cid,var,dfcombat3_Brush,startPos)
	addEvent(RunPart,300,combat3_Brush_2,cid,var)
	addEvent(RunPart,300,combat3_Brush_3,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var,dfcombat4_Brush,startPos)
	addEvent(RunPart,400,combat4_Brush_2,cid,var)
	addEvent(RunPart,400,combat4_Brush_3,cid,var)
	addEvent(RunPart,500,combat5_Brush,cid,var,dfcombat5_Brush,startPos)
	addEvent(RunPart,500,combat5_Brush_2,cid,var)
	addEvent(RunPart,500,combat5_Brush_3,cid,var)
	addEvent(RunPart,600,combat6_Brush,cid,var,dfcombat6_Brush,startPos)
	addEvent(RunPart,600,combat6_Brush_2,cid,var)
	addEvent(RunPart,600,combat6_Brush_3,cid,var)
	addEvent(RunPart,700,combat7_Brush,cid,var,dfcombat7_Brush,startPos)
	addEvent(RunPart,700,combat7_Brush_2,cid,var)
	addEvent(RunPart,700,combat7_Brush_3,cid,var)
	addEvent(RunPart,800,combat8_Brush,cid,var,dfcombat8_Brush,startPos)
	addEvent(RunPart,800,combat8_Brush_2,cid,var)
	addEvent(RunPart,800,combat8_Brush_3,cid,var)
	addEvent(RunPart,900,combat9_Brush,cid,var,dfcombat9_Brush,startPos)
	addEvent(RunPart,900,combat9_Brush_2,cid,var)
	addEvent(RunPart,900,combat9_Brush_3,cid,var)
	addEvent(RunPart,1000,combat10_Brush,cid,var,dfcombat10_Brush,startPos)
	addEvent(RunPart,1000,combat10_Brush_2,cid,var)
	addEvent(RunPart,1000,combat10_Brush_3,cid,var)
	addEvent(RunPart,1100,combat11_Brush,cid,var,dfcombat11_Brush,startPos)
	addEvent(RunPart,1100,combat11_Brush_2,cid,var)
	addEvent(RunPart,1100,combat11_Brush_3,cid,var)
	addEvent(RunPart,1200,combat12_Brush,cid,var,dfcombat12_Brush,startPos)
	addEvent(RunPart,1200,combat12_Brush_2,cid,var)
	addEvent(RunPart,1200,combat12_Brush_3,cid,var)
	addEvent(RunPart,1300,combat13_Brush,cid,var,dfcombat13_Brush,startPos)
	addEvent(RunPart,1300,combat13_Brush_2,cid,var)
	addEvent(RunPart,1300,combat13_Brush_3,cid,var)
	addEvent(RunPart,1400,combat14_Brush,cid,var,dfcombat14_Brush,startPos)
	addEvent(RunPart,1400,combat14_Brush_2,cid,var)
	addEvent(RunPart,1400,combat14_Brush_3,cid,var)
	return true
end