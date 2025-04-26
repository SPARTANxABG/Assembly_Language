TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Introduction BYTE "The year is 2552 CE. The human race is at war with the covenant.", 0dh, 0ah
				BYTE "Your are a Spartan codenamed Morales-V956, are you are sent by the UNSC with a strike team of four to infiltrate a covenant ship, steal highly classified intel, and escape without being detected.", 0dh, 0ah
				BYTE "You and your team are equiped with an Assault Rifle, a Magnum as sidearm, and two frag grenades.", 0dh, 0ah
				BYTE "Arriving at the covenant ship, a marine states that there are three entrances to the ship lightly unguarded: the back of the ship, the bottom, or the right side of the ship.", 0dh, 0ah
				BYTE "You choose: ", 0dh, 0ah
IntroChoice BYTE "1)Back of the ship (South) 2)Bottom of the ship 3)Right side of the ship (East) ", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv1Choice1Back BYTE "You chose the back of the ship.", 0dh, 0ah
				BYTE "You and your team enter the covenant ship undetected and proceed through the corridors looking for the intel.", 0dh, 0ah
				BYTE "As you explore the corridors, you find an armory room locked by a security key, but a marine states that she can hack the door and open it.", 0dh, 0ah
				BYTE "You decide to: ", 0dh, 0ah, 0, 0dh, 0ah
Lv1Choice1BackAns BYTE "1) Allow the marine to hack the door and loot the armory 2) Proceed through the corridor ", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv1Choice2Bottom BYTE "You chose the bottom of the ship and upon entering the ship, you find an Elite and a grunt chatting about, unaware of your arrival at the left side of the corridor.", 0dh, 0ah
					BYTE "You have the option of eliminating them and go south of the ship through the corridor, or go north of the ship ahead into another corridor.", 0dh, 0ah
					BYTE "You decide to: ", 0dh, 0ah
Lv1Choice2BottomAns BYTE "1) Eliminate the enemy and proceed South 2) Ignore the enemy and proceed north through the corridor straight ahead", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv1Choice3Right BYTE "You chose the right (East) side of the ship and upon entering the covenant ship, you find a jackal walking away from your position, leaving you and your squad alone.", 0dh, 0ah
				BYTE "The corridor splits to the left (North) or right (South) from your position.", 0dh, 0ah
				BYTE "You decide to: ", 0dh, 0ah
Lv1Choice3RightAns BYTE "1) Go to the left (North) 2) Go to the right (South)", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv2Choice1Hack BYTE "You allow the marine to hack the door and she successfully opens the door.", 0dh, 0ah
				BYTE "Inside, you find plasma grenades, carbine rifles, energy pistols, and an active camouflage.", 0dh, 0ah
				BYTE "Since this is a stealth operation, you decide to take the active camo for better stealth options.", 0dh, 0ah
				BYTE "Leaving the armory, you proceed with your original trajectory further down the hall.", 0dh, 0ah
				BYTE "At the end of the corridor, it only takes you to the right and upon peeking, you find two elites guarding an entrance.", 0dh, 0ah
				BYTE "A marine states that it is a possibility that they're guarding the intel that they seek.", 0dh, 0ah
				BYTE "You think of two options: ", 0dh, 0ah
Lv2Choice1HackAns BYTE "1) You create a distraction to get their attention, eliminate them and enter the room 2) Use the active camo, eliminate them right on the spot, then enter the room", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv2Choice2Proceed BYTE "You decide to continue and not loot the armory.", 0dh, 0ah
					BYTE "As you proceed through the corridor, at the end, it only takes you to the right and upon peeking, you find two elites guarding an entrance.", 0dh, 0ah
					BYTE "A marine states that it is possible that they're guarding the intel that they seek.", 0dh, 0ah
					BYTE "Another marine states that checking the armory might be a good idea since the covenant have cloacking technology.", 0dh, 0ah
					BYTE "You decide to: ", 0dh, 0ah
Lv2Choice2ProceedAns BYTE "1) Go back to the armory and check out the loot 2) Proceed to create a distraction to get the elite's attention, eliminate them, and enter the room", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv2Choice1Eliminate BYTE "You decided to eliminate the enemy and the elite drops a red key tag.", 0dh, 0ah
					BYTE "You pick it up and proceed south through the corridor.", 0dh, 0ah
					BYTE "A few moments later, you end up at the back of the ship and find a corridor that only leads to the right.", 0dh, 0ah
					BYTE "Upon peeking at the other side, you find two elites guarding an entrance.", 0dh, 0ah
					BYTE "A marine states that it is a possibility that they're guarding the intel that they seek.", 0dh, 0ah
					BYTE "Before you decide on a plan, the ship's alarm goes off stating that there is an intruder on board, making everyone on high alert.", 0dh, 0ah
					BYTE "A marine notices that the two elites that were guarding the entrance go inside the room.", 0dh, 0ah
					BYTE "You decide to: ", 0dh, 0ah
