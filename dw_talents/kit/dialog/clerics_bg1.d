////////// Yeslick and Clangeddin ////////




// block the initial dialog block for Clangeddinites

ADD_STATE_TRIGGER yeslic 1 ~!Global("dw-clangeddin-kit","GLOBAL",1)~

// add a new block

APPEND yeslic 

IF WEIGHT #-1 ~Global("dw-clangeddin-kit","GLOBAL",1)~ BEGIN ~yeslick_clangeddin_intro~
SAY @0 /* Clangeddin be praised - I never thought I'd see another of his priests in these mines again, but I'd recognise his symbol anywhere. The Father of Battle must have sent you, and none too soon - sick to death of bandits, I am! Now you've broken me out of here, we'll fight together in his name and right all manner of past wrongs! */
COPY_TRANS yeslic 1
END

END

// edit the first transition of the new block to use a new line

ALTER_TRANS yeslic
BEGIN yeslick_clangeddin_intro END
BEGIN 0 END
BEGIN
	"REPLY" "%yeslick_reply%" /* ~I'd be honored to have you join us. We've much to overcome.~ */
END


///////////////////// Tiax and Cyric ////////////////////////////////////////



// block the 'who is Cyric' lines

ADD_TRANS_TRIGGER tiax 2  ~!Global("dw-cyric-kit","GLOBAL",1)~ DO 2 3


// add new blocks, responding to 'you serve Cyric' comments

APPEND tiax

IF ~~ BEGIN tiax_cyric_1
SAY @1 /* You too worship the glorious Prince of Lies? Well then, you are well placed to serve Tiax's destiny, despite your insolent tongue! When Cyric lifts Tiax on high, you will play a supporting role, though scarcely an essential one. */
COPY_TRANS_LATE tiax 2
END

IF ~~ BEGIN tiax_cyric_2
SAY @2 /* His favor is clear! Does he not favor me nightly with his wisdom? Is my destiny not his doing? Your idiocy shakes the heavens! And yet, Cyric has decreed that I seek out the services of one such as thyself. Tiax himself—myself—will aid in your quest. In return, when the time is right, your lesser might will forge the way for MY ascension to power. Do you accept this honor? */ 
COPY_TRANS_LATE tiax 1
END

END


// new dialog routes out of the initial chat

EXTEND_TOP tiax 0 1 
IF ~Global("dw-cyric-kit","GLOBAL",1)~ THEN REPLY @3 /* I serve Cyric myself, but I truly doubt that he favors *you* with his prophecies! */ GOTO tiax_cyric_1
IF ~Global("dw-cyric-kit","GLOBAL",1)~ THEN REPLY @4 /* Miserable worm! Do not profane Cyric's name with your idiocy! */ GOTO tiax_cyric_2
END


///////// Ajantis and Helm ////////////////////////

// new friendly block

APPEND ajanti

IF ~~ BEGIN ajantis_helm_1
SAY @5 /* Well met indeed! I am Ajantis, squire paladin of the Most Noble Order of the Radiant Heart, servant to Helm, son of the noble family of Ilvastarr. I am here to hunt down the vile brigands who assault those traveling these roads. What of you, good <PRO_SIRMAAM>? */
COPY_TRANS ajanti 1
END

END

// new dialog route from initial block

EXTEND_TOP ajanti 0
IF ~Global("dw-helm-kit","GLOBAL",1)~ THEN REPLY @6 /* Well met. I am <CHARNAME>, servant of Helm, and I see from your insignia that you too serve the Vigilant One. */ GOTO ajantis_helm_1
END

//////// Nalin and Helm /////////////////////////////////

ADD_STATE_TRIGGER nalin 0 ~!Global("dw-helm-kit","GLOBAL",1)~

APPEND nalin

IF ~Global("dw-helm-kit","GLOBAL",1)!PartyHasItem("MISC65")~ BEGIN nalin_helm_1
SAY @7 /* Welcome to Helm's house, servant of the Vigilant One. His servants are at your disposal. The Vigilant One stands ready to mend thy ailments and so divert the unyielding gaze of the Great Guide... for a modest donation, as I'm sure you understand. */
COPY_TRANS nalin 0
END


END 

///// Watchful Shield priest and Helm /////////////////////

// block Helm-mocking line and normal temple-resources line

ADD_TRANS_TRIGGER prihel 0 ~!Global("dw-helm-kit","GLOBAL",1)~ DO 0 1



// discount, and line explaining it

APPEND prihel
IF ~~ BEGIN prihel_helm
SAY @8 /* As you are a member of the faith, I will ask only a modest donation for our aid. */
IF ~~ THEN DO ~StartStore("tem0002",LastTalkedToBy(Myself))~ EXIT
END

