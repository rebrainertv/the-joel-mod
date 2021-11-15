function start(song) -- do nothing

end

function update(elapsed)
    --Joel Effect
    --local currentBeat = (songPos / 1000)*(bpm/60)
    --setActorX(32 * math.sin(((currentBeat / 2) + 1*0.25) * math.pi), 'dad')
    --setActorY(32 * math.cos(((currentBeat / 2)) * math.pi) - 20, 'dad')

    if difficulty == 2 and curBeat > 319 and curBeat < 348 then
        local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
		end
    end
    if difficulty == 2 and curBeat == 348 then
		for i=0,7 do
			setActorY(40, i)
		end
        setActorX(50, 0)
        setActorX(162, 1)
        setActorX(274, 2)
        setActorX(406, 3)
        setActorX(690, 4)
        setActorX(802, 5)
        setActorX(914, 6)
        setActorX(1026, 7)
    end
    if difficulty == 2 and curBeat == 253 then
        --setActorX(690, 4)
        --setActorX(802, 5)
        --setActorX(914, 6)
        --setActorX(1026, 7)
        setActorX(802, 6)
        setActorX(914, 5)
    end
    if difficulty == 2 and curBeat == 317 then
        --setActorX(690, 4)
        --setActorX(802, 5)
        --setActorX(914, 6)
        --setActorX(1026, 7)
        setActorX(802, 5)
        setActorX(914, 6)
    end
end

function beatHit(beat) -- do nothing

end

function stepHit(step) -- do nothing

end

--function playerTwoTurn()
--    tweenCameraZoom(1.3,(crochet * 4) / 1000)
--end

--function playerOneTurn()
--    tweenCameraZoom(1,(crochet * 4) / 1000)
--end