Lv2Choice1EliminateAns BYTE "1) Continue through the corridor, get into position, and breach (Will alert the ship) 2) Look for another route quickly", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv2Choice2Ignore BYTE "You and your squad decide to ignore the enemy and proceed north.", 0dh, 0ah
					BYTE "In the process, you find the main energy reactor that powers the entire ship.", 0dh, 0ah
					BYTE "You note this area and keep proceeding.", 0dh, 0ah
					BYTE "After traveling a few corridors, you end up at the front of the ship and find the hangar, full of banshees and five type-52 troop carriers.", 0dh, 0ah
					BYTE "You decide to go left and proceed through more corridors.", 0dh, 0ah
					BYTE "After traveling a few levels, you end up at the middle level of the ship and find a corridor that leads to a single room unguarded.", 0dh, 0ah
					BYTE "A marine states that the room might not be where the intel is located and worth going somewhere else.", 0dh, 0ah
					BYTE "You decided to: ", 0dh, 0ah
Lv2Choice2IgnoreAns BYTE "1) Keep exploring the covenant ship 2) Proceed to the unguarded room and check out the room", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv2Choice1Left BYTE "You decide to go to the left side and proceed north of the ship.", 0dh, 0ah
				BYTE "In the process, you find the main energy reactor that powers the entire ship.", 0dh, 0ah
				BYTE "You note this area and keep proceeding.", 0dh, 0ah
				BYTE "Halfway of the ship you hear footsteps in the distant and decide to fall back.", 0dh, 0ah
				BYTE "As you and your squad are falling back, you also hear louder footsteps coming from where you came.", 0dh, 0ah
				BYTE "Your marines are getting ready for a fight if sandwiched by both enemy squads.", 0dh, 0ah
				BYTE "You take a good look at your surroundings and find two doors, positioned one ahead of you, and one that you just passed.", 0dh, 0ah
				BYTE "You also noticed that there is not much cover for you and your squad where you are.", 0dh, 0ah
Lv2Choice1LeftAns BYTE "You decide to 1) Go to the room ahead of you and hide 2) Go to the room that you just passed and hide 3) Stand your ground, use your disposable arsenal and fight both enemy squads", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv2Choice2Right BYTE "You and your squad decide to go right (South) of the ship and proceed through the corridor.", 0dh, 0ah
				BYTE "A few moments later, you end up at the back of the ship and find out that the corridor splits to the left or further down the ship.", 0dh, 0ah
Lv2Choice2RightAns BYTE "You decide to 1) Go left (East) of the ship 2) Keep moving further down", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Attention BYTE "You managed to create a distraction and got the two elites to check it out.", 0dh, 0ah
				BYTE "You successfully eliminated them and proceed through the now unguarded room.", 0dh, 0ah
				BYTE "Upon entering, you only find old relics and ancient tech.", 0dh, 0ah
				BYTE "You and your squad investigate these old relics and ancient tech, only to find them useless.", 0dh, 0ah
				BYTE "You pick up an old tech that looks like a blue sphere with circular glass on one end, as if it's an eye.", 0dh, 0ah
				BYTE "Upon further inspection, you think it's just junk and put it back.", 0dh, 0ah
				BYTE "As soon as you put the old tech back where you found it, it suddendly powers up and starts to float.", 0dh, 0ah
				BYTE "Surprised, everyone readies their weapons.", 0dh, 0ah
				BYTE "The floating blue orb speaks, stating that his name is 210 Guilty Spark and seeks to go back to his home.", 0dh, 0ah
				BYTE "A marine states that this might be the intel that the UNSC was looking for.", 0dh, 0ah
Lv3AttentionAns BYTE "You decide to 1) Cooperate with Guilty Spark and help the floating machine escape the ship and take him to the UNSC 2) Bring the machine along and keep looking for the actual intel ", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Camo BYTE "You use the active camo and succesfully eliminate both elites all by yourself and you and your squad proceed to the unguarded room.", 0dh, 0ah
		BYTE "Upon entering, you only find old relics and ancient tech.", 0dh, 0ah
		BYTE "You and your squad investigate these old relics and ancient tech, only to find them useless.", 0dh, 0ah
		BYTE "You pick up an old tech that looks like a blue sphere with circular glass on one end, as if it's an eye.", 0dh, 0ah
		BYTE "Upon further inspection, you think it's just junk and put it back.", 0dh, 0ah
		BYTE "As soon as you put the old tech back where you found it, it suddendly powers up and starts to float.", 0dh, 0ah
		BYTE "Surprised, everyone readies their weapons.", 0dh, 0ah
		BYTE "The floating blue orb speaks, stating that his name is 210 Guilty Spark and seeks to go back to his home.", 0dh, 0ah
		BYTE "A marine states that this might be the intel that the UNSC was looking for.", 0dh, 0ah