END


EXTEND_BOTTOM prihel 0 
IF ~Global("dw-helm-kit","GLOBAL",1)~ THEN REPLY @9 /* I too serve the Vigilant One, and your watchfulness does you credit. But I cannot remain here for long. */ EXIT
IF ~Global("dw-helm-kit","GLOBAL",1)~ THEN REPLY @10 /* What services do you have to provide for another Servant of Helm? */ GOTO prihel_helm
END

/////// Bentan and Ilmater ////////////////////////////////////

/// new block

APPEND bentan

IF ~~ BEGIN bentan_ilmater_1
SAY @11 /* I suppose I have been afraid of what he calls me to do... Thank you, <PRO_BROTHERSISTER>. I must meditate long on your words. Excuse me. */
IF ~~ THEN DO ~AddExperienceParty(1200)EscapeArea()~ EXIT
END

END

// transition to new block

EXTEND_TOP bentan 5 8
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @12 /* Your faith is shallow. If you serve the Crying God, seek out the suffering and alleviate their pain. Do not hide from your calling by persuading others to suffer as you will not. */ GOTO bentan_ilmater_1 
END

//// Ilmater priest and Ilmater //////////////////////

// block 'I will never understand your faith' and the more dismissive 'what actions might those be?'

ADD_TRANS_TRIGGER priilmu 0 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 2
ADD_TRANS_TRIGGER priilmu 3 ~!Global("dw-ilmater-kit","GLOBAL",1)~ DO 0

// new routes (using unused original dialog)

EXTEND_TOP priilmu 3 4 
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @13 /* Brother, there is something you are not saying. Our god forgives those who confess their sins and do penance for them. */ GOTO 11
END

EXTEND_TOP priilmu 12
IF ~~ THEN REPLY @14 /* Perhaps nothing. But tell me of this place - is it nearby? */ GOTO 8
END

/// Ilmater priest and Sune /////////////////////////

// block 'who is Sune?' line

ADD_TRANS_TRIGGER priilmu 2 ~!Global("dw-sune-kit","GLOBAL",1)~ DO 0

// new block

APPEND priilmu

IF ~~ BEGIN ilmater_sune_1
SAY @15 /* Sune... ah, Lady Firehair... I have met her in her earthly form in a... in an establishment near here... */
COPY_TRANS priilmu 4
END

END

// new link to that block

EXTEND_TOP priilmu 2
IF ~Global("dw-sune-kit","GLOBAL",1)~ THEN REPLY @16 /* You speak of passion as something unholy, even as you speak Sune's name. Passion is her gift to us - do not blind yourself to this truth! */ GOTO ilmater_sune_1
END

//////// Kelddath Ormyr and Lathander ////////////////////////

// close original intro block to Lathanderites

ADD_STATE_TRIGGER keldda 0 ~!Global("dw-lathander-kit","GLOBAL",1)~

// new intro block

APPEND keldda

IF ~Global("dw-lathander-kit","GLOBAL",1)~ BEGIN keldda_lathander_1
SAY @17 /* Welcome, Dawnbringer. May the light of the Morninglord bless you on your adventures. If you are battle-worn, we can extend a number of necromantic restorations, whatever your need. A small donation - all the smaller since you serve Lathander yourself - is all the compensation that we require. */
COPY_TRANS keldda 0
END

END

/////////// Neira and Mask //////////////////////////////


// new exit block

APPEND neira

IF ~~ BEGIN neira_mask_1
SAY @18 /* Is that so? I care not. You may have heard that there is no honor among thieves. */
IF ~~ THEN DO ~Enemy()~
EXIT
END

END

// new route to that block

EXTEND_BOTTOM neira 0
IF ~Global("dw-mask-kit","GLOBAL",1)~ THEN REPLY @19 /* In Mask's name, stay your hand! I too serve the Lord of Shadows. */ GOTO neira_mask_1
END

/////////// Candlekeep's Oghma shrine and Oghma //////////////////////////////

// block old get-store line

ADD_TRANS_TRIGGER poghm5 0 ~!Global("dw-oghma-kit","GLOBAL",1)~ DO 0

// new get-store line

EXTEND_BOTTOM poghm5 0
IF ~Global("dw-oghma-kit","GLOBAL",1)~ THEN REPLY @20 /* You know well that I too serve the Lord of Knowledge. Might I see the services your shrine offers? */ DO ~StartStore("tem2601",LastTalkedToBy(Myself))~ EXIT
END

///////////// Dradeel and Selune

