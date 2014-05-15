local outfits = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
				 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 76, 77, 78, 79, 80, 81, 82, 84, 93, 94, 95, 96, 97,
				 98, 99, 100, 101, 102, 103, 104,105, 106, 107, 108, 109, 120, 121, 122, 123, 124, 125, 126, 127, 193, 194, 195, 196, 203, 214, 215, 216, 229, 232, 235, 237, 246, 249,
				 253, 254, 255, 259, 260, 264, 281, 282, 287, 296, 297, 298, 300, 301, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 314, 315, 316, 317, 318, 319, 320, 321,
				 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351}
local outfit =
	{
		lookType = 2,
		lookHead = 0,
		lookBody = 0,
		lookLegs = 0,
		lookFeet = 0,
		lookAddons = 0
	}
local outfit0 =
	{
		lookType = 2,
		lookHead = 0,
		lookBody = 0,
		lookLegs = 0,
		lookFeet = 0,
		lookAddons = 0
	}
function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,1921) == -1 or getPlayerStorageValue(cid,1921) == #outfits then
setPlayerStorageValue(cid,1921,1)
doSetCreatureOutfit(cid, outfit0, -1)
else
for i=1,#outfits do
if getPlayerStorageValue(cid,1921) == i then
outfit.lookType = outfits[i]
doCreatureSay(cid, "Change!", TALKTYPE_ORANGE_1)
doSetCreatureOutfit(cid, outfit, -1)
setPlayerStorageValue(cid,1921,i+1)
break
end
end
end
end