Lv3CamoAns BYTE "You decide to 1) Cooperate with Guilty Spark and help the floating machine escape the ship and take him to the UNSC 2) Bring the machine along and keep looking for the actual intel", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Return BYTE "You decide to go back to the armory, only to now find it guarded by two jackals equipped with carbine rifles and shields attached to their left arm.", 0dh, 0ah
Lv3ReturnAns BYTE "Now with fewer options, you decide to 1) Get the Jackals attention and get inside the armory room 2) Get the elites attention and get inside the guarded room", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Continue BYTE "Out of options you decide to continue through the corridor, get into position, and breach.", 0dh, 0ah
			BYTE "You and your team successfully breached the room and eliminated both elites.", 0dh, 0ah
			BYTE "But because you used your weapons, the entire ship knows your location and will try to eliminate all of you.", 0dh, 0ah
			BYTE "You and your squad quickly investigate the room, only to find old relics and ancient tech.", 0dh, 0ah
			BYTE "You notice a small blue circular machine with a round glass for an eye and a old tablet-looking deivce next to the blue machine.", 0dh, 0ah
Lv3ContinueAns BYTE "You decide to 1) Take the unknown blue tech and escape 2) Take the unknown tablet and escape", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Route BYTE "You decide to look for another entrance, only to find enemy squads patrolling the corridors further down.", 0dh, 0ah
			BYTE "Retrating, you hear loud footsteps coming from where you came and you realize you are getting slowly surrounded by enemy patrols.", 0dh, 0ah
			BYTE "With little options, you and your squad ready themselves to fight.", 0dh, 0ah
			BYTE "The enemy with the loud footsteps were two hunters and you start to open fire towards them, your squad following suit.", 0dh, 0ah
			BYTE "Taking on the hunters was a grave mistake and start to suffer casualties.", 0dh, 0ah
			BYTE "Moments later, the two elites that were guarding the room attacked you from behind and eliminated your entire squad.", 0dh, 0ah
			BYTE "As the last man standing, you try to eliminate as many enemies as you can, but ultimately you are gunned down and killed in action.", 0dh, 0ah
Lv3RouteFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Exploring BYTE "You decide to keep exploring the covenant ship, hoping to find the room where the intel is being kept.", 0dh, 0ah
				BYTE "You peek at a corridor that is being guarded by two hunters.", 0dh, 0ah
				BYTE "A marine states that the intel must be behind that door since it is being guarded by two hunters.", 0dh, 0ah
Lv3ExploringAns BYTE "Knowing that the enemies are hunters, it is almost impossible to try and kill them stealthly, leaving you with two options 1) Get ready for a fight with the hunters and enter the room (Will alert the ship) 2) Ignore the hunters and continue to explore", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Proceed BYTE "You decide to proceed to the unguarded room, only to find five elites with energy swords chatting.", 0dh, 0ah
			BYTE "They are instantly alerted of your prescence and one of them hits the alarm, alerting the entire ship while the other four elites rush you.", 0dh, 0ah
			BYTE "You and your squad open fire at the four elites rushing you, only to notice that they have shields.", 0dh, 0ah
			BYTE "You successfully kill two elites, while the other two get really close and start to eliminate one of your strike team.", 0dh, 0ah
			BYTE "After eliminating the other two elites, you pick up your fallen member and everyone retreats to the hangar while being chased and shot.", 0dh, 0ah
			BYTE "You manage to reach the hangar and proceed to hijack a type-52 troop carrier for a fast escape.", 0dh, 0ah
			BYTE "You successfully hijack the carrier and proceed to escape the covenant ship not with the intel, but with a fallen soldier.", 0dh, 0ah
Lv3ProceedFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3HideAhead BYTE "You and your squad quickly rush to the room ahead of you and hide.", 0dh, 0ah
				BYTE "It is a small room with little hiding options.", 0dh, 0ah
				BYTE "You hear footsteps approach and suddenly the door opens.", 0dh, 0ah
				BYTE "You see three jackals surprised of your presence and you quicly eliminate all three of them.", 0dh, 0ah
				BYTE "Since you opened fired, the whole ship is aware of your presence and you quickly run towards your original trajectory.", 0dh, 0ah
				BYTE "You reach a room and inside you find the intel that the UNSC was looking for.", 0dh, 0ah
				BYTE "You quickly pick up the intel and rush out of there, back to your ship.", 0dh, 0ah
				BYTE "You managed to evade the hunters, but the whole ship is looking for you.", 0dh, 0ah
				BYTE "You encounter a corridor that leads either north of the ship, or south of the ship.", 0dh, 0ah
