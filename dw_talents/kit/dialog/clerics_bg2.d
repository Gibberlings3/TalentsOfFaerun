//////// barl and Talona (journal update only) ///////

ADD_TRANS_TRIGGER barl 3 ~!Global("dw-talona-kit","GLOBAL",1)~

EXTEND_BOTTOM barl 3
IF ~Global("dw-talona-kit","GLOBAL",1)~ THEN DO ~SetGlobal("BarlAttacks","GLOBAL",1)~ UNSOLVED_JOURNAL @0 /* The temple superior at the Waukeenar temple agreed to search Barl's chambers and returned to report that he had found alchemical equipment - and, amusingly, a holy symbol to Talona, my Lady of Poison. Barl as much as admitted his guilt and attacked us. So be it - one so bumbling as he deserves death. If only these fool halflings knew the truth of my own faith! */ EXIT
END

//// Aerie and Baervan

// close off 'who's Baervan' and the friendly (but not Baervan-following) reply to Aerie asking if it's strange that she follows him

ADD_TRANS_TRIGGER baerie 155 ~!Global("dw-baervan-kit","GLOBAL",1)~ DO 0
ADD_TRANS_TRIGGER baerie 162 ~!Global("dw-baervan-kit","GLOBAL",1)~ DO 0

// new blocks

APPEND baerie

IF ~~ THEN BEGIN aerie_baervan_gnome_priest
SAY @1 /* Truly?... Well, after all, Baervan is a gnomish god. Perhaps it seems presumptuous to you that an elf should follow his teachings, but after I lost my wings, I could not bear to turn to my winged goddess, Aerie Faenya. I was filled with utter loss. It was Quayle who consoled me and renewed my faith. */
IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN aerie_baervan_elf_priest
SAY @2 /* Truly? I suppose it was silly to think that other than the gnomes, I was the only one in all the wide world who had come to love the ways of Baervan. He must have meant us to meet like this. */
=
@3 /* After I lost my wings, I could not bear to turn to my winged goddess, Aerie Faenya. I was filled with utter loss. It was Quayle who consoled me and renewed my faith. */
IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN aerie_baervan_not_odd
SAY @4 /* Thank you for saying so, <CHARNAME>. I think it is a little odd, but who am I to argue with another of his clerics? Regardless, I am a flightless girl lost in a strange world. I will take what comfort I can get. */
IF ~~ THEN GOTO 163
END

END

// routes into those new blocks

EXTEND_BOTTOM baerie 155 
IF ~Global("dw-baervan-kit","GLOBAL",1)Race(Player1,GNOME)~ THEN REPLY @5 /* I understand. I too follow the Masked Leaf. */ GOTO aerie_baervan_gnome_priest
IF ~Global("dw-baervan-kit","GLOBAL",1)!Race(Player1,GNOME)~ THEN REPLY @5 /* I understand. I too follow the Masked Leaf. */ GOTO aerie_baervan_elf_priest
END

EXTEND_BOTTOM baerie 162
IF ~Global("dw-baervan-kit","GLOBAL",1)~ THEN REPLY @6 /* Of course not. Baervan and Chiktikka will always be there to love and protect one who walks in their gentle ways. */ GOTO aerie_baervan_not_odd
END

///// Viconia and Shar //////

// Shar-specific alternate route out of 'why didn't you worship Vhaerun/Ghaunadar'

APPEND bviconi
IF ~~ BEGIN viconia_shar_why_worship
SAY @7 /* You are very insightful, <CHARNAME>... but then, you too know the mysteries of Nightsinger. Yes, I have lost so much: my faith, my home, even the darkness itself.... Shar has returned some of it to me, and I am grateful to her. */
COPY_TRANS bviconi 264
END
END

EXTEND_BOTTOM bviconi 261
IF ~Global("dw-shar-kit","GLOBAL",1)~ THEN REPLY @8 /* But Shar is mistress of darkness and loss, and you have lost so much. */ GOTO viconia_shar_why_worship
END

//// the Solar and Cyric ////

INTERJECT_COPY_TRANS finsol01 18 "%var_solar_cyric_1%"
== finsol01 IF ~Global("dw-cyric-kit","GLOBAL",1)~ THEN
@9 /* As a mortal you have given him your allegiance, but once you ascend to godhood he may see you as a rival and a threat. */
END

INTERJECT_COPY_TRANS finsol01 21 "%var_solar_cyric_2%"
== finsol01 IF ~Global("dw-cyric-kit","GLOBAL",1)~ THEN
@9 /* As a mortal you have given him your allegiance, but once you ascend to godhood he may see you as a rival and a threat. */
END