// new we'll help block

APPEND dradee 

IF ~~ BEGIN dradeel_selune_1
SAY @21 /* Then the goddess has guided you to me in my hour of need, and my imprisonment here is but a penance so that I might become more worthy of her. */
=
@22 /* The lycanthropes' lair is in Balduran's ship. My spellbook lies within. With it, I am a powerful mage. Without it, I am the pauper that stands before you. These few wards I cast are gifts of pity from Selûne, when I turned to the goddess in my fear and solitude. With my spellbook retrieved, I may be able to discover a way off of the island. If you go to destroy the lycanthropes' lair, I would ask that you find my book. */
COPY_TRANS dradee 16
END

END

// routes to that block

EXTEND_BOTTOM dradee 14 22 29
IF ~Global("dw-selune-kit","GLOBAL",1)~ THEN REPLY @23 /* Fear not. In Selûne's name, I will aid you. */ GOTO dradeel_selune_1
END

////////////// Viconia and Shar ////////////////////////////


// new I'll join block

APPEND "viconi%eet_var%"

IF ~~ BEGIN viconia_shar_1
SAY @24 /* Velkyn ul-llindith! Then let it be so. You will not be disappointed. */
COPY_TRANS viconi 9
END

END

// new routes to it

EXTEND_BOTTOM "viconi%eet_var%" 5 6 
IF ~Global("dw-shar-kit","GLOBAL",1)~ THEN REPLY @25 /* Our meeting was fated. I too honor the Lady of Loss. You would be welcome to join me. */ GOTO viconia_shar_1
END

////////////// Branwen and Tempus ////////////////////////////

// new I'll join block

APPEND branwe

IF ~~ BEGIN branwen_tempus_1
SAY @26 /* By Tempus's shield, our meeting was no coincidence! We will fight great battles together, and honor the Lord of Battles! */
=
@27 /* A word of caution though: Beware of the dog that entrapped me in stone. Tranzig, he called himself. He was in the employ of a mercenary group, but I do not know the name. I shall see him dead before I see the shores of home again! */
COPY_TRANS branwe 2
END

END

// new route to it

EXTEND_BOTTOM branwe 0
IF ~Global("dw-tempus-kit","GLOBAL",1)~ THEN REPLY @28 /* Glory to the Foehammer! I too walk the path of Tempus. Join me! */ GOTO branwen_tempus_1 
END

//////// The fishermen and Talos /////////////////////////

// new blocks

APPEND sonner

IF ~~ BEGIN sonner_talos_1
SAY @29 /* You - you serve Talos, and yet you defy him? I-I swear to you, I did not lie about our arrangement with Talos! Surely you will not defy your own deity? */
IF ~~ THEN REPLY @30 /* Bah! Very well, weakling. Give me the gold, and I will do what you cannot. */ GOTO sonner_talos_2
IF ~~ THEN REPLY @31 /* My reasons are my own, Sonner. This is your last warning - give me the bowl! */  GOTO 15
END

IF ~~ BEGIN sonner_talos_2
SAY @32 /* Of course, my <PRO_LORDLADY>. Forgive us for not recognising your allegiance at once. Here - we kept back just a little gold, but rightfully it too is yours. */
IF ~~ THEN UNSOLVED_JOURNAL @33 /* It transpires that the fishermen north of the Friendly Arm serve my god, Talos. I will strike this Umberlaunt priestess down in his name, and make a fine profit in doing so. */ EXIT
END

IF ~~ BEGIN sonner_talos_3
SAY @34 /* You've got what ye came for, now get out of here. We'll see if Talos keeps you in his favor after this. */
IF ~~ THEN UNSOLVED_JOURNAL @35 /* Although the fishermen north of the Friendly Arm serve Talos, I chose to defy them. The destruction I wreak daily in Talos's name surely keeps me in his favor far more than the meager business of these pathetic wretches. In the meantime, I have retrieved the bowl sought by the Sea Queen. Perhaps I will return it to the Umberlaunt whelp; perhaps I will cast it into the Sea of Swords. */ EXIT
END

END

// block journal-entry change from SONNER 13/16

ADD_TRANS_TRIGGER sonner 13 ~!Global("dw-talos-kit","GLOBAL",1)~
ADD_TRANS_TRIGGER sonner 16 ~!Global("dw-talos-kit","GLOBAL",1)~