Lv3HideAheadAns BYTE "Unaware of your ship's location due to running away from the enemy through endless corridors, you 1) Go north 2) Go south", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3HideBehind BYTE "You and your squad quickly rush to the door that you just passed by and proceed to hide.", 0dh, 0ah
				BYTE "It is a small room will little hiding options You hear louder footsteps approaching the door and it is suddently opened, revealing two hunters.", 0dh, 0ah
				BYTE "Finally caught, you and your squad open fire towards the hunters and manage to eliminate both of them.", 0dh, 0ah
				BYTE "However, everyone on the ship is aware of your position and quickly flee further back from where you came from.", 0dh, 0ah
				BYTE "Enemies start to block most corridors, forcing you to enter the main energy reactor.", 0dh, 0ah
				BYTE "Out of options, your squad decides to better blow up the ship and give the UNSC an upper hand in the war rather than fighting the enemy and dying.", 0dh, 0ah
				BYTE "You agree with this selfish idea and proceed to destroy the energy reactor, ultimately blowing up the covenant ship and all its passangers.", 0dh, 0ah
				BYTE "Although no intel was retrieved, you delivered a heavy blow to the covenant and gave the UNSC an advantage in the war.", 0dh, 0ah
Lv3HideBehindFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Stand BYTE "You and your squad quickly decide to stand their ground and fight both enemy squads.", 0dh, 0ah
			BYTE "You soon realize that it is three jackals and two hunters on both ends of the corridor, ending up in a violent gunfight.", 0dh, 0ah
			BYTE "You and your squad are quickly wiped out by the jackal's precise carbine shots and the hunter's explosive shots.", 0dh, 0ah
Lv3StandFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Left BYTE "You decide to go left and find an entrance being guarded by two grunts.", 0dh, 0ah
		BYTE "You quickly dispose of the two grunts with ease and stealth and proceed into the room.", 0dh, 0ah
		BYTE "Upon entering, you only find old relics and ancient tech.", 0dh, 0ah
		BYTE "You and your squad investigate these old relics and ancient tech, only to find them useless.", 0dh, 0ah
		BYTE "You pick up an old tech that looks like a blue sphere with circular glass on one end, as if it's an eye.", 0dh, 0ah
		BYTE "Upon further inspection, you think it's just junk and put it back.", 0dh, 0ah
		BYTE "As soon as you put the old tech back where you found it, it suddendly powers up and starts to float.", 0dh, 0ah
		BYTE "Surprised, everyone readies their weapons.", 0dh, 0ah
		BYTE "The floating blue orb speaks, stating that his name is 210 Guilty Spark and seeks to go back to his home.", 0dh, 0ah
		BYTE "A marine states that this might be the intel that the UNSC was looking for.", 0dh, 0ah
Lv3LeftAns BYTE "You decide to 1) Cooperate with Guilty Spark and help the floating machine escape the ship and take him to the UNSC 2) Bring the machine along and keep looking for the actual intel ", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv3Moving BYTE "You decide to go further down and enter a room that is filled with junk and scrap.", 0dh, 0ah
			BYTE "You soon find out that you're at the ship's garbage area.", 0dh, 0ah
			BYTE "Upon realization, the doors behing close and a big door opposite of the room opens, exposing everyone to the vaccum of space.", 0dh, 0ah
			BYTE "The marines unnequiped with any kind of space suit are quickly eliminated due to lack of oxygen.", 0dh, 0ah
			BYTE "Your Spartan suit, however can keep you alive in the vacuum of space for a few hours.", 0dh, 0ah
			BYTE "You signal a rescue team, which hours later arrive.", 0dh, 0ah
			BYTE "You are rescued, while your whole strike team was killed with no intel at hand.", 0dh, 0ah
Lv3MovingFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4Cooperate BYTE "You decide to cooperate with Guilty Spark and take him to the UNSC.", 0dh, 0ah
				BYTE "You try to trace your steps back to the ship, but you're caught by a patrol and quickly gun them down.", 0dh, 0ah
				BYTE "This ultimately alerted the entire ship and you rush to your escape ship.", 0dh, 0ah
				BYTE "As soon as you are arriving to your ship, you find an enemy squad of three grunts and two elites between you and your ship, while multiple enemies are approaching from behind.", 0dh, 0ah
				BYTE "You are running out of options and getting Guilty Spark might be the only hope in winning the war against the covenant.", 0dh, 0ah