///// Cyric and Cyric (!) /////

/// largely adapted from Divine Remix

ADD_STATE_TRIGGER chalcy01 2 ~!Global("dw-cyric-kit","GLOBAL",1)~

APPEND chalcy01

IF  ~Global("dw-cyric-kit","GLOBAL",1)Global("BeginChallenge4","GLOBAL",3)~ THEN BEGIN a1
  SAY @10 /* You know who I am, of course.  You feel my gaze as you pray at night. */
    = @11 /* Recently I've recovered from a little bout of madness... only to find the seedlings of the former holder of my office everywhere, like weeds. */
    = @12 /* Things are starting to resolve themselves, and there's only a bare few of the spawn left.  Bhaalspawn like yourself... very powerful, very resourceful mortals.  Like I once was.  You can imagine my concern, hm? */
    IF ~~ THEN REPLY @13 /* You think I will challenge you for the portfolio of Murder. */ GOTO a2
    IF ~~ THEN REPLY @14 /* You wish to ensure that one of your own faithful prevails. */ GOTO a3
END

IF ~~ THEN BEGIN a2
  SAY @15 /* Perhaps.  Many eventualities have crossed my mind.  That is why I am here: to gauge your loyalty--or your threat--to me. */
  IF ~~ THEN REPLY #72286 /* ~If I was a threat to you, why wouldn't you just kill me?~ */ GOTO a4
END

IF ~~ THEN BEGIN a3
  SAY @16 /* Perhaps.  Many eventualities have crossed my mind.  I am here to gauge your loyalty--or your threat--to me. */
  IF ~~ THEN REPLY #72286 /* ~If I was a threat to you, why wouldn't you just kill me?~ */ GOTO a4
END

IF ~~ THEN BEGIN a4
  SAY #72289 /* ~Ahhhh, if only things were so easy as that.  But if I get involved in the whole Bhaalspawn mess, then my own opponents amongst the gods would intervene.  Mystra... or Kelemvor, perhaps.~ [CYRIC05] */
    = #72291 /* ~And it seems that Ao, the Overfather, has an interest in this as well... which is very odd.  He wishes this little climactic end for the Bhaalspawn to play itself out without interference from the rest of us.~ [CYRIC06] */
    = #72292 /* ~And so I, the great Cyric, am restricted to watching and observing.  And yet if there is anyone who should feel threatened by a child of the former Lord of Murder, it is *me*.  There is just no justice anymore.~ [CYRIC07] */
    IF ~~ THEN REPLY @17 /* Then you should fear me, Cyric.  I'm coming for you.  I *will* achieve my destiny. */ GOTO a5
    IF ~~ THEN REPLY @18 /* My loyalty is yours, my Lord;  I will defeat the other Bhaalspawn in your name! */ GOTO a6
    IF ~~ THEN REPLY @19 /* I have nothing to say.  You know me, and can form your own conclusions. */ GOTO a6
END

