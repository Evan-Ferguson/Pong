# Pong-Java
It's pong.

Paddle/ball Y-V same???

Ball behavoir:DONE:Variabel Vel for ball still undecided
	Constant X-V ??
	Hit wall: reverse Y-V
	Pass net x: go to center serve to player that got scored on. Run player scored on scoreboard
	Hit paddle: reverse X-V. If paddle moving up/down increase/decrease Y-V?

Score board:DONE
	Increment and display score if player scored is run.
	Need two player objects.//Just used Pl1/Pl2 int Scr variables

Paddle:DONE
	Goes up-goes down.
	Need two paddle objects.

Other:
	Single/two player
		Single player AI:
	Power ups:Buffs to player or debuff to opponents:Trigger by hitting ball into certain areas.
	To apply buffs/debuffs to right player check Xvel if neg or pos will determine direction of ball travel 
	thus indicating whitch player last bounced the ball.
		Magnet:Catch and release ball
		Slow ball:Ball V halved when incoming
		Big/Small paddle:Paddle size changes
		Paddle speed:Increase/decrease