Lv4CooperateAns BYTE "You ultimately 1) Use the active camo on Guilty Spark and command it to fly to the ship and escape to the UNSC 2) Fight your way through", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4Intel BYTE "You decide to bring the machine along and try to find the actual intel, only to find opposition ahead of you and from where you came from.", 0dh, 0ah
			BYTE "With no other options, you enter a gunfight with the enemy squad in front of you, eliminating 3 grunts.", 0dh, 0ah
			BYTE "Now that the whole ship is aware of your location, you rush towards your escape ship, only to find your exit blocked by two elites and an entire army behind you.", 0dh, 0ah
Lv4IntelAns BYTE "With little options at hand, you ultimately 1) Deal with both elites by yourself and give your squad and Guilty Spark a chance to escape 2) Fight your way through", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4Jackals BYTE "You try to get the two jackals attention and successfully eliminate both.", 0dh, 0ah
			BYTE "Upon inspection of the dead jackals, you find that one of them had a device in their neck flashing.", 0dh, 0ah
			BYTE "All of a sudden, the entire ship goes into lockdown and you hear shots from a carbine rifle from the other end of the corridor and start hitting your squad.", 0dh, 0ah
			BYTE "You soon realized that the flashing device was actually an alert to the ship.", 0dh, 0ah
			BYTE "Soon outmanned, outgunned, and nowhere to hide, you are wiped and eliminated.", 0dh, 0ah
Lv4JackalsFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4UnknownTech BYTE "You decide to take the unknown blue tech and escape with it while the opportunity is present.", 0dh, 0ah
				BYTE "Before arriving to your ship, you see a squad of two elites guarding your only exit and more enemy squads heading to your position from all corridors.", 0dh, 0ah
				BYTE "All of a sudden, the blue orb wakes up and states that his name is Guilty Spark and wants to go home.", 0dh, 0ah
				BYTE "You later realize that this could be the intel that the UNSC wants.", 0dh, 0ah
Lv4UnknownTechAns BYTE "With all out of options you 1) Fight the elites by yourself to allow your squad to escape with Guilty Spark 2) Fight your way through", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4UnknownTablet BYTE "You decide to take the unknown tablet and escape with it while the opportunity is present.", 0dh, 0ah
					BYTE "Before arriving to your ship, you see a squad of three elites guarding your only exit and more enemy squads heading to your position from all corridors.", 0dh, 0ah
LV4UnknownTabletAns BYTE "With out of options you 1) Fight the elites by yourself to allow your squad to escape with the tablet 2) Fight your way through", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4Ignore BYTE "You decide to ignore the hunters and continue to explore.", 0dh, 0ah
			BYTE "Due to exploring too much of the ship, you ended up back to your ship.", 0dh, 0ah
			BYTE "However, an elite spots one of your marines and sounds the alarm.", 0dh, 0ah
			BYTE "With the whole ship aware of you and your squad, you quickly engage in a gunfight with the enemy.", 0dh, 0ah
			BYTE "With hunters approaching your location, you have no choice but to return to your ship and escape empty handed before being captured or killed.", 0dh, 0ah
			BYTE "You and your squad successfully escape empty handed, but one of the marines stated that she placed a tracking beacon inside the ship for the UNSC to track its location.", 0dh, 0ah
			BYTE "You may have lost the battle, but not the war.", 0dh, 0ah
Lv4IgnoreFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4HunterFight BYTE "You decide to fight the two hunters, which resulted in a victory.", 0dh, 0ah
				BYTE "However, you lost three of your marines and the whole ship knows your location.", 0dh, 0ah
				BYTE "You decide to enter the room that was guarded by the now dead hunters and find an armory.", 0dh, 0ah
				BYTE "Knowing fully that the entire ship is coming to get you, you and the last marine decide to shake hands and hold their ground with both their weapons and the covenant's weapons at their disposal in their room.", 0dh, 0ah
				BYTE "You held one final stance and fought the enemy for hours, until they ultimately killed you and your last marine.", 0dh, 0ah
				BYTE "You managed to cripple their numbers by a lot and striked fear in the covenant showing what a Spartan is capable of doing if given a powerful arsenal.", 0dh, 0ah
Lv4HunterFightFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4North BYTE "You decide to go north and pass through the main energy reactor again.", 0dh, 0ah
			BYTE "Further ahead, you find the hangar full of banshees and type-52 troop carriers.", 0dh, 0ah
			BYTE "You and your squad decide to hijack a troop carrier rather than fleeing back to their ship in order to evade any further gunfights and getting killed.", 0dh, 0ah
			BYTE "You successfully hijack the carrier and proceed to destroy as many banshees as you can and fight off any enemy troops shooting back at you.", 0dh, 0ah
			BYTE "You escape the covenant ship all alive with the intel and return to the UNSC to present the intel.", 0dh, 0ah
			BYTE "The intel was secret tech that the convenant was working on, and now under the UNSC hands, they can implement secret covenant technology to their Spartans and marines alike.", 0dh, 0ah
			BYTE "You and your strike team are awarded the medal of honor for risking their lives for the future of humanity in the war.", 0dh, 0ah
