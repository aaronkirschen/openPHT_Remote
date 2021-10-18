local kb = libs.keyboard;
local win = libs.win;

events.detect = function ()
	if OS_WINDOWS then
		return libs.fs.exists("C:\\Program Files (x86)\\OpenPHT") or libs.fs.exists("C:\\Program Files (x86)\\Plex Home Theater") or libs.fs.exists("C:\\Program Files (x86)\\Plex\\Plex Media Center")  or libs.fs.exists("C:\\Program Files\\Plex\\Plex Media Center") or libs.fs.exists("C:\\Program Files\\Plex Home Theater");
	elseif OS_OSX then
		return libs.fs.exists("/Applications/Plex Home Theater.app") or libs.fs.exists("/Applications/Plex.app");
	end
end

--@help Focus Plex application
actions.switch = function()
	if OS_WINDOWS then
		local hwnd = win.window("OpenPHT.exe");
		if (hwnd == 0) then actions.launch(); end
		win.switchtowait("OpenPHT.exe");
	end
end

--@help Launch Plex application
actions.launch = function()
	if OS_WINDOWS then
		pcall(function ()
			os.start("%programfiles(x86)%\\OpenPHT\\OpenPHT.exe");
		end);
		pcall(function ()
			os.start("%programfiles(x86)%\\Plex\\Plex Media Center\\Plex.exe"); 
		end);
	elseif OS_OSX then
		os.script("tell application \"Plex Home Theater\" to activate");
		os.script("tell application \"Plex\" to activate");
	end
end

--@help Restart OpenPHT
actions.restart = function()
	actions.shutdown();
	os.sleep(500);
	actions.launch();
end

--@help Shutdown OpenPHT
actions.shutdown = function()
	win.kill("OpenPHT.exe");
end

--@help Navigate left
actions.left = function ()
	actions.switch();
	kb.press("left");
end

--@help Navigate down
actions.down = function ()
	actions.switch();
	kb.press("down");
end

--@help Navigate right
actions.right = function ()
	actions.switch();
	kb.press("right");
end

--@help Navigate up
actions.up = function ()
	actions.switch();
	kb.press("up");
end

--@help Select
actions.select = function ()
	actions.switch();
	kb.press("return");
end

--@help Navigate back
actions.back = function ()
	actions.switch();
	kb.press("esc");
end

--@help Toggle play/pause
actions.play_pause = function ()
	actions.switch();
	kb.press("space");
end

--@help Seek forward
actions.forward = function ()
	actions.switch();
	kb.press("f");
end

--@help Seek rewind
actions.rewind = function ()
	actions.switch();
	kb.press("r");
end

--@help Navigate home
actions.home = function ()
	actions.switch();
	kb.press("tab");
end

--@help Stop playback
actions.stop = function ()
	actions.switch();
	kb.press("x");
end

--@help Show menu
actions.menu = function ()
	actions.switch();
	kb.press("m");
end

--@help Next item
actions.next = function ()
	actions.switch();
	kb.press("right");
end

--@help Previous item
actions.previous = function ()
	actions.switch();
	kb.press("left");
end

--@help Play current item
actions.play_current = function ()
	actions.switch();
	kb.press("space");
end

--@help Show OSD
actions.osd = function ()
	actions.switch();
	kb.press("o");
end

--@help Show info
actions.info = function ()
	actions.switch();
	kb.press("i");
end

--@help Toggle view mode
actions.info = function ()
	actions.viewMode();
	kb.press("z");
end

--@help Toggle full screen
actions.fullScreen = function ()
	actions.switch();
	kb.press("\\");
end



--@help Toggle subtile track
actions.subtitleTrack = function ()
	actions.switch();
	kb.press("s");
end

--@help Toggle audio tracks
actions.audioTrack = function ()
	actions.switch();
	kb.press("a");
end



--@help Increase playback volume
actions.volumeUp = function ()
	actions.switch();
	kb.press("oem_plus");
end

--@help Decrease playback volume
actions.volumeDown = function ()
	actions.switch();
	kb.press("oem_minus");
end



--@help Next track/video
actions.previousTrack = function ()
	actions.switch();
	kb.press(",");
end

--@help Previous track/video
actions.nextTrack = function ()
	actions.switch();
	kb.press(".");
end
--@help Previous track/video
actions.playAll = function ()
	actions.switch();
	kb.press(".");
end



