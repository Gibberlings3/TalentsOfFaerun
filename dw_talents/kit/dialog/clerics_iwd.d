//////// Crieck of Bane ////////////

// add a new block

APPEND dcrieck 

IF ~~ BEGIN crieck_bane
SAY @0 /* If you think that creates a bond between us, you need to study the Black Lord's teachings more! Adran, Shelhai, kill them. If they don't have anything worthwhile on them, we can use their bodies to set off traps. */ 
IF ~~ THEN DO ~Enemy()~ EXIT
END

END

// link to it

EXTEND_BOTTOM dcrieck 2
IF ~Global("dw-bane_xvim-kit","GLOBAL",1)~ THEN REPLY @1 /* Stand down, fool, before your superior in the church! I am <GABBER> of Bane! */ GOTO crieck_bane
END

///// Norlinor and Moradin

// add a new block

APPEND dnorlino

IF ~~ BEGIN norlinor_moradin
SAY @2 /* Yes... I see the Soul Forger's blessing upon you. Forgive me, <BROTHERSISTER>... it has been so long. What brings you to my ancient temple? */
COPY_TRANS dnorlino 1
END

END

//link to it

EXTEND_BOTTOM dnorlino 0
IF ~Global("dw-moradin-kit","GLOBAL",1)~ THEN REPLY @3 /* This is a temple of my lord, Moradin! I would never harm such a place. */ GOTO norlinor_moradin
END

///// Egenia and Ilmater

// add a new block

APPEND degenia

IF ~~ BEGIN egenia_ilmater
SAY @4 /* It is a joy to see another of the faith in this awful place. I'm Egenia of Kuldahar. When I learned that people were being abducted from our town, I decided to go into the mountains and wait for these vermin to come take me. */
COPY_TRANS degenia 1
END

IF ~~ BEGIN egenia_ilmater_2
SAY @5 /* The Talonites  are a foul bunch. They worship Talona, a goddess of venom and pestilence. Allied with the minions of many reptilian gods, I am not surprised to have found them here. They strike out at us Ilmaterians in the name of their goddess's superior, Loviatar, the Maiden of Pain. As you know, she is the Crying God's chief enemy. */
IF ~~ THEN REPLY #2172 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
IF ~~ THEN REPLY #2173 EXIT
END

END

// block links to the 'doesn't know Ilmater' block

ADD_TRANS_TRIGGER degenia 6 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1
ADD_TRANS_TRIGGER degenia 9 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1

// links

EXTEND_BOTTOM degenia 0
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @6 /* Your faith does you credit. I see you serve Ilmater, as do I. */ DO ~AddXP2DA("Level_7_Hard")
DisplayStringNoNameDlg(Myself,6249)
SetGlobal("Egenia_Talked","GLOBAL",1)
AddJournalEntry(4357,INFO)~
GOTO egenia_ilmater
END

EXTEND_BOTTOM degenia 6
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @7 /* What can you tell me about these Talonites? */ GOTO egenia_ilmater_2 
END

EXTEND_BOTTOM degenia 9
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY #2178 GOTO egenia_ilmater_2 
END

//// Calliana and Ilmater

APPEND dcallian
IF ~~ BEGIN callian_4_sub
SAY @8 /* Your faith comforts me, <BROTHERSISTER>. I will tell you what I can. */
IF ~~ THEN GOTO 4
END

IF ~~ BEGIN callian_10_sub
SAY @8 /* Your faith comforts me, <BROTHERSISTER>. I will tell you what I can. */
IF ~~ THEN GOTO 10
END
END

// replace 'can I help'

ADD_TRANS_TRIGGER dcallian 1 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1 2
ADD_TRANS_TRIGGER dcallian 2 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1 2

EXTEND_BOTTOM dcallian 1 2
IF ~Global("dw-ilmater-kit","GLOBAL",1)
	GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)
	Global("SPRITE_IS_DEADEgenia","GLOBAL",0)
	GlobalGT("SPRITE_IS_DEADTalonite","GLOBAL",9)~ 
THEN REPLY @9 /* Sister, I am a servant of the Crying God myself. Tell me of Kuldahar's troubles. If I can ease their suffering with my own, I will gladly do so. */ DO ~SetGlobal("Know_Egenia","GLOBAL",1)~
GOTO callian_10_sub
  IF ~  Global("dw-ilmater-kit","GLOBAL",1)
		Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~
THEN REPLY @9 /* Sister, I am a servant of the Crying God myself. Tell me of Kuldahar's troubles. If I can ease their suffering with my own, I will gladly do so. */ DO ~SetGlobal("Know_Egenia","GLOBAL",1)~
GOTO callian_4_sub
END

// replace 'farewell'

ADD_TRANS_TRIGGER dcallian 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER dcallian 3 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 3
ADD_TRANS_TRIGGER dcallian 4 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 3
ADD_TRANS_TRIGGER dcallian 5 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER dcallian 6 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1
ADD_TRANS_TRIGGER dcallian 7 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER dcallian 8 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER dcallian 9 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 3
ADD_TRANS_TRIGGER dcallian 10 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2


EXTEND_BOTTOM dcallian 0 3 4 5 6 7 8 9 10
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @10 /* May merciful Ilmater watch over you, Sister. Farewell. */ EXIT
END

/// Gus and Ilmater

// turn off the flippant 'you priests of Ilmater' line

ADD_TRANS_TRIGGER dgus 5 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 0

// Ferg and Ilmater

/// turn off various snark

ADD_TRANS_TRIGGER dferg  0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER dferg  1 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER dferg  5 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 0 1
ADD_TRANS_TRIGGER dferg  9 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1
ADD_TRANS_TRIGGER dferg 10 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1 2

// add a more positive remark

APPEND dferg 
IF ~~ BEGIN ferg_ilmater_tavern
SAY @11 /* Forgive me, <BROTHERSISTER> - I had not realised that you were of the faith. I... will think deeply on your words. Is there any other aid I can render to you? */
IF ~~ REPLY @12 /* Could you tell me what other services I might find hereabouts? */ GOTO 2
IF ~~ REPLY @13 /* Farewell. */ EXIT
END

END

EXTEND_BOTTOM dferg 5
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @14 /* Ferg, you must deepen your understanding of our faith. Those who indulge often do so because their suffering is great. If we are to follow our lord's teachings, we must not shun the places where his mercy is needed. */ GOTO ferg_ilmater_tavern
END

//// Poquelin and Ilmater

ADD_TRANS_TRIGGER dpoqueli 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2

EXTEND_BOTTOM dpoqueli 0
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY #15490 GOTO 7
END