Lv4NorthFin BYTE "GAME OVER. VICTORY.", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv4South BYTE "You decided to go south in hopes of finding your ship.", 0dh, 0ah
			BYTE "You kept stumbling to enemy troops, slowly resulting in friendly cassualties, to the point where it was just yourself running for your life.", 0dh, 0ah
			BYTE "You ultimately found the ship, but was guarded by two hunters.", 0dh, 0ah
			BYTE "You tried to fight them off with everything, including your frag grenades, but ultamitely got bested by the hunters.", 0dh, 0ah
Lv4SouthFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv5UseCamo BYTE "You use the active camo on Guilty Spark and successfully reaches the ship undetected.", 0dh, 0ah
			BYTE "In order to buy Guilty Spark some time for his escape, you and your squad decide to hold the line.", 0dh, 0ah
			BYTE "With almost every single enemy soldier shooting at you, you start to suffer heavy casualties.", 0dh, 0ah
			BYTE "You make the ultimate sacrifice and stay on the covenant ship with your fallen marines to keep fighting off the enemy and watch Guilty Spark escape safely.", 0dh, 0ah
			BYTE "Guilty Spark later reached the UNSC and reported everything what happened.", 0dh, 0ah
			BYTE "He also revealed that he was created by a race called the Forerunners with technology way advanced that of the humans and covenant.", 0dh, 0ah
			BYTE "Guilty Spark guides the UNSC to its home planet and find ancient and powerful tech created by the Forerunners.", 0dh, 0ah
			BYTE "The UNSC uses this technology and gives them an unfair advantage in the war, quickly turning the tide.", 0dh, 0ah
			BYTE "Later on, the UNSC erected statues of you and your fallen marines in memory of your ultimate sacrifice and the turning point of the covenant war.", 0dh, 0ah
Lv5UseCamoFin BYTE "GAME OVER. VICTORY", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv5FightElite BYTE "You deal with the two elites all by yourself, buying Guilty Spark and your squad some time to get to the ship and escape.", 0dh, 0ah
				BYTE "You decided to stay and hold the enemy off while they all safely escaped.", 0dh, 0ah
				BYTE "Your strike team and Guilty Spark safely made it back to the UNSC and reported everything what happened.", 0dh, 0ah
				BYTE "Guilty Spark also revealed that he was created by a race called the Forerunners with technology way advanced that of the humans and covenant.", 0dh, 0ah
				BYTE "Guilty Spark guides the UNSC to its home planet and find ancient and powerful tech created by the Forerunners.", 0dh, 0ah
				BYTE "The UNSC uses this technology and gives them an unfair advantage in the war, quickly turning the tide.", 0dh, 0ah
				BYTE "Later on, the UNSC erected a statue of you in memory of your ultimate sacrifice and the turning point of the covenant war.", 0dh, 0ah
Lv5FightEliteFin BYTE "GAME OVER. VICTORY", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv5Fight BYTE "You and your squad decide to fight your way through, but are met with heavy oppression because of how long it took to get to the escape ship.", 0dh, 0ah
			BYTE "Your marines slowly start to fall and ultimately you are killed in action.", 0dh, 0ah
			BYTE "They retrieve the intel that was taken by you and take it further to covenant lines.", 0dh, 0ah
Lv5FightFin BYTE "GAME OVER", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Lv5Elites BYTE "You deal with the two elites all by yourself, buying your squad some time to get to the ship and escape.", 0dh, 0ah
			BYTE "You decided to stay and hold the enemy off while they all safely escaped.", 0dh, 0ah
			BYTE "Your strike team safely made it back to the UNSC and reported everything what happened.", 0dh, 0ah
			BYTE "The tablet revealed a location far off the galaxy that was home to the Forerunners.", 0dh, 0ah
			BYTE "This unknown race had technology way advanced that of the humans and covenant.", 0dh, 0ah
			BYTE "The UNSC uses the tablet and find the planet full of ancient and powerful tech created by the Forerunners.", 0dh, 0ah
			BYTE "The UNSC uses this technology and gives them an unfair advantage in the war, quickly turning the tide.", 0dh, 0ah
			BYTE "Later on, the UNSC erected a statue of you in memory of your ultimate sacrifice and the turning point of the covenant war.", 0dh, 0ah
Lv5ElitesFin BYTE "GAME OVER. VICTORY", 0dh, 0ah, 0

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

camouflage word 0

.Code

;---------- Back of Ship Route
;---------- Level 1 dialogue