--@help Jump backwards fifteen seconds
actions.jumpBack15 = function ()
	actions.left()
end

--@help Jump forward fifteen seconds
actions.jumpForward15 = function ()
	actions.right()
	os.sleep(1000);
	actions.left()
end

--@help Jump backwards thirty seconds
actions.jumpBack30 = function ()
	actions.left()
	os.sleep(200);
	actions.left()
end
--@help Jump forward thirty seconds
actions.jumpForward30 = function ()
	actions.right()
end

--@help Jump backwards ten minutes
actions.jumpBackBig = function ()
	actions.down()
end
--@help Jump forward ten minutes
actions.jumpForwardBig = function ()
	actions.up()
end

--@help Toggle fast forward
actions.fastForward = function ()
	actions.switch();
	kb.press("f");
end
--@help Toggle rewind
actions.rewind = function ()
	actions.switch();
	kb.press("r");
end




--@help Move screen left
actions.monitorLeft = function ()
	actions.switch();
	kb.stroke("lwin", "lshift", "left")
end

--@help Move screen right
actions.monitorRight = function ()
	actions.switch();
	kb.stroke("lwin", "lshift", "right")
end


--@help Mark as watched
actions.markWatched = function ()
	actions.switch();
	kb.press("w")
end




--@help Search by letter A
actions.letterA = function ()
	actions.switch();
	kb.stroke("lshift", "A")
end

--@help Search by letter B
actions.letterB = function ()
	actions.switch();
	kb.stroke("lshift", "B")
end

--@help Search by letter C
actions.letterC = function ()
	actions.switch();
	kb.stroke("lshift", "C")
end

--@help Search by letter D
actions.letterD = function ()
	actions.switch();
	kb.stroke("lshift", "D")
end

--@help Search by letter E
actions.letterE = function ()
	actions.switch();
	kb.stroke("lshift", "E")
end

--@help Search by letter F
actions.letterF = function ()
	actions.switch();
	kb.stroke("lshift", "F")
end

--@help Search by letter G
actions.letterG = function ()
	actions.switch();
	kb.stroke("lshift", "G")
end

--@help Search by letter H
actions.letterH = function ()
	actions.switch();
	kb.stroke("lshift", "H")
end

--@help Search by letter I
actions.letterI = function ()
	actions.switch();
	kb.stroke("lshift", "I")
end

--@help Search by letter J
actions.letterJ = function ()
	actions.switch();
	kb.stroke("lshift", "J")
end

--@help Search by letter K
actions.letterK = function ()
	actions.switch();
	kb.stroke("lshift", "K")
end

--@help Search by letter L
actions.letterL = function ()
	actions.switch();
	kb.stroke("lshift", "L")
end

--@help Search by letter M
actions.letterM = function ()
	actions.switch();
	kb.stroke("lshift", "M")
end

--@help Search by letter N
actions.letterN = function ()
	actions.switch();
	kb.stroke("lshift", "N")
end

--@help Search by letter O
actions.letterO = function ()
	actions.switch();
	kb.stroke("lshift", "O")
end

--@help Search by letter P
actions.letterP = function ()
	actions.switch();
	kb.stroke("lshift", "P")
end

--@help Search by letter Q
actions.letterQ = function ()
	actions.switch();
	kb.stroke("lshift", "Q")
end

--@help Search by letter R
actions.letterR = function ()
	actions.switch();
	kb.stroke("lshift", "R")
end

--@help Search by letter S
actions.letterS = function ()
	actions.switch();
	kb.stroke("lshift", "S")
end

--@help Search by letter T
actions.letterT = function ()
	actions.switch();
	kb.stroke("lshift", "T")
end

--@help Search by letter U
actions.letterU = function ()
	actions.switch();
	kb.stroke("lshift", "U")
end

--@help Search by letter V
actions.letterV = function ()
	actions.switch();
	kb.stroke("lshift", "V")
end

--@help Search by letter W
actions.letterW = function ()
	actions.switch();
	kb.stroke("lshift", "W")
end

--@help Search by letter X
actions.letterX = function ()
	actions.switch();
	kb.stroke("lshift", "X")
end

--@help Search by letter Y
actions.letterY = function ()
	actions.switch();
	kb.stroke("lshift", "Y")
end

--@help Search by letter Z
actions.letterZ = function ()
	actions.switch();
	kb.stroke("lshift", "Z")
end




