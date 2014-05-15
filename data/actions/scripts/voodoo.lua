local outfits = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 68, 69, 70, 71, 72, 74, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 159, 160, 192, 193,
194, 195, 196, 197, 198, 199, 200, 201, 222, 203, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 267, 271, 272, 274, 275, 276, 277, 280, 281, 282, 283, 284, 285, 286, 287, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 326, 330, 331, 332, 333, 334, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351}
local outfit =
{
lookType = 2,
lookHead = 78,
lookBody = 114,
lookLegs = 77,
lookFeet = 0,
lookAddons = 3
}
local outfit0 =
{
lookType = 2,
lookHead = 78,
lookBody = 114,
lookLegs = 77,
lookFeet = 0,
lookAddons = 3
}
function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,1921) == -1 or getPlayerStorageValue(cid,1921) == #outfits then
setPlayerStorageValue(cid,1921,1)
doSetCreatureOutfit(cid, outfit0, -1)
else
for i=1,#outfits do
if getPlayerStorageValue(cid,1921) == i then
outfit.lookType = outfits[i]
doSendAnimatedText(getPlayerPosition(cid), "cambio", math.random(1, 255))
doSetCreatureOutfit(cid, outfit, -1)
doSendMagicEffect(topos,6)
doSendMagicEffect(topos,39)
setPlayerStorageValue(cid,1921,i+1)
break
end
end
end
end