IF ~~ THEN BEGIN a5
  SAY #72312 /* ~I see.  I would have expected you to say as much, <CHARNAME>.~ [CYRIC09] */
    = @20 /* Lies and deception... that is my portfolio, and that is all I expect from my followers.  I wouldn't have it any other way.  Unfortunately, though, you have outgrown yourself. */
	= 
	@21 /* I have half a mind to cast you from my faith and strip you of your power... but alas, you are half a god now yourself, and have wormed your way within my portfolio too tenaciously to discard you without great effort and strife. */
	IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN a6
  SAY #72312 /* ~I see.  I would have expected you to say as much, <CHARNAME>.~ [CYRIC09] */
    = @22 /* Lies and deception... that is my portfolio, and that is all I expect from my followers.  I wouldn't have it any other way. */
    = @23 /* If you get far enough, I will grant you the realm of Murder, and you will sit as my ally.  It is not a position that has lasted well in the past, but perhaps you can change that.  In any case, rest assured that the moment you betray me even Ao will not prevent me stripping it from you. */
    = #72319 /* ~I think you need to be tested.  That *is* what you created these little rooms for, isn't it?  To test yourself?  Mystra and Ao couldn't fault me for aiding you towards that end, now, could they?~ [CYRIC15] */
    = @24 /* So, <CHARNAME>, *are* you worthy of my favour?  Through strife we learn our true merit; time, I think, to test your mettle against some of my other servants.  Perhaps we will meet again.  I suggest you prepare yourself. */
    IF ~~ THEN DO ~SetGlobal("BeginChallenge4","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("cutch4c")~ EXIT
END

END

//// Athkatlan priest in slums and Ilmater /////////////

// general engagement

ADD_TRANS_TRIGGER slilmat 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1

APPEND slilmat

IF ~~ THEN BEGIN slilmat_ilmater_1
SAY @25 /* Athkatla is a harsh place, and our god's compassion is much needed. I can only advise you to follow the teachings, <PRO_BROTHERSISTER>, and bring what mercy and aid you can for the suffering people of the city. Take their burdens upon your shoulders; you will bend, but if Ilmater favors you, you will not break. */
COPY_TRANS slilmat 3
END

END

EXTEND_BOTTOM slilmat 0 
IF ~Global("dw-ilmater-kit","GLOBAL",1)Global("%var_ilmater_temple_query%","MYAREA",0)~ THEN REPLY @26 /* I serve the Crying God myself. Is there any advice you can give me? */ DO ~SetGlobal("%var_ilmater_temple_query%","MYAREA",1)~ GOTO slilmat_ilmater_1
END

// Yoshimo 

ADD_TRANS_TRIGGER slilmat 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 3
ADD_TRANS_TRIGGER slilmat 6 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 3

EXTEND_BOTTOM slilmat 0 6
IF ~PartyHasItem("miscbu")Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @27 /* I have the heart of a man who died in shame, brother. I seek your aid - I am too entwined in that man's story myself to trust my judgement alone. */ GOTO 10
END

//// Athkatlan priest in Promenade and Ilmater

// general engagement

ADD_TRANS_TRIGGER wilmat 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 1

APPEND wilmat

IF ~~ THEN BEGIN wilmat_ilmater_1
SAY @28 /* If you walk in the Crying God's path, seek out the children of the city. So many are lost and afraid, in need of endurance and of a respite from suffering. */
COPY_TRANS wilmat 2
END

END

EXTEND_BOTTOM wilmat 0 
IF ~Global("dw-ilmater-kit","GLOBAL",1)Global("%var_ilmater_temple_query%","MYAREA",0)~ THEN REPLY @26 /* I serve the Crying God myself. Is there any advice you can give me? */ DO ~SetGlobal("%var_ilmater_temple_query%","MYAREA",1)~ GOTO wilmat_ilmater_1
END

// Yoshimo

ADD_TRANS_TRIGGER wilmat 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 3

EXTEND_BOTTOM wilmat 0 
IF ~PartyHasItem("miscbu")Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @29 /* I have the heart of a man who died in shame, sister. I seek your aid - I am too entwined in that man's story myself to trust my judgement alone. */ GOTO 4
END

//// Athkatlan priest and Oghma ///////////

// block 'tell me about Oghma'

ADD_TRANS_TRIGGER doghma 0 ~!Global("dw-oghma-kit","GLOBAL",1)~ DO 1
ADD_TRANS_TRIGGER doghma 7 ~!Global("dw-oghma-kit","GLOBAL",1)~ DO 0
ADD_TRANS_TRIGGER doghma 9 ~!Global("dw-oghma-kit","GLOBAL",1)~ DO 0

// new intro block

ADD_STATE_TRIGGER doghma 0 ~!Global("dw-oghma-kit","GLOBAL",1)~

APPEND doghma

IF ~Global("dw-oghma-kit","GLOBAL",1)~ BEGIN doghma_oghma_1
SAY @30 /* Welcome, scholar. Word of your presence in the city has reached our ears, thanks to the beneficence of Oghma. A servant of the Lord of Knowledge is always welcome in this house. What can I provide for you? */
COPY_TRANS_LATE doghma 0
END

END

////// wandering priest and Tempus /////////////

APPEND kpchap01

IF ~~ THEN BEGIN priest_tempus_1
SAY @31 /* I'd heard word that you kept the faith, my <PRO_LADYLORD>, but I'd not dared believe it. I'm honored to preach the word of Tempus under your roof. */
COPY_TRANS kpchap01 7
END

END

EXTEND_BOTTOM kpdomo01 66
IF ~Kit(Player1,OHTEMPUS)~ THEN REPLY @32 /* A follower of Tempus will always be welcome in this keep. The chapel is yours to use, good Bolumir, and glory to the Lord of Battle! */ DO ~AddExperienceParty(15500)IncrementGlobal("KPRevolt","GLOBAL",-1)~ EXTERN kpchap01 priest_tempus_1
END