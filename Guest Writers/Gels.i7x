Version 1 of Gels by Guest Writers begins here.
[Original by Darthan]
[Version 1.1 - Moved to Guest Writers]

"Add a Female, Male, and Herm Gel Creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say losetopinkgel: [Loss to Pink Gel.]
	if HP of Player > 0:
		say "     Unwilling to fight the Pink Gel you remove your clothing and present yourself to the creature so that she can sate her sexual desires on you.";
	else:
		say "     Unable to continue the fight, you have no choice but to let the Pink Gel have her way with you.";
	if Player is male:
		if Player is female: [Herm Player]
			say "     The Pink Gel seems amused by what she sees as she approaches. Pushing you down onto your back the girl positions herself above your [Cock of Player] cock. Dropping down, she fully impales herself on your [cock size desc of Player] member. As she begins to bounce up and down, riding you with wild abandon, she reaches down and fondles your [breast size desc of Player] breasts. After what seems like an eternity she slams herself down on you and you feel her elastic pussy clamp down on your rod. Unable to hold back anymore you flood the pink girl's womb with your seed as your own pussy releases a gush of fluids on the ground. Once both of you have finished the Pink Gel slides off of your [cock size desc of Player] cock and walks away while making sure that none of your creme escapes her nethers. You take note that the girl is now more opaque as your seed seems to be absorbed by her body.";
		else: [Male Player]
			say "     The Pink Gel seems delighted by what she sees as she approaches. Pushing you down onto your back the girl positions herself above your [Cock of Player] cock. Dropping down, she fully impales herself on your [cock size desc of Player] member. As she begins to bounce up and down, riding you with wild abandon, she leans over and gives you a deep kiss. As the flavor of strawberries fills your mouth you lose yourself and return her kiss and grab her jiggling ass, using it as leverage to thrust harder into her. After what seems like an eternity you pull the girl down as you thrust into her. Unleashing your seed into the pink girl's womb sets off her own climax and you feel her elastic pussy clamp down on your rod. Once both of you have finished the Pink Gel slides off of your [cock size desc of Player] cock and walks away while making sure that none of your creme escapes her nethers. You take note that the girl is now more opaque as your seed seems to be absorbed by her body.";
		CreatureSexAftermath "Pink Gel" receives "PussyFuck" from "Player";
	else if Player is female: [Female Player]
		say "     As she approaches the Pink Gel seems a little disappointed. After a brief moment she decides what she wants to do. Pushing you onto your back she turns around and sits down, shoving her pussy in your face. Licking at the pink girl's juicy nethers your mouth is filled with the taste of strawberry jello. This only serves to increase your pace as you reach up and grab her ass, pulling her down to make sure you have full access to her dripping pussy. Moaning the gel girl returns the favor and buries her face in your moist crotch. After what seems like hours you feel your climax approaching. Not wanting to be outdone you increase your stimulation of the pink girl to be rewarded with a gush of her sweet fluids covering your face. Unable to hold back any more you cover her face with your own fluids. Smiling, the gel girl gives you a deep kiss, giving you a taste of your mixed fluids, before getting up and leaving.";
		CreatureSexAftermath "Pink Gel" receives "OralPussy" from "Player";
		CreatureSexAftermath "Player" receives "OralPussy" from "Pink Gel";
	else: [Neuter Player]
		say "     As the Pink Gel approaches you can see the look of disappointment on her face as she stares at your featureless groin. Undaunted she pushes you onto your back and shoves her pussy into your face. As you begin to lick her juicy nethers your mouth is filled with the taste of strawberry jello. This only serves to increase your pace as the gel girl begins to moan. Looking up you can see that she has started fondling her massive tits while you continue to eat her out. After what seems like hours the pink girl lets out a final moan and arches her back. As she reaches her climax she coats your face in her sweet pink fluids. Once she is finished she gets up and leaves, but not before giving you a final kiss, licking most of her fluids up in the process.";
		CreatureSexAftermath "Player" receives "OralPussy" from "Pink Gel";
	if "Female Preferred" is listed in feats of Player and FemaleList is not banned: [Changes target to Pink Gel for infection.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Pink Gel":
				now MonsterID is y;
				break;
	if "Herm Preferred" is listed in feats of Player and HermList is not banned: [Changes target to Purple Gel for infection.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Purple Gel":
				now MonsterID is y;
				break;
	else if MaleList is not banned: [Changes target to Blue Gel for infection. Cross infect, Pink Gel infects with Blue Gel if no gender preferred feat or if male preferred.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Blue Gel":
				now MonsterID is y;
				break;

to say beatthepinkgel: [Victory over Pink Gel.]
	say "     Defeated, the Pink Gel falls to the ground. Apparently aroused by the fight, she spreads her legs and begins playing with herself.";
	if Libido of Player > 40:
		say "     You are quite horny. Will you accept the pink girl's offer?";
		if Player consents:
			say "     Unable to contain your lust, you strip off your clothing and approach the prone girl.";
			if Player is female:
				if Player is male: [Herm Player]
					say "     Taking your [cock size desc of Player] [Cock of Player] member in your hand, you begin stroking it as you decide how best to deal with the pink gel girl. Turning around you shove your [cunt size desc of Player] cunt in the girl's face while you place your [cock size desc of Player] rod between her massive mounds. As the girl begins licking your dripping twat, you fondle her tits as you fuck them. The gel girl uses one hand to play with your ass as the other plays with her own drenched pussy. After some time you reach your peak and spray your seed across her belly as you cover her face in your feminine juices. Reaching her peak at the same time the gel girl releases a blast of her pink juices across the ground. Having finished, you redress, gather your things, and continue on your way, leaving the pink girl in a puddle of your mixed fluids.";
				else: [Female Player]
					say "     As you play with your [CuntSpeciesName of Player in lower case] sex you position yourself over the pink girl's face. As you drip on her face the gel girl starts licking your [cunt size desc of Player] pussy as if her life depended on it. You let out a startled gasp at the girl's fervor. After recovering from the sudden attack on your sex you drop down and return the favor by putting just as much effort into eating out the gel girl as she is putting into doing the same to you. Using your tongue and fingers to pleasure the girl as much as you can, you are rewarded as her pink fluids spray across your face. Unable to hold back anymore you cover the girls face in your own juices. After you recover and redress you notice that the gel girl is busy wiping your juices off of her face and into her mouth. Letting out a slight chuckle you move along your way.";
					CreatureSexAftermath "Player" receives "OralPussy" from "Pink Gel";
				CreatureSexAftermath "Pink Gel" receives "OralPussy" from "Player";
			else if Player is male: [Male Player]
				say "     Stroking your [cock size desc of Player] [Cock of Player] shaft you spread the gel girl's legs. Placing your member at her opening you easily slide all the way in eliciting a moan. As you pick up the pace she begins moaning loader louder. Fucking her harder and harder the gel girl begins to thrust back into you, pushing you closer and closer to your peak. When the girl reaches her peak her cunt clamps down on your member as her pink juices spray across your groin. The added stimulation brings you to climax and you unload your [Ball Size Adjective of Player] nuts of their load into the girl's womb. Having finished you pull out and are surprised to see her body take on a cloudy pink color as your seed is absorbed by it. Giving her ass a gentle swat, you redress and continue on your way.";
				CreatureSexAftermath "Pink Gel" receives "PussyFuck" from "Player";
			else: [Neuter Player]
				say "     Having no sexual organs of your own you start off by locking the girl in a deep kiss. Moving down you stop to lick and suck on each of her nipples. Finally reaching the girl's pussy, you begin licking her like a madman. This elicits several moans from her. As you continue to pleasure the gel girl you are surprised when she wraps her legs around your head effectively preventing you from escaping until your job is done. As you continue pleasuring the pink girl you begin getting light headed from the lack of oxygen as she pushes you further into her crotch with her legs. Reaching behind her you slide a finger in the girl's ass in hopes that you can get her off so that you can breath again. When you think you cannot take anymore you hear the girl scream and she pushed into your face as a wave of her pink juices spray across your face. As her climax fades her legs release your head. Gasping for breath you notice that she seems to have passed out from the ordeal. Cleaning up you redress and continue on your way.";
				CreatureSexAftermath "Player" receives "OralPussy" from "Pink Gel";
		else:
			say "     Controlling your desires you turn and walk away. You can't help but get a little turned on as you hear the girl's moans as she pleasures herself.";
			increase Libido of Player by 5;
			if Libido of Player > 100:
				now Libido of Player is 100;
	else:
		say "     Walking away you can't help but get a little turned on as you hear the girl's moans as she pleasures herself.";
		increase Libido of Player by 5;

to say pinkgeldesc: [Pink Gel description.]
	say "     A jiggling girl of pink color. You can see through her, mostly, her gelatin-like flesh tinting the area behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeably than the rest of her. Noticing you she charges with arms outstretched. Apparently she is happy to see you.";

to say losetobluegel: [Loss to Blue Gel.]
	if HP of Player > 0:
		say "     Unwilling to fight the Blue Gel you remove your clothing and present yourself to the creature so that he can sate his sexual desires on you.";
	else:
		say "     Unable to continue the fight, you have no choice but to let the Blue Gel have his way with you.";
	if Player is male:
		if Player is female: [Herm Player]
			say "     The Blue Gel rolls you onto your stomach to get better access to his prize. Without warning he buries himself in your [CuntSpeciesName of Player in lower case] pussy. As he pounds you relentlessly your [cock size desc of Player] rod grows hard. Since the gel man seems totally focused on ravaging your pussy, you reach down and start stroking your cock. After a short time the gel reaches his peak and fills you with his blue seed. This in turn brings about your orgasm causing you to clamp down of the invader, milking it for all it has as your seed sprays in a puddle beneath you. Having finished with you the blue man pulls out of you, unceremoniously dumping you in the pool of your seed, and walks away.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Blue Gel";
		else: [Male Player]
			say "     Seeming displeased that you share his gender, the Blue Gel grabs you by the back of the head an impales your throat on his member. Unable to muster the strength to fight back you are forced to allow the gel to brutally facefuck you. After some time he slams himself fully in your mouth and begins pumping his seed down your throat. When he finally finishes and pulls out you are relieved that the ordeal is over. The gel man has other plans though. Forcing you onto your stomach the blue man lines himself up and pushes into your rear entrance. As he pounds your ass your [cock size desc of Player] [Cock of Player] member grows hard. Unable to control yourself your reach back to begin stroking your member but are cut off as the blue gel grabs both of your arms, it seems he wants to punish you for not having what he wants. Eventually, with one final thrust, he fills your bowels with his blue seed. Once he has finished he pulls out dropping you to the ground as his goo leaks from your ass and leaves. Having been prevented from having your own orgasm you are extremely horny.";
			CreatureSexAftermath "Player" receives "OralCock" from "Blue Gel";
			CreatureSexAftermath "Player" receives "AssFuck" from "Blue Gel";
			increase Libido of Player by 50;
			if Libido of Player > 110: [if raises libido high enough you will autosubmit in next encounter unless you lower your libido some other way. I know, I'm evil. :D]
				now Libido of Player is 110;
	else if Player is female: [Female Player]
		say "     Spreading your legs the Blue Gel buries his cock into your [CuntSpeciesName of Player in lower case] sex. Grabbing your [Skin of Player] [breast size desc of Player] breasts for leverage he begins pistoning into you. As he continues you can't help but start thrusting back into him. Unable to hold back you scream as you reach your peak, clamping down on his blue member. The added pressure causes the gel to reach his end as well and he fills you with his blue seed. Pulling out, he sprays his last few jets of cum across your body. Seeming to have enjoyed himself the gel continues on his way leaving you covered in his goo with it leaking out of your abused pussy.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Blue Gel";
	else: [Neuter Player]
		say "     Seeming displeased that you have no gender, the Blue Gel grabs you by the back of the head an impales your throat on his member. Unable to muster the strength to fight back you are forced to allow the gel to brutally facefuck you. After some time he slams himself fully in your mouth and begins pumping his seed down your throat. When he finally finishes and pulls out you are relieved that the ordeal is over. The gel man has other plans though. Forcing you onto your stomach the blue man lines himself up and pushes into your rear entrance. Eventually, with one final thrust, he fills your bowels with his blue seed. Once he has finished he pulls out dropping you to the ground as his goo leaks from your ass and leaves.";
		CreatureSexAftermath "Player" receives "OralCock" from "Blue Gel";
		CreatureSexAftermath "Player" receives "AssFuck" from "Blue Gel";
	if "Male Preferred" is listed in feats of Player and MaleList is not banned: [Changes target to Blue Gel for infection.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Blue Gel":
				now MonsterID is y;
				break;
	else if "Herm Preferred" is listed in feats of Player and HermList is not banned: [Changes target to Purple Gel for infection.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Purple Gel":
				now MonsterID is y;
				break;
	else if FemaleList is not banned: [Changes target to Pink Gel for infection. Cross infect, Blue Gel infects with Pink Gel if no gender preferred feat or if female preferred.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Pink Gel":
				now MonsterID is y;
				break;

to say beatthebluegel: [Victory over Blue Gel.]
	say "     Defeated, the Blue Gel falls to the ground. Apparently aroused by the fight, he spreads his legs and begins playing with himself.";
	if Libido of Player > 40:
		say "     You are quite horny. Will you accept the blue man's offer?";
		if Player consents:
			say "     Unable to contain your lust, you strip off your clothing and approach the prone man.";
			if Player is female:
				if Player is male: [Herm Character]
					say "     As the Blue Gel strokes himself to erection you position yourself above him. You lower yourself slowly until your [CuntSpeciesName of Player in lower case] pussy fully envelops the gel's blue member. As you begin to bounce up and down your [cock size desc of Player] grows hard. As you ride harder you reach down to stroke your own member increasing your pleasure. Soon you reach your peak, your pussy clamping down on the blue shaft as your [cock size desc of Player] cock unloads across the gel man's chest. The added pressure from your squeezing pussy pushes the gel over the edge and he fills you with his blue seed. Getting off the now unconscious gel, you smile as his seed drips from your pussy onto him. Cleaning up and redressing you continue on your way.";
				else: [Female Character]
					say "     Positioning your face over the Blue Gel's throbbing member you begin teasing him by licking and sucking on the tip. You soon decide that you have teased him enough and begin sucking his engorged member. Taking him as far as you can you feel his cock reshape as it slides into your throat. As you continue to throatfuck yourself, while using your tongue to further his pleasure, you reach down and start fondling the blue man's squishy balls. As you feel his climax approach you shove your face down until you have fully enveloped his member. The gel moans as he pumps his seed down your throat and into your stomach. As his orgasm starts to fade you pull him out of your mouth, allowing several jets of his blue goo to splatter your face and [breast size desc of Player] tits. Not satisfied you grab his flagging member and stroke it back to erection. Positioning him at your now dripping tunnel you easily push him into your [CuntSpeciesName of Player in lower case] sex. Bouncing hard on his gel-like member you quickly reach your peak and clamp down on him as you cry out as waves of pleasure rush through your body. Reaching his limit as well, the gel man fills your womb with his potent blue seed. Once you are both finished you stand up, pulling his cock from your abused pussy, and continue on your way. Not noticing the blue trail that seems to be leaking from between your legs.";
					CreatureSexAftermath "Player" receives "OralCock" from "Blue Gel";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Blue Gel";
			else if Player is male: [Male Character]
				say "     Not one to pass up an opportunity to satisfy you needs you shove your [cock size desc of Player] [Cock of Player] cock down the Blue gel's throat. Grabbing the gel man by the back of the head you begin using his throat like a cocksleeve. The feeling of his jello-like throat flexing so you have a snug fit is amazing. Soon enough you reach your limit and begin filling him with your seed. As you unload into the gel you notice that your seed seems to be defusing though his body giving him a slightly cloudy appearance. Once you finish you pull out, making sure that he licks you clean, redress, and continue on your way. You can't help but smile as you hear the moans of the gel man due to his unfulfilled lust.";
				CreatureSexAftermath "Blue Gel" receives "OralCock" from "Player";
			else: [Neuter Character]
				say "     Lacking any sexual organs of your own, you slide the Blue Gel's member [if Breast Size of Player > 0]between your breasts before taking it into your mouth. Sucking his cock while you stroke him with your [breast size desc of Player] tits, you quickly bring him to orgasm[else]in your mouth. Sucking him for all he's worth, you quickly bring him to orgasm[end if]. Spraying his blue seed across your face[if Breast Size of Player > 0] and tits[end if], you feel much better. Giving the blue man a playful swat on the ass, you clean yourself up and continue on your way.";
				CreatureSexAftermath "Player" receives "OralCock" from "Blue Gel";
		else:
			say "     Controlling your desires you turn and walk away. You can't help but get a little turned on as you hear the man's moans as he pleasures himself.";
			increase Libido of Player by 5;
			if Libido of Player > 100:
				now Libido of Player is 100;
	else:
		say "     Walking away you can't help but get a little turned on as you hear the man's moans as he pleasures himself.";
		increase Libido of Player by 5;

to say bluegeldesc: [Blue Gel description]
	say "     A jiggling man of blue color. You can see through him, mostly, his gelatin-like flesh tinting the area behind him with its lustrous shade. His upper torso is well defined, with his muscled abs somehow jiggling just a little more than you would expect. Between his legs his footlong flaccid member sways back and forth as he moves. Noticing you he charges with arms outstretched. Apparently he is happy to see you.";


to say losetopurplegel: [Loss to Purple Gel.]
	if HP of Player > 0:
		say "     Unwilling to fight the Purple Gel you remove your clothing and present yourself to the creature so that she can sate her sexual desires on you.";
	else:
		say "     Unable to continue the fight, you have no choice but to let the Purple Gel have her way with you.";
	if Player is male:
		if Player is female: [Herm Player]
			say "     Spreading your legs the Purple Gel rubs her hardened member across your [Cock of Player] slit. After a few minutes of teasing she pushes forward until she has fully entered you. As she begins to slide in and out, she reaches down and grabs your [cock size desc of Player] [Cock of Player] cock and begins stroking it while her other hand massages her breasts. Lost in the pleasure, your hands move to your [breast size desc of Player] breasts and start playing with them. When the gel reaches her peak and fills you with her purple goo you feel your own climax as your vaginal walls clamp down on the invading member. You cry out when a sudden tightness at the base of your cock prevents you from releasing your seed. Looking down you see the purple girl's hand has clamped down on the base of your cock like a ring preventing you from achieving your release. Still weak from the fight and enduring the waves up pain as you are backed up you can do nothing but beg the girl to let you cum. Finally the girl finishes filling you and pulls out with a loud pop. She quickly moves over you and drops downs, fully impaling her dripping pussy on your throbbing cock as her blue seed leaks from your abused cunt. As the pressure on your member releases you begin to spasm and shoot load after load of your seed into the gel's waiting pussy. When you finally regain some control of your body you look down as watch in amazement and you watch your seed fill the gel girl giving her a cloudy purple color. As your empty the last of your seed into the now cloudy purple gel she slides of your member and gives to a peck on the cheek before leaving you in a now rather large pool of purple seed that has leaked from your pussy.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Purple Gel";
			CreatureSexAftermath "Purple Gel" receives "PussyFuck" from "Player";
		else: [Male Player]
			say "     The Purple Gel reaches between your legs and strokes your [cock size desc of Player] [Cock of Player] rod until it is hard. Going down, she begins sucking your member as she strokes you. As you feel you orgasm approaching the purple girls suddenly slides you out of her mouth and stops her stroking. Glancing down you see that she has repositioned herself so that her dripping slit hangs over your raging member. Thrusting upward you desperately try to bury yourself in her waiting pussy but she keeps herself just out of your reach. As you beg her to fuck you she simply smiles down at you as she strokes her own hard member. After what seems like an eternity the purple girl drops down, fully impaling herself on you. You can't help but let out a cry of pleasure as her tight warm tunnel envelops your member. As she begins bouncing up and down she strokes herself with one hand while the other plays with her massive bouncing breasts. As your peak once again approaches you reach down a grab the girl's hips and pull her down so that she cannot deny you your release again. As you fill the girl with your seed you watch as globs of it float through the girl's body. Reaching her own peak the gel's already tight passage tightens even more on your cock as her purple seed erupts from her member coating your face and chest in her sticky goo. Extracting herself from your flagging member the girl turns and blows you a sloppy kiss before wobbling away.";
			CreatureSexAftermath "Purple Gel" receives "PussyFuck" from "Player";
	else if Player is female: [Female Player]
		say "     Spreading your legs the Purple Gel the tip of her member across your [CuntSpeciesName of Player in lower case] pussy. After a few minutes of teasing she easily slides into your now soaked slit. Grabbing your hips for extra leverage she begins to piston in and out of you. Leaning over the gel girl embraces you in a deep and passionate kiss. When she finally pulls away you feel slightly empty but are soon to distracted by the waves of pleasure running through your body as the purple girl picks up her pace. Reaching down you give your [breast size desc of Player] tits a squeeze which is enough to set off your orgasm causing your vaginal walls to clamp down on the girl's member. This in turn causes her to peak and fill you with her purple seed as a gush of juices spray from her pussy onto the ground. Pulling out the gel leans over and gives you another kiss before leaving you in a growing puddle of her juices and seed.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Purple Gel";
	else: [Neuter Player]
		say "     Disappointed that you have no sexual organs for her to enjoy the Purple Gel turns and shoves her pussy in your face while [if Breast Size of Player > 0]sliding her member between your [breast size desc of Player] breasts[else]stroking her member[end if]. You begin licking the girl's waiting pussy as she grinds it against your face. Soon you bring her to her peak and she covers your face with a gush of her juices as her purple seed covers your [if Breast Size of Player > 0]tits[else]chest[end if] and stomach. After finishing the gel girl turns around and gives you a kiss and begins licking her juices off your face. Once she is done she moves down and licks her goo off your [if Breast Size of Player > 0]breasts[else]chest[end if] and stomach. Once she has licked you clean she gives you a final kiss, allowing you to taste the mixed flavors of her fluids, before turning and walking away.";
		CreatureSexAftermath "Player" receives "OralPussy" from "Purple Gel";
	if "Female Preferred" is listed in feats of Player and FemaleList is not banned: [Changes target to Pink Gel for infection.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Pink Gel":
				now MonsterID is y;
				break;
	else if "Male Preferred" is listed in feats of Player and MaleList is not banned: [Changes target to Blue Gel for infection.]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Blue Gel":
				now MonsterID is y;
				break;

to say beatthepurplegel: [Victory over Purple Gel.]
	say "     Defeated, the Purple Gel falls to the ground. Apparently aroused by the fight, she spreads her legs and begins playing with herself.";
	if Libido of Player > 40:
		say "     You are quite horny. Will you accept the purple girl's offer?";
		if Player consents:
			say "     Unable to contain your lust, you strip off your clothing and approach the prone girl.";
			if Player is female:
				if Player is male: [Herm Character]
					say "     Turning yourself around, you get down on all fours and position yourself over the prone girl. Reaching down, with one hand your position her jello-like member against your slit while you use your other hand to put your [Cock of Player] member at her entrance. Rubbing back and forth you quickly get yourself and the gel girl wet. Pushing down you easily slide into her tight warm hole as she slides easily into your own. Resting your weight on one arm you begin to bounce up and down, fucking and being fucked by the gel girl, as your other hand starts massaging your [breast size desc of Player] tits. Moaning as you increase the speed of your actions you quickly reach your peak. Holding on as long as you can so that the two of you can cum together you let loose as you feel the first glob of the gel girl's purple goo hit your cervix. As the two of you fill each other with your seed the waves of pleasure cause your arm to give out causing you to drop squishing your [breast size desc of Player] boobs on the ground. Once the two of you have finished filling each other you lift yourself up causing you to separate from the purple girl as globs of her purple seed begin leaking from your hole. Turning around you give the girl a passionate kiss as thanks for the good fuck as you notice gobs of your seed floating through her body. Cleaning yourself up and redressing you continue on your way, hoping that you might encounter another Purple Gel for some more fun.";
					CreatureSexAftermath "Player" receives "PussyFuck" from "Purple Gel";
					CreatureSexAftermath "Purple Gel" receives "PussyFuck" from "Player";
					increase Libido of Player by 5; [Small libido increase since thinking about having more fun with another Purple Gel excites you]
					if Libido of Player > 100: [Shouldn't happen but just in case]
						now Libido of Player is 100;
				else: [Female Character]
					say "     Straddling the Purple Gel, you rub her tip across your [CuntSpeciesName of Player in lower case] pussy until you are nice and wet. Pushing down you easily slide her member into your dripping slit. When you bottom out you lean over and give the purple girl a kiss before you move your head down and start sucking on her massive breasts. Sucking on her jello-like mounds you begin bouncing up and down on the gel's member. Soon the girl begins thrusting into you in rhythm with your own movements increasing your pleasure even more. Soon enough you arch your back and cry out as your orgasm crashes over you like a wave. The purple girl give one final thrust and unloads her seed into you. As your orgasm finishes you collapse onto the Purple Gel, her plump breasts acting like pillows to cushion your fall. Stroking your head the gel continues to fill you with her goo as you loose consciousness. When you wake you are wrapped in the sleeping girls arms, your head resting on her massive pillows, as her purple seed leaks from your pussy. Careful not to wake her, you untangle yourself from the gel girl's arms, clean yourself up, redress and continue on your way.";
					CreatureSexAftermath "Player" receives "PussyFuck" from "Purple Gel";
			else if Player is male: [Male Character]
				say "     Spreading the Purple Gel's legs, you place your [cock size desc of Player] [Cock of Player] cock at her waiting passage. Pushing forward you easily slide into her tight, wet, and warm tunnel. Grabbing her hips you begin to piston in and out of the purple girl as she reaches down and starts stroking her own member with both hands. Soon enough you give one final thrust as you blow your load in the gel girl's pussy. You watch as jet after jet of your cum shoots through her semi-transparent body until her pussy tightens on your member causing you to loose focus as streams of her purple goo spray across her belly and breasts. Pulling out of the girl you give her ass a playful swat before getting redressed and continuing on your way.";
				CreatureSexAftermath "Purple Gel" receives "PussyFuck" from "Player";
			else: [Neuter Character]
				say "     Having no sexual organs of your own, you get down and embrace the Purple Gel in a deep, passionate kiss. Pulling away you move down and begin sucking on the girls giant tits. While you stimulate her breasts the gel's hands move down and start stroking her cock. Once you are satisfied with sucking her breasts you move further down to the gel girl's groin. Pulling her hands away, you [if Breast Size of Player > 0]place her member between your breasts as you begin to suck it[else]you engulf her member with your mouth and begin sucking on it[end if]. You continue this until she can't hold back anymore and fills your mouth with her purple seed. Feeling that you cannot hold anymore you pull her out of your mouth as she continues to spray her seed across your face and [if Breast Size of Player > 0]breasts[else]chest[end if]. When she finally finishes, your upper body is covered in her sticky purple goo. After having dealt with the mess in the best way possible, you redress and continue on your way.";
				CreatureSexAftermath "Player" receives "OralCock" from "Player";
				increase Libido of Player by 10;
				if Libido of Player > 100:
					now Libido of Player is 100;
		else:
			say "     Controlling your desires, you turn and walk away. You can't help but get a little turned on as you hear the girl's moans as she pleasures herself.";
			increase Libido of Player by 5;
			if Libido of Player > 100:
				now Libido of Player is 100;
	else:
		say "     Walking away, you can't help but get a little turned on as you hear the girl's moans as she pleasures herself.";
		increase Libido of Player by 5;

to say purplegeldesc: [Purple Gel Description.]
	say "     A jiggling girl of purple color. You can see through her, mostly, her gelatin-like flesh tinting the area behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeably than the rest of her. Between her legs her footlong flaccid member sways back and forth as she moves. Noticing you she charges with arms outstretched. Apparently she is happy to see you.";


Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Pink Gel"	"[PrepCombat_Pink Gel]"

to say PrepCombat_Pink Gel:
	setmongender 5; [creature is herm]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Gel"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Pink Gel" to infections of SlimeList;
	add "Pink Gel" to infections of FemaleList;
	add "Pink Gel" to infections of TentacleCockList;
	add "Pink Gel" to infections of NoLegList;
	add "Pink Gel" to infections of SlidingList;
	now Name entry is "Pink Gel"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Pink Gel tries to suffocate you with her enormous boobs![or]The Pink Gel strikes you in the jaw with surprising force![or]The Pink Gel lands a swift kick to your gut, knocking the wind out of you![or]The Pink Gel squeezes you in a tight hug, making it hard for you to breath![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthepinkgel]"; [ Text when monster loses. ]
	now victory entry is "[losetopinkgel]"; [ Text when monster wins. ]
	now desc entry is "[pinkgeldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a pretty human face with long [one of]partially fluid[or]flexible semi-solid[or]jellied[at random] hair hanging almost to your ass"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "surprisingly perfect, your muscles and curves nicely defined, your long eye-catching legs perfect for showing off, and your soft hands are just made for stroking and petting the opposite sex"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random], pink"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "you can feel your face reshaping into rather pretty proportions. You feel your hair grow until it is hanging almost to your ass and take on a [one of]partially fluid[or]flexibly semi-solid[or]jellied[at random] state"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "invisible hands seem to massage your muscles, rubbing and molding your body into a more attractive form"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now pink, jello-like flesh"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you get an odd feeling, but see no change"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your [cock size desc of Player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 20; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 48; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is "pink gel"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "pink gel milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]feminine[or]curvy[or][if Player is gelskinned]gelatinous[else]slender[end if][or][if Player is gelskinned]jelly[else]feminine[end if][or][if Player is gelskinned]transparent[else]curvy[end if][at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatin"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Blue Gel"	"[PrepCombat_Blue Gel]"

to say PrepCombat_Blue Gel:
	setmongender 3; [creature is male]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Blue Gel"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Blue Gel" to infections of SlimeList;
	add "Blue Gel" to infections of MaleList;
	add "Blue Gel" to infections of TentacleCockList;
	add "Blue Gel" to infections of NoLegList;
	add "Blue Gel" to infections of SlidingList;
	now Name entry is "Blue Gel"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Blue Gel slaps you with his footlong cock![or]The Blue Gel strikes you in the jaw with surprising force![or]The Blue Gel lands a swift kick to your gut, knocking the wind out of you![or]The Blue Gel crushes you in a tight hug, making it hard for you to breath![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthebluegel]"; [ Text when monster loses. ]
	now victory entry is "[losetobluegel]"; [ Text when monster wins. ]
	now desc entry is "[bluegeldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a masculine human face with short [one of]partially fluid[or]flexibly semi-solid[or]jellied[at random] hair "; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "that of a handsome and attractive human being, jiggly but strong"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random], blue"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "you can feel your face reshaping into masculine proportions. You feel your hair take on a [one of]partially fluid[or]flexibly semi-solid[or]jellied[at random] state"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "invisible hands seem to massage your muscles, rubbing and molding your body into a more attractive form"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now blue, jello-like flesh"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now Ass Change entry is "you get an odd feeling, but see no change"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your [cock size desc of Player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 18; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 48; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 1; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is "blue gel"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "blue gel milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]masculine[or]well-toned[or][if Player is gelskinned]gelatinous[else]muscled[end if][or][if Player is gelskinned]jelly[else]masculine[end if][or][if Player is gelskinned]transparent[else]well-toned[end if][at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatin"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Purple Gel"	"[PrepCombat_Purple Gel]"

to say PrepCombat_Purple Gel:
	setmongender 4; [creature is female]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Purple Gel"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Purple Gel" to infections of SlimeList;
	add "Purple Gel" to infections of HermList;
	add "Purple Gel" to infections of TentacleCockList;
	add "Purple Gel" to infections of NoLegList;
	add "Purple Gel" to infections of SlidingList;
	now Name entry is "Purple Gel"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Purple Gel tries to suffocate you with her enormous boobs![or]The Purple Gel slaps you with her footlong cock![or]The Purple Gel strikes you in the jaw with surprising force![or]The Purple Gel lands a swift kick to your gut, knocking the wind out of you![or]The Purple Gel squeezes you in a tight hug, making it hard for you to breath![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthepurplegel]"; [ Text when monster loses. ]
	now victory entry is "[losetopurplegel]"; [ Text when monster wins. ]
	now desc entry is "[purplegeldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a pretty human face with long [one of]partially fluid[or]flexibly semi-solid[or]jellied[at random] hair hanging almost to your ass"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "surprisingly perfect, your muscles and curves nicely defined, your long eye-catching legs perfect for showing off, and your soft hands are just made for stroking and petting the opposite sex"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random], purple"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "you can feel your face reshaping into rather pretty proportions. You feel your hair grow until it is hanging almost to your ass and take on a [one of]partially fluid[or]flexibly semi-solid[or]jellied[at random] state"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "invisible hands seem to massage your muscles, rubbing and molding your body into a more attractive form"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now purple, jello-like flesh"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now Ass Change entry is "you get an odd feeling, but see no change"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your [cock size desc of Player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 48; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 1; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is "purple gel"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "purple gel milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]feminine[or]curvy[or][if Player is gelskinned]gelatinous[else]slender[end if][or][if Player is gelskinned]jelly[else]feminine[end if][or][if Player is gelskinned]transparent[else]curvy[end if][at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatin"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 3 - Endings

[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Pink Gel Infection"	"Infection"	""	Pink Gel Infection rule	1000	false
"Blue Gel Infection"	"Infection"	""	Blue Gel Infection rule	1000	false
"Purple Gel Infection"	"Infection"	""	Purple Gel Infection rule	1000	false

This is the Pink Gel Infection rule:
	if Player has a body of "Pink Gel":
		trigger ending "Pink Gel Infection";
		if humanity of Player < 10:
			say "     ";
		else:
			if Player is male:
				if Player is female: [Herm Version]
					say "     ";
				else: [Male Version]
					say "     ";
			else if Player is female:	[Female Version]
				say "     ";
			else: [Neuter Version]
				say "     ";

This is the Blue Gel Infection rule:
	if Player has a body of "Blue Gel":
		trigger ending "Blue Gel Infection";
		if humanity of Player < 10:
			say "     ";
		else:
			if Player is male:
				if Player is female: [Herm Version]
					say "     ";
				else: [Male Version]
					say "     ";
			else if Player is female:	[Female Version]
				say "     ";
			else: [Neuter Version]
				say "     ";

This is the Purple Gel Infection rule:
	if Player has a body of "Purple Gel":
		trigger ending "Purple Gel Infection";
		if humanity of Player < 10:
			say "     ";
		else:
			if Player is male:
				if Player is female: [Herm Version]
					say "     ";
				else: [Male Version]
					say "     ";
			else if Player is female:	[Female Version]
				say "     ";
			else: [Neuter Version]
				say "     ";]


Section 4 - Items

[Pink Gel item.]
Table of Game Objects (continued)
name	desc	weight	object
"pink gel"	"A cup of pink jello, it looks like it is strawberry flavored."	1	pink gel

pink gel is a grab object.
It is temporary.

Usedesc of pink gel is "[gel1]";

to say gel1:
	say "     Eating the cup of pink jello makes you a little less hungry and helps quench your thirst a bit, and really, what harm could it be?";
	PlayerEat 6;
	PlayerDrink 3;
	if "Female Preferred" is listed in feats of Player and FemaleList is not banned: [Changes target to Pink Gel for infection.]
		infect "Pink Gel";
	else if "Herm Preferred" is listed in feats of Player and HermList is not banned: [Changes target to Purple Gel for infection.]
		infect "Purple Gel";
	else if MaleList is not banned: [Cross infection. Will infect with Blue Gel instead of Pink Gel if no gender preferred feat or if Female preferred.]
		infect "Blue Gel";
	else:
		infect "Pink Gel";

the scent of pink gel is "The jello smells like strawberries.".

[Blue Gel item.]
Table of Game Objects (continued)
name	desc	weight	object
"blue gel"	"A cup of blue jello, it looks like it is blueberry flavored."	1	blue gel

blue gel is a grab object.
It is temporary.

Usedesc of blue gel is "[gel2]";

to say gel2:
	say "     Eating the cup of blue jello makes you a little less hungry and helps quench your thirst a bit, and really, what harm could it be?";
	PlayerEat 6;
	PlayerDrink 3;
	if "Male Preferred" is listed in feats of Player and MaleList is not banned: [Changes target to Blue Gel for infection.]
		infect "Blue Gel";
	else if "Herm Preferred" is listed in feats of Player and HermList is not banned: [Changes target to Herm Gel for infection.]
		infect "Purple Gel";
	else if FemaleList is not banned: [Cross infection. Will infect with Pink Gel instead of Blue Gel if no gender preferred feat or if male preferred.]
		infect "Pink Gel";
	else:
		infect "Blue Gel";

the scent of blue gel is "The jello smells like blueberries.".

[Purple Gel item.]
Table of Game Objects (continued)
name	desc	weight	object
"purple gel"	"A cup of purple jello, it looks like it is grape flavored."	1	purple gel

purple gel is a grab object.
It is temporary.

Usedesc of purple gel is "[gel3]";

to say gel3:
	say "     Eating the cup of purple jello makes you a little less hungry and helps quench your thirst a bit, and really, what harm could it be?";
	PlayerEat 6;
	PlayerDrink 3;
	if "Male Preferred" is listed in feats of Player and MaleList is not banned: [Changes target to Blue Gel for infection.]
		infect "Blue Gel";
	else if "Female Preferred" is listed in feats of Player and FemaleList is not banned: [Changes target to Pink Gel for infection.]
		infect "Pink Gel";
	else:
		infect "Purple Gel";

the scent of purple gel is "The jello smells like grapes.".


Section 5 - Definitions

Definition: a person is gelfaced:
	if FaceName of Player is "Pink Gel", yes;
	if FaceName of Player is "Blue Gel", yes;
	if FaceName of Player is "Purple Gel", yes;
	no;

Definition: a person is gelskinned:
	if SkinName of Player is "Pink Gel", yes;
	if SkinName of Player is "Blue Gel", yes;
	if SkinName of Player is "Purple Gel", yes;
	no;

Definition: a person is gelbodied:
	if BodyName of Player is "Pink Gel", yes;
	if BodyName of Player is "Blue Gel", yes;
	if BodyName of Player is "Purple Gel", yes;
	no;

Definition: a person is gelcocked:
	if CockName of Player is "Pink Gel", yes;
	if CockName of Player is "Blue Gel", yes;
	if CockName of Player is "Purple Gel", yes;
	no;

Definition: a person is geltailed:
	if TailName of Player is "Pink Gel", yes;
	if TailName of Player is "Blue Gel", yes;
	if TailName of Player is "Purple Gel", yes;
	no;


Gels ends here.