BackofShip PROC

	mov edx, OFFSET Lv1Choice1Back
	call writestring
	mov edx, OFFSET Lv1Choice1BackAns
	call writestring
	call readint

	cmp eax, 1
	je Hack
	jmp Proceed

;---------- Level 2 dialogue

Hack:
	mov edx, OFFSET Lv2Choice1Hack
	call writestring
	mov edx, OFFSET Lv2Choice1HackAns
	;call writestring
	call readint
	mov camouflage, 1

	cmp eax, 1
	je Attention
	jmp ActiveCamo

Proceed:
	mov edx, OFFSET Lv2Choice2Proceed
	call writestring
	mov edx, OFFSET Lv2Choice2ProceedAns
	;call writestring
	call readint

	cmp eax, 1
	je Attention
	jmp GoBack

;---------- Level 3 dialogue

Attention:
	mov edx, OFFSET Lv3Attention
	call writestring
	mov edx, OFFSET Lv3AttentionAns
	;call writestring
	call readint

	cmp eax, 1
	je Coop
	jmp Search

ActiveCamo:
	mov edx, OFFSET Lv3Camo
	call writestring
	mov edx, OFFSET Lv3CamoAns
	;call writestring
	call readint
	mov camouflage, 0

	cmp eax, 1
	je Coop
	jmp Search

GoBack:
	mov edx, OFFSET Lv3Return
	call writestring
	mov edx, OFFSET Lv3ReturnAns
	;call writestring
	call readint

	cmp eax, 1
	je Attention
	jmp Jackals

;---------- Level 4 dialogue

Coop:
	mov edx, OFFSET Lv4Cooperate
	call writestring
	mov edx, OFFSET Lv4CooperateAns
	;call writestring
	call readint

	cmp eax, 1
	je CamoInventory
	jmp FightThrough

CamoInventory:
	cmp camouflage, 1
	je UseCamo
	jmp FightThrough

Search:
	mov edx, OFFSET Lv4Intel
	call writestring
	mov edx, OFFSET Lv4IntelAns
	;call writestring
	call readint

	cmp eax, 1
	je EliteFight
	jmp FightThrough

Jackals:
	mov edx, OFFSET Lv4Jackals
	call writestring
	mov edx, OFFSET Lv4JackalsFin
	;call writestring
	exit

;---------- Level 5 dialogue

UseCamo:
	mov edx, OFFSET Lv5UseCamo
	call writestring
	mov edx, OFFSET Lv5UseCamoFin
	;call writestring
	exit

FightThrough:
	mov edx, OFFSET Lv5Fight
	call writestring
	mov edx, OFFSET Lv5FightFin
	;call writestring
	exit

EliteFight:
	mov edx, OFFSET Lv5FightElite
	call writestring
	mov edx, OFFSET Lv5FightEliteFin
	;call writestring
	exit

ret
BackofShip endp

;---------- Bottom oF Ship Route
;---------- Level 1 dialogue

BottomofShip PROC

	mov edx, OFFSET Lv1Choice2Bottom
	call writestring
	mov edx, OFFSET Lv1Choice2BottomAns
	;call writestring
	call readint

	cmp eax, 1
	je Eliminate
	jmp Ignore

;---------- Level 2 dialogue

Eliminate:
	mov edx, OFFSET Lv2Choice1Eliminate
	call writestring
	mov edx, OFFSET Lv2Choice1EliminateAns
	;call writestring
	call readint

	cmp eax, 1
	je Continue
	jmp AnotherRoute

Ignore:
	mov edx, OFFSET Lv2Choice2Ignore
	call writestring
	mov edx, OFFSET Lv2Choice2IgnoreAns
	;call writestring
	call readint

	cmp eax, 1
	je KeepExploring
	jmp Proceed

;---------- Level 3 dialogue

Continue:
	mov edx, OFFSET Lv3Continue
	call writestring
	mov edx, OFFSET Lv3ContinueAns
	;call writestring
	call readint

	cmp eax, 1
	je UnknownTech
	jmp UnknownTablet

AnotherRoute:
	mov edx, OFFSET Lv3Route
	call writestring
	mov edx, OFFSET Lv3RouteFin
	;call writestring
	exit

KeepExploring:
	mov edx, OFFSET Lv3Exploring
	call writestring
	mov edx, OFFSET Lv3ExploringAns
	;call writestring
	call readint

	cmp eax, 1
	je HunterFight
	jmp IgnoreHunter

Proceed:
	mov edx, OFFSET Lv3Proceed
	call writestring
	mov edx, OFFSET Lv3ProceedFin
	;call writestring
	exit

;---------- Level 4 dialogue

