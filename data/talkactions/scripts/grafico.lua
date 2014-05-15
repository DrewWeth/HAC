function onSay(cid, words, param)
    local q = os.clock()
    doPlayerSendTextMessage(cid, 25, 'Started in: '..(os.clock()-q)..'.')
        -- Multipiler, 10 to small server 5~2 to big server
        local multipliler = 10
        local mapx = 38000 -- Tamanho do mapa (x)
        local mapy = 38000 -- Tamanho do mapa (y)
        ---Creating photo
        local im = assert(gd.createTrueColor(mapx, mapy),'could not create photo!')
        if multipliler > 10 then multipliler = 10 end
        local imgn = math.floor(0xff/multipliler)
        local colors = {
        [0] = im:colorAllocate(0,multipliler,multipliler),
        }
        -- Set all colors
for v=1, 14 do
        for e=1,imgn do
                if e ~= imgn then
                   colors[im:colorAllocate(0,multipliler*e,multipliler*e)] = im:colorAllocate(0,multipliler*e+multipliler,multipliler*e+multipliler)
                else
                        colors[im:colorAllocate(0,multipliler*e,multipliler*e)] = im:colorAllocate(0xff,0,0)
                        for kd=0,imgn do
                           if kd ~= imgn then
                                  colors[im:colorAllocate(0xff,kd*multipliler,0)] = im:colorAllocate(0xff,multipliler*kd+multipliler,0)
                           else
                                  colors[im:colorAllocate(0xff,kd*multipliler,0)] = im:colorAllocate(0xff,0xff,0)
                                  for kk=0,imgn do
                                         colors[im:colorAllocate(0xff,0xff,kk*multipliler)] = im:colorAllocate(0xff,0xff,multipliler*kk+multipliler)
                                  end
                           end
                        end
                end
        end
        doPlayerSendTextMessage(cid, 25, 'Colors loaded in: '..(os.clock()-q)..'.')
        --- Load file with pos
        local file = io.open(getDataDir() .. 'posi'..v..'.txt', "r")
        local str = file:read(-1)
        doPlayerSendTextMessage(cid, 25, 'File loaded: '..(os.clock()-q)..'.')
        local nw = string.explode(str,">")
        for w=1,#nw do
        local str2 = string.explode(nw[w],',')
                 if str2 ~= nil and str2[1] ~= nil and str2[2] ~= nil then
                        local n1 = tonumber(str2[1])
                        local n2 = tonumber(str2[2])
                        if n1 ~= nil and n2 ~= nil then
                           c = im:getPixel(n1, n2)
                           if colors[c] ~= nil then
                                  im:setPixel(n1, n2,colors[c])
                           end
                        end
                 end
        end
        doPlayerSendTextMessage(cid, 25, 'Colors set in: '..(os.clock()-q)..'.')
        -- Get colos table n
        na = -1
        for i,b in pairs(colors) do
                na = na+1
        end
        --- Scale
        for e=0,na do
                for x=(mapx-5),mapx do
                        for y=(mapy-(na-e)),mapy do
                           c = im:getPixel(x, y)
                           if colors[c] ~= nil then
                                  im:setPixel(x, y,colors[c])
                           end
                        end
                end
        end
        --- Set photo
        im:png("oute"..v..".png")
        doPlayerSendTextMessage(cid, 25, 'Finished in: '..(os.clock()-q)..' seconds. Open file oute.png')
end
        return TRUE
end