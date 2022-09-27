function cards_init(){
	cards = [
		[//1 Hero Shot
			[1, 1, 1, 1, 1],
			[1, 1, 1, 2, 1],
			[0, 1, 0, 0, 0],
			[1, 0, 0, 0, 0]
		],
		[//2 Sploosh-o-matic
			[1, 2, 0, 1],
			[1, 1, 1, 1],
			[0, 1, 0, 1]
		],
		[//3 Splattershot Jr.
			[1, 2, 1],
			[1, 0, 0]
		],
		[//4 Splash-o-matic
			[0, 0, 1, 0],
			[1, 1, 1, 2],
			[0, 1, 1, 0]
		],
		[//5 Aerospray MG
			[1, 2, 0, 0],
			[1, 1, 1, 1],
			[0, 1, 0, 0]
		],
		[//6 Splattershot
			[1, 1, 2, 0],
			[1, 1, 1, 1],
			[1, 0, 0, 0]
		],
		[//7 .52 Gal
			[1, 1, 1, 2],
			[0, 1, 1, 0],
			[1, 0, 0, 0]
		],
		[//8 N-ZAP '85
			[1, 1, 2, 1],
			[1, 0, 0, 0]
		],
		[//9 Splattershot Pro
			[0, 0, 0, 1, 2, 0],
			[1, 1, 1, 1, 1, 1],
			[0, 0, 1, 0, 0, 0]
		],
		[//10 .96 Gal
			[1, 1, 1, 1, 1, 2],
			[0, 1, 1, 1, 0, 0],
			[1, 0, 0, 0, 0, 0]
		],
		[//11 Jet Squelcher
			[1, 2, 1, 1, 1, 1],
			[1, 0, 0, 0, 0, 0],
			[1, 1, 1, 0, 0, 0]
		],
		[//12 Luna Blaster
			[0, 0, 0, 2],
			[1, 1, 1, 0],
			[0, 1, 1, 0],
			[0, 1, 0, 0]
		],
		[//13 Blaster
			[1, 0, 0, 1, 2],
			[0, 1, 1, 1, 1],
			[0, 1, 0, 0, 0]
		],
		[//14 Range Blaster
			[1, 0, 0, 0, 1, 2],
			[0, 1, 1, 1, 1, 1],
			[0, 1, 0, 0, 0, 0]
		],
		[//15 Clash Blaster
			[0, 1, 1, 1],
			[1, 1, 1, 2],
			[1, 0, 0, 0]
		],
		[//16 Rapid Blaster
			[1, 1, 2, 1],
			[1, 1, 1, 0],
			[1, 0, 0, 0]
		],
		[//17 Rapid Blaster Pro
			[1, 1, 1, 1, 1],
			[1, 1, 2, 0, 0],
			[1, 0, 0, 0, 0]
		],
		[//18 L-3 Nozzlenose
			[1, 2, 1, 1],
			[1, 1, 0, 0],
			[1, 0, 0, 0]
		],
		[//19 H-3 Nozzlenose
			[1, 1, 1, 2, 1],
			[1, 1, 0, 0, 0],
			[1, 0, 0, 0, 0]
		],
		[//20 Squeezer
			[0, 0, 0, 2],
			[0, 0, 1, 0],
			[1, 1, 0, 0],
			[1, 1, 0, 0],
			[1, 0, 0, 0]
		],
		[//21 Carbon Roller
			[1, 1, 1, 1],
			[0, 1, 2, 0],
			[0, 0, 1, 0]
		],
		[//22 Splat Roller
			[1, 1, 2, 1, 1],
			[0, 0, 1, 1, 1],
			[0, 0, 1, 0, 0]
		],
		[//23 Dynamo Roller
			[1, 1, 1, 1, 1, 1, 1],
			[0, 0, 0, 2, 1, 1, 1],
			[0, 0, 0, 1, 0, 0, 0],
			[0, 0, 0, 1, 0, 0, 0]
		],
		[//24 Flingza Roller
			[1, 1, 2, 1, 1],
			[0, 0, 1, 1, 0],
			[0, 0, 1, 1, 0],
			[0, 0, 1, 0, 0]
		],
		[//25 Inkbrush
			[0, 0, 0, 2, 1],
			[0, 0, 0, 1, 1],
			[0, 0, 1, 0, 0],
			[0, 1, 0, 0, 0],
			[1, 0, 0, 0, 0]
		],
		[//26 Octobrush
			[0, 0, 0, 0, 1, 0],
			[0, 0, 0, 2, 1, 1],
			[0, 0, 0, 1, 1, 0],
			[0, 0, 1, 0, 0, 0],
			[0, 1, 0, 0, 0, 0],
			[1, 0, 0, 0, 0, 0]
		],
		[//27 Classic Squiffer
			[1, 1, 1, 1, 1, 1],
			[1, 2, 0, 0, 0, 0]
		],
		[//28 Splat Charger
			[1, 1, 1, 1, 1, 1, 1],
			[0, 0, 2, 0, 0, 0, 0]
		],
		[//29 Splatterscope
			[0, 0, 1, 2, 0, 0, 0],
			[1, 1, 1, 1, 1, 1, 1],
			[0, 0, 1, 0, 0, 0, 0],
		],
		[//30 E-liter 4K
			[1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 0, 0, 2, 0]
		],
		[//31 E-liter 4K Scope
			[0, 0, 0, 1, 2, 0, 0],
			[1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 0, 0, 1, 0]
		],
		[//32 Bamboozler 14 Mk I
			[1, 0, 0, 0, 1],
			[1, 2, 1, 1, 1]
		],
		[//33 Goo Tuber
			[1, 1, 1, 1, 1, 1],
			[1, 1, 2, 0, 1, 0],
			[0, 0, 0, 1, 0, 0]
		],
		[//34 Slosher
			[1, 0, 0],
			[0, 2, 1],
			[1, 1, 1]
		],
		[//35 Tri-Slosher
			[1, 0],
			[1, 2],
			[1, 1]
		],
		[//36 Sloshing Machine
			[1, 2, 1],
			[0, 1, 1],
			[0, 1, 1]
		],
		[//37 Bloblobber
			[1, 0, 0, 0, 0],
			[2, 1, 1, 1, 1],
			[1, 1, 1, 1, 0]
		],
		[//38 Explosher
			[1, 0, 0, 1, 0],
			[1, 1, 1, 1, 0],
			[1, 1, 1, 1, 2]
		],
		[//39 Mini Splatling
			[1, 1, 1, 1, 2],
			[1, 1, 0, 0, 0]
		],
		[//40 Heavy Splatling
			[1, 1, 0, 0, 0],
			[1, 1, 0, 0, 0],
			[1, 1, 0, 0, 0],
			[0, 1, 1, 0, 0],
			[0, 0, 1, 2, 0],
			[0, 0, 0, 1, 1]
		],
		[//41 Hydra Splatling
			[1, 1, 0, 0, 0, 0],
			[1, 1, 0, 0, 0, 0],
			[1, 1, 1, 1, 1, 2],
			[0, 1, 1, 1, 0, 0]
		],
		[//42 Ballpoint Splatling
			[0, 1, 0, 0, 0],
			[1, 1, 1, 1, 0],
			[1, 1, 1, 2, 1]
		],
		[//43 Nautilus 47
			[1, 1, 0, 0, 0],
			[1, 1, 0, 0, 0],
			[1, 1, 1, 1, 2]
		],
		[//44 Dapple Dualies
			[1, 1, 1],
			[1, 0, 2],
			[0, 1, 1]
		],
		[//45 Splat Dualies
			[0, 1, 1, 1, 1],
			[0, 1, 2, 0, 0],
			[1, 1, 0, 0, 0]
		],
		[//46 Glooga Dualies
			[0, 0, 1, 0],
			[1, 1, 1, 2],
			[0, 1, 1, 0],
			[0, 1, 1, 0]
		],
		[//47 Dualie Squelchers
			[1, 1, 0, 0, 0],
			[1, 1, 1, 1, 1],
			[2, 0, 0, 0, 0],
			[1, 1, 0, 0, 0]
		],
		[//48 Dark Tetra Dualies
			[0, 1, 2, 1],
			[1, 0, 1, 1],
			[0, 1, 1, 0]
		],
		[//49 Splat Brella
			[0, 0, 1, 0, 0],
			[0, 0, 1, 1, 0],
			[0, 1, 2, 1, 1],
			[1, 0, 1, 1, 0],
			[0, 0, 1, 0, 0]
		],
		[//50 Tenta Brella
			[0, 1, 1, 0],
			[0, 0, 1, 1],
			[0, 1, 2, 1],
			[1, 0, 1, 1],
			[0, 1, 1, 0]
		],
		[//51 Undercover Brella
			[0, 1, 0, 0],
			[0, 0, 1, 0],
			[1, 1, 0, 2],
			[1, 0, 1, 0],
			[0, 1, 0, 0]
		],
		[//52 Tri-Stringer
			[1, 2, 1, 1, 1],
			[1, 0, 1, 0, 0],
			[1, 1, 0, 0, 0],
			[1, 0, 0, 0, 0],
			[1, 0, 0, 0, 0]
		],
		[//53 REEF-LUX 450
			[1, 0, 1, 1],
			[0, 2, 1, 0],
			[1, 1, 1, 0],
			[1, 0, 0, 0]
		],
		[//54 Splatana Stamper
			[2],
			[1],
			[1],
			[1],
			[1],
			[1]
		],
		[//55 Splatana Wiper
			[2],
			[1],
			[1],
			[1],
			[1]
		],
		[//56 Splat Bomb
			[0, 2],
			[1, 1]
		],
		[//57 Suction Bomb
			[1],
			[1],
			[2]
		],
		[//58 Burst Bomb
			[2]
		],
		[//59 Sprinkler
			[1, 0, 1],
			[0, 2, 0]
		],
		[//60 Splash Wall
			[1, 1, 1],
			[0, 2, 0],
			[0, 1, 0]
		],
		[//61 Fizzy Bomb
			[1],
			[2],
			[1]
		],
		[//62 Curling Bomb
			[0, 2, 0],
			[1, 1, 1]
		],
		[//63 Autobomb
			[0, 1, 2],
			[1, 1, 1],
			[0, 1, 0]
		],
		[//64 Squid Beakon
			[1, 1, 1],
			[1, 2, 1],
			[0, 1, 0],
			[1, 0, 1]
		],
		[//65 Point Sensor
			[1, 0, 1],
			[0, 2, 0],
			[1, 0, 1]
		],
		[//66 Ink Mine
			[0, 1, 0],
			[1, 0, 1],
			[0, 2, 0]
		],
		[//67 Toxic Mist
			[1, 0, 0],
			[0, 2, 1],
			[0, 1, 1]
		],
		[//68 Angle Shooter
			[0, 0, 2],
			[0, 1, 0],
			[1, 0, 0],
			[0, 1, 0],
			[0, 0, 1]
		],
		[//69 Torpedo
			[0, 1, 0],
			[0, 1, 1],
			[2, 0, 0]
		],
		[//70 Trizooka
			[0, 0, 0, 0, 1, 1],
			[0, 0, 1, 0, 1, 1],
			[0, 1, 0, 1, 0, 0],
			[1, 0, 1, 0, 0, 0],
			[0, 1, 1, 0, 0, 0],
			[0, 0, 1, 0, 0, 0]
		],
		[//71 Big Bubbler
			[0, 0, 1, 1, 0, 0],
			[0, 1, 0, 0, 1, 0],
			[1, 0, 0, 0, 0, 1],
			[1, 0, 0, 0, 0, 1],
			[0, 1, 0, 0, 1, 0],
			[0, 0, 1, 1, 0, 0]
		],
		[//72 Zip Caster
			[0, 0, 0, 0, 0, 1],
			[0, 0, 0, 0, 1, 0],
			[1, 1, 0, 1, 0, 0],
			[1, 1, 1, 0, 0, 0],
			[0, 1, 1, 1, 0, 0],
			[0, 0, 1, 0, 0, 0]
		],
		[//73 Tenta Missiles
			[1, 1, 0, 0, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[0, 1, 0, 0, 1, 0]
		],
		[//74 Ink Storm
			[1, 0, 1, 0, 0],
			[0, 1, 1, 1, 1],
			[0, 1, 1, 1, 1],
			[1, 0, 1, 0, 0]
		],
		[//75 Booyah Bomb
			[0, 1, 1, 0],
			[1, 1, 1, 1],
			[1, 1, 1, 1],
			[0, 1, 1, 0]
		],
		[//76 Wave Breaker
			[1, 0, 1, 0, 1],
			[0, 1, 0, 1, 0],
			[1, 0, 0, 0, 1],
			[0, 1, 0, 1, 0],
			[1, 0, 1, 0, 1]
		],
		[//77 Ink Vac
			[1, 1, 0, 0, 0, 1],
			[1, 1, 1, 0, 0, 1],
			[0, 1, 1, 0, 0, 1],
			[0, 0, 0, 1, 1, 0]
		],
		[//78 Killer Wail 5.1
			[0, 0, 1, 0, 0],
			[1, 0, 1, 0, 1],
			[0, 1, 0, 1, 0],
			[0, 1, 0, 1, 0],
			[1, 0, 1, 0, 1],
			[0, 0, 1, 0, 0]
		],
		[//79 Inkjet
			[1, 1, 1, 1, 1, 1],
			[1, 0, 1, 1, 0, 1],
			[0, 0, 1, 1, 0, 0]
		],
		[//80 Ultra Stamp
			[0, 0, 0, 1, 1, 0],
			[1, 1, 1, 1, 1, 1],
			[0, 0, 1, 1, 1, 1]
		],
		[//81 Crab Tank
			[0, 1, 0, 0, 1, 0],
			[0, 0, 1, 1, 0, 0],
			[0, 1, 0, 0, 1, 0],
			[1, 0, 0, 0, 0, 1],
			[1, 1, 0, 0, 1, 1]
		],
		[//82 Reefslider
			[0, 0, 1, 0, 0, 0],
			[0, 1, 1, 1, 0, 1],
			[1, 1, 1, 1, 1, 1],
			[0, 0, 1, 0, 0, 0]
		],
		[//83 Triple Inkstrike
			[0, 0, 1, 1, 0, 0],
			[0, 0, 1, 1, 0, 0],
			[1, 1, 0, 0, 1, 1],
			[1, 1, 0, 0, 1, 1]
		],
		[//84 Tacticooler
			[0, 1, 1, 1, 0],
			[0, 1, 0, 1, 0],
			[1, 0, 1, 0, 1],
			[0, 1, 1, 1, 0],
			[0, 0, 1, 0, 0]
		],
		[//85 Sheldon
			[0, 1, 1, 1, 0],
			[1, 1, 1, 1, 1],
			[1, 0, 1, 0, 1],
			[0, 2, 0, 1, 0]
		],
		[//86 Gnarly Eddy
			[0, 1, 1, 2, 0],
			[1, 0, 1, 0, 1],
			[1, 1, 1, 1, 1],
			[1, 0, 1, 0, 0],
			[0, 1, 1, 0, 0]
		],
		[//87 Jel La Fleur
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[0, 1, 1, 1, 0],
			[1, 0, 2, 0, 1],
			[0, 1, 0, 1, 0]
		],
		[//88 Mr. Coco
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[0, 1, 1, 1, 0],
			[1, 1, 1, 1, 1],
			[2, 0, 1, 0, 1]
		],
		[//89 Harmony
			[0, 1, 1, 1, 0, 0],
			[0, 1, 1, 1, 1, 0],
			[0, 0, 1, 2, 0, 0],
			[0, 1, 0, 0, 1, 0],
			[0, 1, 0, 0, 1, 0],
			[1, 0, 0, 0, 0, 1]
		],
		[//90 Murch
			[0, 1, 0, 1, 0],
			[1, 0, 1, 0, 1],
			[0, 1, 0, 1, 0],
			[1, 0, 2, 0, 1],
			[0, 1, 0, 1, 0]
		],
		[//91 Mr. Grizz
			[0, 0, 1, 0, 0],
			[0, 2, 0, 0, 0],
			[1, 0, 1, 0, 0],
			[1, 1, 1, 0, 0],
			[1, 1, 1, 1, 1],
			[0, 0, 1, 0, 1]
		],
		[//92 Marigold
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[1, 0, 1, 0, 1],
			[1, 1, 2, 1, 1],
			[0, 1, 1, 1, 0]
		],
		[//93 Smallfry
			[2, 0],
			[1, 1]
		],
		[//94 Cuttlefish
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[0, 1, 1, 1, 0],
			[1, 0, 2, 0, 1]
		],
		[//95 Captain
			[0, 1, 1, 1, 0, 0, 0],
			[0, 1, 1, 1, 1, 0, 0],
			[1, 1, 2, 1, 0, 1, 0],
			[0, 0, 1, 0, 0, 0, 1],
			[0, 0, 0, 1, 0, 0, 0],
			[0, 0, 0, 0, 1, 0, 0],
		],
		[//96 Callie
			[1, 1, 0, 0, 0],
			[1, 1, 1, 1, 0],
			[0, 1, 1, 2, 0],
			[0, 0, 1, 0, 1],
			[1, 0, 1, 0, 0],
			[0, 1, 0, 1, 0]
		],
		[//97 Marie
			[0, 0, 0, 1, 1],
			[0, 1, 1, 1, 1],
			[0, 2, 1, 1, 0],
			[1, 0, 1, 0, 0],
			[0, 0, 1, 0, 1],
			[0, 1, 0, 1, 0]
		],
		[//98 Shiver
			[0, 0, 1, 0, 0],
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[2, 0, 1, 0, 1],
			[1, 1, 0, 1, 1],
			[0, 1, 1, 1, 0],
			[0, 1, 0, 1, 0]
		],
		[//99 Frye
			[0, 1, 0, 1, 0],
			[0, 1, 1, 1, 0],
			[1, 0, 1, 0, 2],
			[1, 1, 0, 1, 1],
			[0, 1, 0, 1, 0],
			[0, 1, 0, 1, 0],
			[0, 0, 1, 0, 0]
		],
		[//100 Big Man
			[0, 1, 0, 0, 1, 0],
			[1, 0, 1, 1, 1, 0],
			[0, 1, 1, 1, 0, 0],
			[0, 1, 1, 1, 0, 1],
			[1, 1, 0, 0, 2, 0],
			[0, 0, 0, 1, 0, 0]
		],
		[//101 Judd
			[0, 1, 0, 1, 0],
			[1, 1, 1, 1, 1],
			[1, 0, 1, 0, 1],
			[1, 1, 0, 2, 1]
		],
		[//102 Li'l Judd
			[1, 0, 1],
			[1, 1, 1],
			[1, 1, 2]
		],
		[//103 SquidForce
			[0, 0, 1, 0, 0],
			[0, 0, 1, 0, 0],
			[1, 1, 1, 1, 1],
			[0, 0, 1, 2, 0],
			[0, 0, 1, 0, 0]
		],
		[//104 Zink
			[0, 1, 1, 1, 1],
			[0, 0, 1, 1, 1],
			[0, 1, 0, 1, 1],
			[1, 0, 2, 0, 1],
			[0, 1, 0, 0, 0]
		],
		[//105 Krak-On
			[0, 0, 2, 1, 0, 0],
			[0, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 0],
			[0, 0, 1, 1, 0, 0]
		],
		[//106 Rockenberg
			[1, 0, 1],
			[1, 2, 0],
			[1, 0, 1],
			[1, 1, 1]
		],
		[//107 Zekko
			[0, 0, 1, 0, 0],
			[1, 1, 2, 1, 1],
			[1, 1, 1, 1, 1],
			[0, 0, 1, 0, 0]
		],
		[//108 Forge
			[0, 1, 1, 1],
			[1, 1, 1, 0],
			[2, 1, 0, 0],
			[1, 0, 0, 0]
		],
		[//109 Firefin
			[0, 0, 2, 0],
			[0, 0, 0, 1],
			[0, 1, 1, 1],
			[1, 1, 1, 1]
		],
		[//110 Skalop
			[0, 2, 0, 1, 0],
			[1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1],
			[0, 1, 0, 1, 0]
		],
		[//111 Splash Mob
			[1, 1, 2, 1, 0, 1],
			[1, 1, 0, 1, 1, 1]
		],
		[//112 Inkline
			[1, 1, 2, 1, 1],
			[1, 1, 0, 1, 1],
			[1, 0, 0, 0, 1]
		],
		[//113 Tentatek
			[0, 2],
			[1, 0]
		],
		[//114 Takoroka
			[1, 1, 2, 0, 1, 0],
			[0, 1, 1, 1, 1, 1],
			[1, 1, 1, 0, 1, 0]
		],
		[//115 Annaki
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[0, 1, 1, 1, 0],
			[0, 1, 2, 1, 0],
			[1, 0, 0, 0, 1]
		],
		[//116 Enperry
			[0, 0, 0, 1, 0],
			[1, 0, 2, 1, 1],
			[0, 1, 1, 1, 0],
			[1, 1, 1, 1, 1]
		],
		[//117 Toni Kensa
			[1, 0, 0],
			[1, 1, 1],
			[1, 0, 0],
			[1, 2, 1]
		],
		[//118 Barazushi
			[0, 0, 0, 1],
			[0, 0, 1, 1],
			[0, 1, 0, 2],
			[1, 1, 1, 1]
		],
		[//119 Emberz
			[0, 1, 0, 1, 0],
			[1, 0, 0, 0, 1],
			[0, 1, 0, 1, 0],
			[0, 0, 2, 0, 0],
			[0, 1, 0, 1, 0]
		],
		[//120 Octotrooper
			[0, 1, 0],
			[0, 2, 1],
			[1, 1, 1],
			[0, 1, 1]
		],
		[//121 Shielded Octotrooper
			[0, 0, 1, 0],
			[1, 0, 2, 1],
			[1, 1, 1, 1],
			[1, 0, 1, 1]
		],
		[//122 Twintacle Octotrooper
			[1, 1, 1, 0, 1],
			[0, 0, 2, 1, 0],
			[0, 1, 1, 1, 0],
			[0, 0, 1, 1, 0]
		],
		[//123 Octohopper
			[0, 1, 0],
			[0, 2, 1],
			[1, 1, 1],
			[0, 1, 1],
			[0, 1, 0],
			[0, 1, 0]
		],
		[//124 Octocopter
			[1, 0, 1],
			[0, 2, 0],
			[0, 1, 0]
		],
		[//125 Octobomber
			[0, 0, 1, 0, 0, 0],
			[0, 1, 1, 1, 0, 0],
			[1, 1, 1, 1, 1, 0],
			[0, 1, 1, 1, 0, 2],
		],
		[//126 Octodisco
			[0, 0, 1, 0, 0],
			[1, 1, 1, 1, 1],
			[1, 0, 0, 0, 1],
			[2, 0, 0, 0, 1],
			[1, 0, 0, 0, 1]
		],
		[//127 Octopod
			[2, 1]
		],
		[//128 Oversized Octopod
			[1, 1, 1, 1],
			[1, 1, 1, 1],
			[0, 2, 0, 0],
			[1, 0, 1, 0]
		],
		[//129 Tentakook
			[0, 0, 0, 1],
			[0, 0, 1, 1],
			[1, 2, 0, 0],
			[1, 1, 0, 0]
		],
		[//130 Octosniper
			[0, 0, 1, 1],
			[0, 0, 1, 0],
			[0, 0, 1, 2],
			[1, 1, 1, 1],
			[0, 0, 1, 0]
		],
		[//131 Octocommander
			[0, 0, 1, 1, 0],
			[0, 0, 1, 0, 0],
			[0, 0, 1, 2, 0],
			[1, 1, 1, 1, 1],
			[0, 0, 1, 0, 1]
		],
		[//132 Octomissile
			[0, 1, 0, 0],
			[2, 1, 1, 1]
		],
		[//133 Octozeppelin
			[0, 1, 0, 0],
			[2, 1, 1, 1],
			[1, 1, 1, 1]
		],
		[//134 Squee-G
			[1, 1, 1],
			[1, 1, 1],
			[0, 2, 0],
			[1, 0, 0]
		],
		[//135 Octostamp
			[1, 1],
			[2, 1]
		],
		[//136 Amped Octostamp
			[0, 0, 1, 0, 0],
			[0, 1, 0, 1, 0],
			[1, 0, 2, 0, 1],
			[0, 1, 0, 1, 0],
			[0, 0, 1, 0, 0]
		],
		[//137 Flooder
			[1, 2, 1, 1, 1],
			[1, 0, 1, 0, 1],
			[1, 0, 1, 0, 1],
			[1, 0, 1, 0, 1]
		],
		[//138 Octoballer
			[1, 0, 0, 0],
			[0, 1, 1, 0],
			[1, 1, 1, 1],
			[1, 1, 1, 1],
			[0, 1, 2, 0]
		],
		[//139 Octoling
			[0, 1, 0, 1, 0],
			[0, 1, 1, 1, 0],
			[0, 1, 2, 1, 0],
			[1, 0, 1, 0, 1]
		],
		[//140 DJ Octavio
			[0, 1, 0, 0, 0, 0],
			[1, 1, 1, 1, 0, 0],
			[0, 1, 1, 1, 0, 1],
			[0, 1, 1, 2, 1, 0],
			[0, 0, 0, 1, 0, 1],
			[0, 0, 1, 0, 1, 0]
		],
		[//141 Chum
			[0, 1, 0],
			[2, 1, 0],
			[0, 1, 1]
		],
		[//142 Cohock
			[0, 0, 1, 0],
			[0, 1, 1, 0],
			[2, 1, 1, 0],
			[0, 1, 1, 1]
		],
		[//143 Snatcher
			[0, 1, 0],
			[1, 1, 0],
			[0, 1, 0],
			[1, 0, 2]
		],
		[//144 Steelhead
			[0, 2, 0, 0, 0],
			[1, 1, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[0, 0, 1, 1, 0],
			[0, 0, 1, 1, 1]
		],
		[//145 Steel Eel
			[1, 2, 1, 1, 1, 1, 0],
			[1, 1, 0, 0, 0, 1, 1]
		],
		[//146 Scrapper
			[0, 0, 1, 2, 0, 0],
			[1, 0, 1, 1, 0, 1],
			[0, 1, 1, 1, 1, 0]
		],
		[//147 Stinger
			[2, 1],
			[0, 1],
			[0, 1],
			[0, 1],
			[0, 1],
			[0, 1]
		],
		[//148 Maws
			[0, 1, 0, 0, 1, 0],
			[1, 1, 0, 0, 1, 1],
			[1, 1, 1, 1, 2, 1]
		],
		[//149 Drizzler
			[0, 0, 1, 0, 0],
			[0, 1, 1, 1, 0],
			[1, 1, 1, 1, 1],
			[1, 0, 2, 0, 1]
		],
		[//150 Flyfish
			[1, 1, 0, 1, 1],
			[1, 1, 2, 1, 1],
			[1, 1, 0, 1, 1]
		],
		[//151 Fish Stick
			[1, 1, 0, 1, 1],
			[0, 0, 1, 0, 0],
			[0, 0, 1, 0, 0],
			[0, 0, 1, 0, 0],
			[0, 0, 2, 0, 0],
			[0, 0, 1, 0, 0]
		],
		[//152 Flipper-Flopper
			[0, 1, 0, 1],
			[0, 0, 1, 0],
			[1, 1, 1, 0],
			[0, 1, 1, 1],
			[0, 2, 1, 0],
			[0, 0, 1, 0]
		],
		[//153 Slammin' Lid
			[0, 0, 2, 0, 0],
			[1, 1, 1, 1, 1]
		],
		[//154 Big Shot
			[0, 0, 0, 1, 0, 0],
			[0, 0, 1, 1, 1, 0],
			[2, 1, 0, 1, 1, 0],
			[1, 1, 0, 1, 1, 1]
		],
		[//155 Goldie
			[0, 0, 1, 0, 0],
			[1, 1, 0, 0, 0],
			[0, 1, 0, 1, 0],
			[1, 1, 2, 0, 1],
			[0, 1, 1, 1, 0]
		],
		[//156 Griller
			[0, 1, 1, 1, 1],
			[2, 1, 1, 1, 1],
			[0, 0, 1, 1, 0],
			[0, 1, 0, 0, 1]
		],
		[//157 Mothership
			[1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1],
			[0, 0, 1, 0, 0],
			[0, 0, 2, 0, 0]
		],
		[//158 Mudmouth
			[0, 1, 0],
			[1, 0, 1],
			[1, 0, 1],
			[1, 0, 1],
			[1, 2, 1],
			[1, 1, 1]
		],
		[//159 Zapfish
			[0, 0, 0, 1],
			[0, 1, 1, 0],
			[0, 1, 2, 1],
			[1, 0, 1, 1]
		],
		[//160 Tower Control
			[0, 0, 1, 0, 0],
			[0, 0, 1, 0, 0],
			[1, 1, 2, 1, 1],
			[0, 1, 1, 1, 0],
			[0, 1, 1, 1, 0]
		],
		[//161 Rainmaker
			[0, 0, 1, 0, 0],
			[0, 1, 0, 0, 0],
			[0, 1, 2, 1, 1],
			[1, 1, 1, 1, 0],
			[0, 0, 0, 1, 1]
		],
		[//162 Power Clam
			[0, 2, 1, 1, 0],
			[1, 1, 1, 1, 1],
			[0, 1, 1, 1, 0]
		]
	]
	
	special_points = [5, 4, 2, 3, 3, 
	3, 3, 2, 4, 4, 
	4, 3, 3, 4, 3, 
	3, 4, 3, 3, 3, 
	3, 4, 5, 3, 3, 
	4, 3, 3, 4, 4, 
	5, 3, 4, 3, 2, 
	3, 4, 4, 3, 5, 
	5, 4, 4, 3, 3, 
	4, 4, 3, 4, 5, 
	3, 4, 4, 3, 2, 
	1, 1, 1, 1, 2, 
	1, 2, 3, 4, 2, 
	2, 2, 2, 2, 3, 
	3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 
	3, 3, 3, 3, 5, 
	5, 5, 5, 5, 5, 
	5, 5, 1, 5, 6, 
	5, 5, 6, 6, 6, 
	5, 3, 4, 4, 5, 
	4, 5, 4, 4, 5, 
	4, 4, 1, 5, 5, 
	5, 3, 4, 4, 3, 
	4, 4, 4, 2, 5, 
	5, 1, 4, 3, 4, 
	5, 2, 4, 3, 2, 
	4, 5, 5, 4, 6, 
	2, 4, 3, 5, 4, 
	4, 3, 5, 5, 5, 
	4, 5, 3, 5, 5, 
	5, 5, 5, 4, 5, 
	5, 4]
	
	
	
	
	
	
	card_names = [
	"Hero Shot",
	"Sploosh-o-matic",
	"Splattershot Jr.",
	"Splash-o-matic",
	"Aerospray MG",
	"Splattershot",
	".52 Gal",
	"N-ZAP '85",
	"Splattershot Pro",
	".96 Gal",
	"Jet Squelcher",
	"Luna Blaster",
	"Blaster",
	"Range Blaster",
	"Clash Blaster",
	"Rapid Blaster",
	"Rapid Blaster Pro",
	"L-3 Nozzlenose",
	"H-3 Nozzlenose",
	"Squeezer",
	"Carbon Roller",
	"Splat Roller",
	"Dynamo Roller",
	"Flingza Roller",
	"Inkbrush",
	"Octobrush",
	"Classic Squiffer",
	"Splat Charger",
	"Splatterscope",
	"E-liter 4K",
	"E-liter 4K Scope",
	"Bamboozler 14 Mk I",
	"Goo Tuber",
	"Slosher",
	"Tri-Slosher",
	"Sloshing Machine",
	"Bloblobber",
	"Explosher",
	"Mini Splatling",
	"Heavy Splatling",
	"Hydra Splatling",
	"Ballpoint Splatling",
	"Nautilus 47",
	"Dapple Dualies",
	"Splat Dualies",
	"Glooga Dualies",
	"Dualie Squelchers",
	"Dark Tetra Dualies",
	"Splat Brella",
	"Tenta Brella",
	"Undercover Brella",
	"Tri-Stringer",
	"REEF-LUX 450",
	"Splatana Stamper",
	"Splatana Wiper",
	"Splat Bomb",
	"Suction Bomb",
	"Burst Bomb",
	"Sprinkler",
	"Splash Wall",
	"Fizzy Bomb",
	"Curling Bomb",
	"Autobomb",
	"Squid Beakon",
	"Point Sensor",
	"Ink Mine",
	"Toxic Mist",
	"Angle Shooter",
	"Torpedo",
	"Trizooka",
	"Big Bubbler",
	"Zip Caster",
	"Tenta Missiles",
	"Ink Storm",
	"Booyah Bomb",
	"Wave Breaker",
	"Ink Vac",
	"Killer Wail 5.1",
	"Inkjet",
	"Ultra Stamp",
	"Crab Tank",
	"Reefslider",
	"Triple Inkstrike",
	"Tacticooler",
	"Sheldon",
	"Gnarly Eddy",
	"Jel La Fleur",
	"Mr. Coco",
	"Harmony",
	"Murch",
	"Mr. Grizz",
	"Marigold",
	"Smallfry",
	"Cuttlefish",
	"Captain",
	"Callie",
	"Marie",
	"Shiver",
	"Frye",
	"Big Man",
	"Big Man",
	"Li'l Judd",
	"SquidForce",
	"Zink",
	"Krak-On",
	"Rockenberg",
	"Zekko",
	"Forge",
	"Firefin",
	"Skalop",
	"Splash Mob",
	"Inkline",
	"Tentatek",
	"Takoroka",
	"Annaki",
	"Enperry",
	"Toni Kensa",
	"Barazushi",
	"Emberz",
	"Octotrooper",
	"Shielded Octotrooper",
	"Twintacle Octotrooper",
	"Octohopper",
	"Octocopter",
	"Octobomber",
	"Octodisco",
	"Octopod",
	"Oversized Octopod",
	"Tentakook",
	"Octosniper",
	"Octocommander",
	"Octomissile",
	"Octozeppelin",
	"Squee-G",
	"Octostamp",
	"Amped Octostamp",
	"Flooder",
	"Octoballer",
	"Octoling",
	"DJ Octavio",
	"Chum",
	"Cohock",
	"Snatcher",
	"Steelhead",
	"Steel Eel",
	"Scrapper",
	"Stinger",
	"Maws",
	"Drizzler",
	"Flyfish",
	"Fish Stick",
	"Flipper-Flopper",
	"Slammin' Lid",
	"Big Shot",
	"Goldie",
	"Griller",
	"Mothership",
	"Mudmouth",
	"Zapfish",
	"Tower Control",
	"Rainmaker",
	"Power Clam",
	]
}