UnknownTech:
	mov edx, OFFSET Lv4UnknownTech
	call writestring
	mov edx, OFFSET Lv4UnknownTechAns
	;call writestring
	call readint

	cmp eax, 1
	je FightElitesTech
	jmp FightThrough

UnknownTablet:
	mov edx, OFFSET Lv4UnknownTablet
	call writestring
	mov edx, OFFSET Lv4UnknownTabletAns
	;call writestring
	call readint

	cmp eax, 1
	je FightElitesTablet
	jmp FightThrough

HunterFight:
	mov edx, OFFSET Lv4HunterFight
	call writestring
	mov edx, OFFSET Lv4HunterFightFin
	;call writestring
	exit

IgnoreHunter:
	mov edx, OFFSET Lv4Ignore
	call writestring
	mov edx, OFFSET Lv4IgnoreFin
	;call writestring
	exit

;---------- Level 5 dialogue

FightElitesTech:
	mov edx, OFFSET Lv5FightElite
	call writestring
	mov edx, OFFSET Lv5FightEliteFin
	;call writestring
	exit

FightElitesTablet:
	mov edx, OFFSET Lv5Elites
	call writestring
	mov edx, OFFSET Lv5ElitesFin
	;call writestring
	exit

FightThrough:
	mov edx, OFFSET Lv5Fight
	call writestring
	mov edx, OFFSET Lv5FightFin
	;call writestring
	exit

ret
BottomofShip endp
	
;---------- Right oF Ship Route
;---------- Level 1 dialogue

RightofShip PROC
	
	mov edx, OFFSET Lv1Choice3Right
	call writestring
	mov edx, OFFSET Lv1Choice3RightAns
	;call writestring
	call readint

	cmp eax, 1
	je Left
	jmp Right

;---------- Level 2 dialogue

Left:
	mov edx, OFFSET Lv2Choice1Left
	call writestring
	mov edx, OFFSET Lv2Choice1LeftAns
	;call writestring
	call readint

	cmp eax, 1
	je RoomAhead
	cmp eax, 2
	je RoomBehind
	jmp StandGround

Right:
	mov edx, OFFSET Lv2Choice2Right
	call writestring
	mov edx, OFFSET Lv2Choice2RightAns
	;call writestring
	call readint

	cmp eax, 1
	je LeftAgain
	jmp Further

;---------- Level 3 dialogue

RoomAhead:
	mov edx, OFFSET Lv3HideAhead
	call writestring
	mov edx, OFFSET Lv3HideAheadAns
	;call writestring
	call readint

	cmp eax, 1
	je North
	jmp South

RoomBehind:
	mov edx, OFFSET Lv3HideBehind
	call writestring
	mov edx, OFFSET Lv3HideBehindFin
	;call writestring
	exit

StandGround:
	mov edx, OFFSET Lv3Stand
	call writestring
	mov edx, OFFSET Lv3StandFin
	;call writestring
	exit

LeftAgain:
	mov edx, OFFSET Lv3Left
	call writestring
	mov edx, OFFSET Lv3LeftAns
	;call writestring
	call readint

	cmp eax, 1
	je Coop
	jmp Search

Further:
	mov edx, OFFSET Lv3Moving
	call writestring
	mov edx, OFFSET Lv3MovingFin
	;call writestring
	exit

;---------- Level 4 dialogue

North:
	mov edx, OFFSET Lv4North
	call writestring
	mov edx, OFFSET Lv4NorthFin
	;call writestring
	exit

South:
	mov edx, OFFSET Lv4South
	call writestring
	mov edx, OFFSET Lv4SouthFin
	;call writestring
	exit

Coop:
	mov edx, OFFSET Lv4Cooperate
	call writestring
	mov edx, OFFSET Lv4CooperateAns
	;call writestring
	call readint

	cmp eax, 1
	je FightThrough
	jmp FightThrough

Search:
	mov edx, OFFSET Lv4Intel
	call writestring
	mov edx, OFFSET Lv4IntelAns
	;call writestring
	call readint

	cmp eax, 1
	je EliteFight
	jmp FightThrough

;---------- Level 5 dialogue

FightThrough:
	mov edx, OFFSET Lv5Fight
	call writestring
	mov edx, OFFSET Lv5FightFin
	;call writestring
	exit

EliteFight:
	mov edx, OFFSET Lv5FightElite
	call writestring
	mov edx, OFFSET Lv5FightEliteFin
	;call writestring
	exit

ret
RightofShip endp

main PROC

	mov edx, OFFSET Introduction
	call writestring
	mov edx, OFFSET IntroChoice
	;call writestring
	call readint

	cmp eax, 1
	je Back
	cmp eax, 2
	je Bottom
	jmp Right

Back:
	call BackofShip

Bottom:
	call BottomofShip

Right:
	call RightofShip

	exit
main ENDP

END main