EXTEND_BOTTOM sonner 13
IF ~Global("dw-talos-kit","GLOBAL",1)~ THEN 
DO ~SetGlobal("HelpJebadoh","GLOBAL",3)
EraseJournalEntry(%sonner_journal_1%)
EraseJournalEntry(%sonner_journal_2%)
EraseJournalEntry(%sonner_journal_3%)
EraseJournalEntry(%sonner_journal_4%)
EraseJournalEntry(%sonner_journal_5%)
EraseJournalEntry(%sonner_journal_6%)
EraseJournalEntry(%sonner_journal_7%)
EraseJournalEntry(%sonner_journal_8%)
EraseJournalEntry(%sonner_journal_9%)
SetGlobal("HostileFishermen","GLOBAL",1)~
SOLVED_JOURNAL @36 /* My lord Talos is behind the actions of the fishermen, and Umberlee is behind the young priestess Tenya! Yet I care nothing for these squabbles. I have more lofty goals. */ EXIT
END

EXTEND_BOTTOM sonner 16
IF ~Global("dw-talos-kit","GLOBAL",1)~ THEN DO ~GiveItem("MISC53",[PC])~ GOTO sonner_talos_3
END

// new routes from conversation with Sonner/Jebado

ADD_TRANS_TRIGGER sonner 14 ~!Global("dw-talos-kit","GLOBAL",1)~

EXTEND_BOTTOM sonner 14
IF ~Global("dw-talos-kit","GLOBAL",1)~ THEN REPLY @37 /* Fool! I am Talos's favored servant, and I care nothing for one who lacks the strength to bring destruction to bear on his enemies himself. Give me the bowl - I will not ask so nicely a second time. */ GOTO sonner_talos_1
IF ~Global("dw-talos-kit","GLOBAL",1)~ THEN REPLY @38 /* This changes much. I too serve the Storm Lord. Give me the gold, and I'll gladly finish the job. */ DO ~IncrementGlobal("FisherPrice","GLOBAL",150)~ GOTO sonner_talos_2
IF ~Global("dw-talos-kit","GLOBAL",1)~ THEN REPLY @48 /*I'm done with all of this. Find yourselves another tool.*/ GOTO 13
END

/////// stealing the Book of Wisdom and Tymora (+ Tymora temple more generally) ///////////////

// block the first block of chanth

ADD_STATE_TRIGGER chanth 0 ~!Global("dw-tymora-kit","GLOBAL",1)~

// block off the exits from block 0 of chanth (might seem redundant, but we want to COPY_TRANS them for future-proofing reasons)

ADD_TRANS_TRIGGER chanth 0 ~!Global("dw-tymora-kit","GLOBAL",1)~

// new Tymora-specific block

APPEND chanth

IF ~Global("dw-tymora-kit","GLOBAL",1)~ BEGIN chanth_tymora_1
SAY @39 /* Luck be with you, <PRO_BROTHERSISTER>, and welcome to our Lady's house. Of all her followers, daring adventurers have a special place in her heart, and we will be happy to assist you - for but a modest donation of coin. */
IF ~~ THEN REPLY @40 /* I have no need of your services at this time. May the Lady smile on you.
 */ EXIT 
IF ~~ THEN REPLY @49 /* Could you show us what you have to offer? */  DO ~StartStore("tem0132",LastTalkedToBy(Myself))~ EXIT
IF ~Global("HelpJalantha","GLOBAL",1)Global("TalkedToUlbright","GLOBAL",0)~ THEN REPLY @41 /* I am in desperate need of a book known as the Book of Wisdom. Trust me, fortune will smile on us both if you give it to me. */ GOTO chanth_tymora_2
COPY_TRANS_LATE chanth 0
END

IF ~~ BEGIN chanth_tymora_2
SAY @42 /* I sense adversity has found you, <PRO_BROTHERSISTER>. Very well, I trust the word of a fellow Luckbringer. Here is the book. */
IF ~~ THEN DO ~SetGlobal("TalkedToUlbright","GLOBAL",1)GiveItem("BOOK08",LastTalkedToBy)~ EXIT
END

END

////////// rescuing Belde'ar's son and Tymora ////////////////////


// new block (cosmetic change only)


APPEND tremai
IF ~~ BEGIN tremain_tymora_1
SAY @43 /* Then She has granted Casson a last throw of the dice! I cannot tell you where in the Umberlant temple Casson would be kept, but I would advise you to be careful. They seem a right unfriendly group, but once you get to know them they seem out and out heartless. Please hurry! */
COPY_TRANS tremai 8
END

END

// new routes into block

EXTEND_BOTTOM tremai 3 4 5
IF ~Global("dw-tymora-kit","GLOBAL",1)~ REPLY @44 /* Fortune smiles on you today, for I too serve Our Lady of Luck. I would be honored to assist you. */ GOTO tremain_tymora_1
END



