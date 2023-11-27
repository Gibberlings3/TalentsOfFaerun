// faith-specific entries to original quests

// Lathander

EXTEND_BOTTOM bharval 0
IF ~Global("dw-tymora-kit","GLOBAL",1)~ THEN GOTO intro_lathander_tymora
IF ~Global("dw-azuth-kit","GLOBAL",1)~ THEN GOTO intro_lathander_azuth
IF ~Global("dw-baervan-kit","GLOBAL",1)~ THEN GOTO intro_lathander_baervan
IF ~Global("dw-clangeddin-kit","GLOBAL",1)~ THEN GOTO intro_lathander_clangeddin
IF ~Global("dw-corellon-kit","GLOBAL",1)~ THEN GOTO intro_lathander_corellon
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN GOTO intro_lathander_ilmater
IF ~Global("dw-kossuth-kit","GLOBAL",1)~ THEN GOTO intro_lathander_kossuth
IF ~Global("dw-moradin-kit","GLOBAL",1)~ THEN GOTO intro_lathander_moradin
IF ~Global("dw-mystra-kit","GLOBAL",1)~ THEN GOTO intro_lathander_mystra
IF ~Global("dw-oghma-kit","GLOBAL",1)~ THEN GOTO intro_lathander_oghma
IF ~Global("dw-selune-kit","GLOBAL",1)~ THEN GOTO intro_lathander_selune
IF ~Global("dw-sune-kit","GLOBAL",1)~ THEN GOTO intro_lathander_sune
IF ~Kit(Player1,OHTEMPUS)~ THEN GOTO intro_lathander_tempus
IF ~Kit(Player1,OHTYR)~ THEN GOTO intro_lathander_tyr
END

APPEND bharval

IF ~~ BEGIN intro_lathander_tymora
SAY @0 /* You there, I am told that you are a servant of Tymora, the Luckbringer. Your faithful, too, are threatened by this heresy. I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_azuth
SAY @1 /* You there, I am told that you are a servant of Azuth, the Lord of Spells. Your faithful, too, are threatened by this heresy. I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_baervan
SAY @2 /* You there, I am told that you are a servant of Baervan Wildwanderer. Though I know little of your faith, I believe it too may be threatened by this heresy. I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_clangeddin
SAY @3 /* You there, I am told that you are a servant of Clangeddin Silverbeard. Your faithful, too, are threatened by this heresy. I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_corellon
SAY @4 /* You there, I am told that you are a servant of Corellon Larethian. Corellon has long been a friend to the Morninglord - I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_ilmater
SAY @5 /* You there, I am told that you are a servant of Ilmater. The crying god has much in common with Lathander. I ask a boon of you in exchange for the favor of the temple and the Morninglord. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_kossuth
SAY @6 /* You there - you are a Firewalker of Kossuth, are you not? It is not often one such as you walks the path of light. */
=@7 /* Nonetheless, in this endeavour our goals are aligned. I ask your assistance in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_moradin
SAY @8 /* You there, I am told that you are a Sonnlinor of Moradin. This matter concerns all our faiths, dwarven as well as human. I ask your assistance in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_mystra
SAY @9 /* You there, I am told that you serve the Mother of Magic. Your faithful, too, are threatened by this heresy. I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_oghma
SAY @10 /* You there, I see that you are a servant of Oghma, the Lord of Knowledge. Are you not curious about this strange matter? I am sure you understand our own desire to learn more of it. I would ask your aid for a time, in exchange for the favor of the temple. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_selune
SAY @11 /* You there, I am told that you serve the Moonmaiden? Selûne has long been a friend to the Morninglord - I would ask your service for a time, in exchange for the favor of Lathander. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_sune
SAY @12 /* You there, I am told that you serve Lady Firehair? Sune has long been a friend to the Morninglord - I would ask your service for a time, in exchange for the favor of Lathander. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_tempus
SAY @13 /* You there, I am told that you serve Tempus, Lord of Battle? Our faiths are not always aligned, but this heresy threatens all of the faithful. I need a mighty warrior of faith - I would ask your service for a time, in exchange for the favor of Lathander. */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_lathander_tyr
SAY @14 /* You there, I am told that you serve Tyr, Lord of Justice? Tyr has long been a close ally of the Morninglord - I would ask your service for a time, in exchange for the favor of Lathander. */
IF ~~ THEN GOTO 2
END

END

// Helm

EXTEND_BOTTOM bhoisig 0
IF ~Global("dw-oghma-kit","GLOBAL",1)~ THEN GOTO intro_helm_oghma
IF ~Global("dw-azuth-kit","GLOBAL",1)~ THEN GOTO intro_helm_azuth
IF ~Global("dw-bane_xvim-kit","GLOBAL",1)~ THEN GOTO intro_helm_bane_xvim
IF ~Global("dw-clangeddin-kit","GLOBAL",1)~ THEN GOTO intro_helm_clangeddin
IF ~Global("dw-kossuth-kit","GLOBAL",1)~ THEN GOTO intro_helm_kossuth
IF ~Global("dw-moradin-kit","GLOBAL",1)~ THEN GOTO intro_helm_moradin
IF ~Global("dw-myrkul_velsharoon-kit","GLOBAL",1)~ THEN GOTO intro_helm_myrkul_velsharoon
IF ~Global("dw-mystra-kit","GLOBAL",1)~ THEN GOTO intro_helm_mystra
IF ~Kit(Player1,OHTYR)~ THEN GOTO intro_helm_tyr

END

APPEND bhoisig

IF ~~ BEGIN intro_helm_oghma
SAY @15 /* You there, I see that you are a servant of Oghma, the Lord of Knowledge. Are you not curious about this strange matter? I am sure you understand our own desire to learn more of it. I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_azuth
SAY @16 /* You there, I am told that you are a servant of Azuth, the Lord of Spells. Your faithful, too, are threatened by this heresy. I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_bane_xvim
SAY @17 /* You there - I am told that you worship Iyachtu Xvim. While consorting with the followers of your god fills me with some trepidation, I feel I have no choice in this matter. As a servant of order, albeit a twisted one, I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_clangeddin
SAY @18 /* You there, I am told that you are a servant of Clangeddin Silverbeard. Your faithful, too, are threatened by this heresy. I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_kossuth
SAY @19 /* You there - you are a Firewalker of Kossuth, are you not? The paths of the Firewalkers are varied, but you seem to be a servant of order, and I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_moradin
SAY @20 /* You there, I am told that you are a Sonnlinor of Moradin. This matter concerns all our faiths, dwarven as well as human. I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_myrkul_velsharoon
SAY @21 /* You there - you keep your faith hidden but I sense that you understand the need for order, whatever your reasons for that may be. I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_mystra
SAY @22 /* You there, I am told that you serve the Mother of Magic. Your faithful, too, are threatened by this heresy. I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

IF ~~ BEGIN intro_helm_tyr
SAY @23 /* You there, I am told that you serve Tyr, Lord of Justice? Our faiths have much in common, and I would ask a service of you. Perform it well and you will gain the favor of Helm. */
IF ~~ THEN GOTO 3
END

END

// Talos

EXTEND_BOTTOM bhnalla 0
IF ~Global("dw-malar-kit","GLOBAL",1)~ THEN GOTO intro_talos_malar
IF ~Global("dw-auril-kit","GLOBAL",1)~ THEN GOTO intro_talos_auril
IF ~Global("dw-bane_xvim-kit","GLOBAL",1)~ THEN GOTO intro_talos_bane_xvim
IF ~Global("dw-bhaal_cyric-kit","GLOBAL",1)~ THEN GOTO intro_talos_bhaal_cyric
IF ~Global("dw-gruumsh-kit","GLOBAL",1)~ THEN GOTO intro_talos_gruumsh
IF ~Global("dw-kossuth-kit","GLOBAL",1)~ THEN GOTO intro_talos_kossuth
IF ~Global("dw-mask-kit","GLOBAL",1)~ THEN GOTO intro_talos_mask
IF ~Global("dw-shar-kit","GLOBAL",1)~ THEN GOTO intro_talos_shar
IF ~Global("dw-myrkul_velsharoon-kit","GLOBAL",1)~ THEN GOTO intro_talos_myrkul_velsharoon
IF ~Global("dw-talona-kit","GLOBAL",1)~ THEN GOTO intro_talos_talona
IF ~Kit(Player1,OHTEMPUS)~ THEN GOTO intro_talos_tempus
END

APPEND bhnalla

IF ~~ BEGIN intro_talos_malar
SAY @24 /* We need a vassal for our wrath! You there! I am told that you are a servant of Malar, the Beastlord! These eyeless cultists would be worthy prey for your High Hunt, and I can tell you where to find them! */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_auril
SAY @25 /* We need a vassal for our wrath! You there! I am told that you are a servant of Auril, the Frostmaiden! Auril and Talos have often worked together in the cause of chaos - I offer the chance to be the instrument of vengeance for the Stormlord! */ 
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_bane_xvim
SAY @26 /* We need a vassal for our wrath! You there! I am told that you serve the will of Iyachtu Xvim! Talos has little love for your upstart god, but today we have a common enemy! */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_bhaal_cyric
SAY @27 /* We need a vassal for our wrath! You there! I am told you serve the upstart Prince of Lies? Your lord Cyric must surely wish you to aid us against these heathens! */
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_gruumsh
SAY @28 /* We need a vassal for our wrath! You there! I see you serve Gruumsh One-Eye! The fury of Gruumsh is second only to mighty Talos! Let us work together against these heathens - I offer the chance to be the instrument of vengeance for the Stormlord! */  
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_kossuth
SAY @29 /* We need a vassal for our wrath! You are a Firewalker of Kossuth, are you not? Bring the fiery fury of your Lord to bear against these heathens, and you will be the instrument of vengeance for the Stormlord! */  
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_mask
SAY @30 /* We need a vassal for our wrath! You there... I have been told that you owe allegiance to Mask, Lord of Shadows. Your master's stealthy ways may be more suited to this task than our own destructive fury. I have a task for you, one that serves both our goals. */  
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_shar
SAY @31 /* We need a vassal for our wrath! You there... I have been told that you owe allegiance to Shar, the Mistress of Night. Your mistress's ways may be more suited to this task than our own destructive fury. I have a task for you, one that serves both our goals. */  
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_myrkul_velsharoon
SAY @32 /* We need a vassal for our wrath! You there... I I have been told that you owe allegiance to Velsharoon. You may know that there is a secret alliance between our faiths. I have a task for you, one that serves both our goals. */  
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_talona
SAY @33 /* We need a vassal for our wrath! You there... I have been told that you owe allegiance to Talona, the Mistress of Disease. Your mistress's ways may be more suited to this task than our own destructive fury. I have a task for you, one that serves both our goals. */  
IF ~~ THEN GOTO 2
END

IF ~~ BEGIN intro_talos_tempus
SAY @34 /* We need a vassal for our wrath! You there! You are a warrior of Tempus, lord of battle, and I sense that you are a champion of chaos! Bring the might of your Lord to bear against these heathens, and you will be the instrument of vengeance for the Stormlord! */ 
IF ~~ THEN GOTO 2
END

END

/// modified exits from original quest

APPEND bharval
IF ~~ THEN BEGIN lathander_other_kit
SAY @35 /* And now for you: The Morninglord is pleased. You may not be of the faithful, but you have walked his path and will be rewarded by his favor. You are always welcome here in his house, and we may call on you again for aid if the goals of our faiths once more align. */
=
#58790 /* ~Take this with our blessing. May you find what you seek with its aid. ~*/
IF ~GlobalLT("Chapter","GLOBAL",6)~ THEN DO 
~GiveItemCreate("BLUN20",LastTalkedToBy,0,0,0)
GiveGoldForce(7000)
SetGlobalTimer("%var_priest_finale_quest_timer%","GLOBAL",ONE_MONTH)
SetGlobal("%var_beholder_quest_early%","GLOBAL",1)
SetGlobal("%var_priest_finale_allegiance%","GLOBAL",1)
~ GOTO lathander_42_variant
IF ~!GlobalLT("Chapter","GLOBAL",6)~ THEN DO 
~ GiveItemCreate("BLUN20",LastTalkedToBy,0,0,0)
GiveGoldForce(7000)
SetGlobalTimer("%var_priest_finale_quest_timer%","GLOBAL",FOURTEEN_DAYS)
SetGlobal("%var_priest_finale_allegiance%","GLOBAL",1)
~ GOTO lathander_42_variant
END

IF ~~ BEGIN lathander_42_variant
SAY @36 /* Oh! You may wish to speak with Dawnbringer Sain on your way out. He may have a task for you. Our faiths worked well together today; perhaps they can do so again. */
COPY_TRANS bharval 42
END

IF WEIGHT #-1 ~Global("%var_priest_finale_allegiance%","GLOBAL",1)~ THEN BEGIN friendly_interim_lathander
SAY @37 /* Though you do not serve the Morninglord, you are welcome in our sight. */
IF ~~ THEN EXIT
END

END

EXTEND_BOTTOM bharval 29
IF ~Global("dw_block_this","GLOBAL",1)!Kit(Player1,GODLATHANDER)~ THEN GOTO lathander_other_kit
END

APPEND bhoisig
IF ~~ THEN BEGIN helm_other_kit
SAY @38 /* To your reward. Such service earns great reward, even though you are not of the flock. You are welcome here in Helm's sight, and should our goals align, we may call upon you again. */
IF ~GlobalLT("Chapter","GLOBAL",6)~ THEN DO 
~GiveItemCreate("BLUN20",LastTalkedToBy,0,0,0)
GiveGoldForce(7000)
SetGlobalTimer("%var_priest_finale_quest_timer%","GLOBAL",ONE_MONTH)
SetGlobal("%var_beholder_quest_early%","GLOBAL",1)
SetGlobal("%var_priest_finale_allegiance%","GLOBAL",2)
~ GOTO helm_34_variant
IF ~!GlobalLT("Chapter","GLOBAL",6)~ THEN DO 
~ GiveItemCreate("BLUN20",LastTalkedToBy,0,0,0)
GiveGoldForce(7000)
SetGlobalTimer("%var_priest_finale_quest_timer%","GLOBAL",FOURTEEN_DAYS)
SetGlobal("%var_priest_finale_allegiance%","GLOBAL",2)
~ GOTO helm_34_variant
END

IF ~~ THEN BEGIN helm_34_variant
SAY @39 /* Oh! Speak with Guardian Telwyn as you leave. He may have a task suited to you, should you wish to further this alliance of our faiths. */
COPY_TRANS bhoisig 34
END

IF WEIGHT #-1 ~Global("%var_priest_finale_allegiance%","GLOBAL",2)~ THEN BEGIN friendly_interim_helm
SAY @40 /* Know that the Vigilant One watches all, whether they serve him or not. */
IF ~~ THEN EXIT
END


END

EXTEND_BOTTOM bhoisig 30
IF ~Global("dw_block_this","GLOBAL",1)!Kit(Player1,GODHELM)~ THEN GOTO helm_other_kit
END


APPEND bhnalla
IF ~~ THEN BEGIN talos_other_kit
SAY @41 /* Now then, to your fate. You may not walk the path of Talos, yet the destruction you have wrought has been in His name. Perhaps we will call upon your prowess again,  but until then, do not think to pit your own faith against the Stormlord, or our vengeance will be swift. */
= #58786 /*~Still, you warrant some reward. Take this and go. I thank you, but Talos does not believe in long goodbyes.~*/
IF ~GlobalLT("Chapter","GLOBAL",6)~ THEN DO 
~GiveItemCreate("BLUN20",LastTalkedToBy,0,0,0)
GiveGoldForce(7000)
SetGlobalTimer("%var_priest_finale_quest_timer%","GLOBAL",ONE_MONTH)
SetGlobal("%var_beholder_quest_early%","GLOBAL",1)
SetGlobal("%var_priest_finale_allegiance%","GLOBAL",3)
~ GOTO talos_40_variant
IF ~!GlobalLT("Chapter","GLOBAL",6)~ THEN DO 
~ GiveItemCreate("BLUN20",LastTalkedToBy,0,0,0)
GiveGoldForce(7000)
SetGlobalTimer("%var_priest_finale_quest_timer%","GLOBAL",FOURTEEN_DAYS)
SetGlobal("%var_priest_finale_allegiance%","GLOBAL",3)
~ GOTO talos_40_variant
END

IF ~~ BEGIN talos_40_variant
SAY @42 /* Ah, there is another duty you should perform with all haste. Perform well you may retain the favor of Talos. Speak with Talon Yarryl. Go. */
COPY_TRANS bhnalla 40
END

IF WEIGHT #-1 ~Global("%var_priest_finale_allegiance%","GLOBAL",3)~ THEN BEGIN friendly_interim_talos
SAY @43 /* You may walk here freely, but do not dare challenge us. */
IF ~~ THEN EXIT
END

END

EXTEND_BOTTOM bhnalla 28
IF ~Global("dw_block_this","GLOBAL",1)!Kit(Player1,GODTALOS)~ THEN GOTO talos_other_kit
END

/// messenger who calls you to the temple

BEGIN "%dlg_priest_finale_messenger%"

IF ~Global("%var_priest_finale_allegiance%","GLOBAL",1)~ BEGIN messenger_lathander
SAY @44 /* <PRO_LORDLADY> <CHARNAME>! Honored one, the temple of Lathander has need of your aid. High Mornmaster Arval beseeches you - come at once! */
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @45 /* I would be honored to aid the Lathanderites once more. */ GOTO messenger_reply_0
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @46 /* What is this about? */ GOTO messenger_reply_1
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @47 /* I don't have time for this. */ GOTO messenger_reply_2
END

IF ~NumTimesTalkedTo(0)Global("%var_priest_finale_allegiance%","GLOBAL",2)~ BEGIN messenger_helm
SAY @48 /* <PRO_LORDLADY> <CHARNAME>! Honored one, the temple of Helm has need of your aid. High Watcher Oisig beseeches you - come at once! */
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @49 /* I would be honored to aid Helm once more. */ GOTO messenger_reply_0
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @46 /* What is this about? */ GOTO messenger_reply_1
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @47 /* I don't have time for this. */ GOTO messenger_reply_2
END

IF ~NumTimesTalkedTo(0)Global("%var_priest_finale_allegiance%","GLOBAL",3)~ BEGIN messenger_talos
SAY @50 /* <PRO_LORDLADY> <CHARNAME>! Honored one, the temple of Talos has need of your aid. Stormherald Nallabir demands your presence at once. */
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @51 /* Perhaps Talos and I might walk the path of destruction again - tell your master that I will come. */ GOTO messenger_reply_0
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @46 /* What is this about? */ GOTO messenger_reply_1
IF ~~ THEN DO ~SetGlobal("%var_priest_finale_quest%","GLOBAL",2)~ REPLY @47 /* I don't have time for this. */ GOTO messenger_reply_2
END

IF ~~ BEGIN messenger_reply_0 
SAY @52 /* I will inform the temple that you are on your way, <CHARNAME>. */
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BEGIN messenger_reply_1
SAY @53 /* Open war is breaking out in the Temple District, between the faiths of Lathander and Talos. But I know little, <CHARNAME> - I am just a messenger. Come to the temple if you would learn more. */
IF ~~ THEN DO ~EscapeArea()~ EXIT
END 

IF ~~ BEGIN messenger_reply_2
SAY @54 /* It is your choice, of course, <CHARNAME>. I will inform the temple - but should you change your mind, hurry there yourself. */
IF ~~ THEN DO ~EscapeArea()~ EXIT
END 

// main questgiver - Lathander

BEGIN "%dlg_priest_finale_lathander_questgiver%"

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-tymora-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_tymora
SAY @55 /* Luckbringer, your arrival is timely. Tymora has long been an ally of Lathander, and now we sorely need the luck that your goddess brings - and your own skills. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-azuth-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_azuth
SAY @56 /* <CHARNAME>, your arrival is timely. Though your faith is concerned only with the good of spellcasters, you must realize that if destruction and chaos were to come to this city, mages will suffer just as the common people do. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-baervan-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_baervan
SAY @57 /* <CHARNAME>, your arrival is timely. Though our faiths have little contact, we share a concern for the common folk of Amn and a hatred of the destruction that certain of the evil gods would gleefully bring. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-clangeddin-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_clangeddin
SAY @58 /* Alaghor, your arrival is timely. Clangeddin's faithful have long fought honorably against the forces of evil and destruction, and I ask you to do so once again today. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-corellon-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_corellon
SAY @59 /* Feywarden, your arrival is timely. Our faiths walk different paths, but I know I can trust your devotion to what is true and right. And if what I fear comes to pass this night, elves too will feel the consequences before long. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-ilmater-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_ilmater
SAY @60 /* <CHARNAME>, the faiths of Ilmater and Lathander have long been aligned. I call on that allegiance now, in this most desparate hour. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-kossuth-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_kossuth
SAY @61 /* Firewalker, many in your faith serve destruction and chaos, but I know you to be a good <PRO_MANWOMAN>, a servant of light whether you know it or not. I hope that I can rely on that goodness now, in this desperate hour. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-moradin-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_moradin
SAY @62 /* Sonnlinor, your arrival is timely. Chaos and destruction are rising in our city - if they are not quelled, it will bring ruin on elf and dwarf and man alike. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-mystra-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_mystra
SAY @63 /* <CHARNAME>, your arrival is timely. Athkatla has long been a center of lore and study of the Art - yet chaos and destruction threatens it, to the ruin of your faith and mine. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-oghma-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_oghma
SAY @64 /* Lorekeeper, your arrival is timely. Athkatla has long been a center of learning - yet chaos and destruction threatens it, to the ruin of your faith and mine. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-selune-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_selune
SAY @65 /* Silverstar, your arrival is timely. Our faiths recognise a common enemy - the servants of those gods who in turn serve only chaos and ruin. They have grown bold, and the hour of their fury is at hand. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-sune-kit","GLOBAL",1)~ BEGIN lathander_questgiver_intro_sune
SAY @66 /* <CHARNAME>, your arrival is timely. Your faith has long opposed the Gods of Fury, knowing well the ruin they bring to beautiful things. Tonight, we we share your goddess's anger; tonight, we stand together. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Kit(Player1,OHTEMPUS)~ BEGIN lathander_questgiver_intro_tempus
SAY @67 /* <CHARNAME>, your arrival is timely. Though you serve the Lord of Battle, always you have sought out worthy and noble conflict. You have another chance to do so this night. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Kit(Player1,OHTYR)~ BEGIN lathander_questgiver_intro_tyr
SAY @68 /* <CHARNAME>, your arrival is timely. Long have our faiths worked together against the rise of evil and chaos. Tonight we will do so again. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)~ BEGIN lathander_questgiver_intro_generic
SAY @69 /* <CHARNAME>, your arrival is timely. Our faiths have often been aligned, and we must have your aid in this desperate hour. */
IF ~~ THEN GOTO lathander_questgiver_main
END

IF ~~ BEGIN lathander_questgiver_main
SAY #36277
IF ~~ THEN REPLY #36278 GOTO finale_lathander_what_to_do
IF ~~ THEN REPLY #36279 GOTO finale_lathander_what_to_do
IF ~~ THEN REPLY #36280 GOTO finale_lathander_what_to_do
END

IF ~~ BEGIN finale_lathander_what_to_do
SAY #36281 
= @70 /* It is this task that I ask of you, <CHARNAME>. It is a request I hoped I would never make, but it seems our two temples are destined to collide. The unfortunate thing is that the Talassans will delight in the destruction whether they win or not. */
= #36283
IF ~~ THEN DO 
~SetGlobal("%var_priest_finale_quest%","GLOBAL",4)
SetGlobal("Challenge","GLOBAL",0)
SetGlobal("TalonWar","GLOBAL",1)
SetGlobal("TempleShout0904","GLOBAL",1)
~
EXIT
END

IF ~Global("TalonWar","GLOBAL",1)!Dead("talmiss")!Dead("talmiss2")~ BEGIN finale_lathander_holding_pattern
SAY #36284
IF ~~ THEN EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)Global("TalonWar","GLOBAL",1)OR(2)Dead("talmiss")Dead("talmiss2")~ BEGIN finale_lathander_success
SAY #36285
IF ~Global("dw-tymora-kit","GLOBAL",1)~ THEN REPLY @71 /* The Lady's luck was with us, not the Talassans. */ GOTO finale_lathander_denouement_tymora
IF ~Global("dw-azuth-kit","GLOBAL",1)~ THEN REPLY @72 /* The Art, and those who wield it, are more than a match for brute power. */ GOTO finale_lathander_denouement_azuth
IF ~Global("dw-baervan-kit","GLOBAL",1)~ THEN REPLY @73 /* The loss of life was tragic, but it is good that these Talassar will pervert nature no more. */ GOTO finale_lathander_denouement_baervan
IF ~Global("dw-clangeddin-kit","GLOBAL",1)~ THEN REPLY @74 /* A glorious battle, and a glorious victory! Clangeddin be praised! */ GOTO finale_lathander_denouement_clangeddin
IF ~Global("dw-corellon-kit","GLOBAL",1)~ THEN REPLY @75 /* It gave me no joy to slay these servants of darkness, but it had to be done. */ GOTO finale_lathander_denouement_corellon
IF ~Global("dw-ilmater-kit","GLOBAL",1)~ THEN REPLY @76 /* The innocent did not deserve the fate they have suffered from these Talassans. */ GOTO finale_lathander_denouement_ilmater
IF ~Global("dw-kossuth-kit","GLOBAL",1)~ THEN REPLY @77 /* Truly, Kossuth's fire burned bright this day! */ GOTO finale_lathander_denouement_kossuth
IF ~Global("dw-moradin-kit","GLOBAL",1)~ THEN REPLY @78 /* I saw the Dwarffather's will clearly. The Talassar would have wrought devastation. There was no other way. */ GOTO finale_lathander_denouement_moradin
IF ~Global("dw-mystra-kit","GLOBAL",1)~ THEN REPLY @79 /* I wish it had not been necessary. This conflict is not Mystra's way. */ GOTO 
finale_lathander_denouement_mystra
IF ~Global("dw-oghma-kit","GLOBAL",1)~ THEN REPLY @80 /* This has been a bitter day. There is neither knowledge nor wisdom in the slaughter of the depraved. */ GOTO finale_lathander_denouement_oghma
IF ~Global("dw-selune-kit","GLOBAL",1)~ THEN REPLY @81 /* The Goddess shines her light onto carnage tonight. I hope this was worth the price, Arval. */ GOTO finale_lathander_denouement_selune
IF ~Global("dw-sune-kit","GLOBAL",1)~ THEN REPLY @82 /* An ugly scene. There is no beauty in this pointless slaughter. */ GOTO finale_lathander_denouement_sune
IF ~Kit(Player1,OHTEMPUS)~ THEN REPLY @83 /* A glorious battle, and a glorious victory. By Tempus' shield, this was a good day! */ GOTO finale_lathander_denouement_tempus
IF ~Kit(Player1,OHTYR)~ THEN REPLY @84 /* We have brought justice to the Talassar, bloody though it was. */ GOTO finale_lathander_denouement_tyr


IF ~~ THEN REPLY #36287 GOTO finale_lathander_denouement_general
END

IF ~~ THEN BEGIN finale_lathander_denouement_tymora
SAY @85 /* We are indeed lucky to have you and your goddess as our allies, <CHARNAME>. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_azuth
SAY @86 /* You have done noble work today, <CHARNAME>. Those who wield the Art owe you a debt, whether they know it or not. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_baervan
SAY @87 /* Thank you, <CHARNAME>. May this be the beginning of a long alliance between the servants of the Morning Lord and the Forest Gnome. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_clangeddin
SAY @88 /* <CHARNAME>, truly you are a servant of your god. A more righteous battle there has not been in Athkatla for long years. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_corellon
SAY @89 /* Feywarden, thank you for your aid. A great evil has been vanquished, and Athkatla will know a measure of peace. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_ilmater
SAY @90 /* Indeed not. I am glad you have served the goal of your faith and relieved their suffering, <CHARNAME>. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_kossuth
SAY @91 /* And it burned for justice! Truly, <CHARNAME>, you embody the most noble impulses of your faith. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_moradin
SAY @92 /* You speak the truth, I fear. Our faith did not seek this conflict, but we have ended it - with your help, Sonnlinor. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_mystra
SAY @93 /* Nor is it the way of the Morninglord. But it is over now. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_oghma
SAY @94 /* There is wisdom in your words... but I fear there was no choice. And there can be understanding even in sorrow. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_selune
SAY @95 /* So do I. But if the night is dark, still joy may come in the morning. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_sune
SAY @96 /* You are right, <CHARNAME>. But sometimes ugliness like this must be endured for true beauty to be possible. On this, your faith and mine are one. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_tempus
SAY @97 /* A sad day, rather, in the eyes of the Morninglord... but I shall not begrudge you your triumph, <CHARNAME>, for we could not have prevailed without your aid. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_denouement_tyr
SAY @98 /* Indeed we have, my friend. And though I would have preferred a peaceful resolution, still, tonight's events will send a message to others in the city: justice will prevail. */
IF ~~ THEN GOTO finale_lathander_reward
END


IF ~~ THEN BEGIN finale_lathander_denouement_general
SAY @99 /* Indeed. I am sorry so much blood has been spilled, but at least the conflict has ended. */
IF ~~ THEN GOTO finale_lathander_reward
END

IF ~~ THEN BEGIN finale_lathander_reward
SAY @100 /* You are welcome to enjoy the safety of the temple whenever you wish - we see you as a true servant of Lathander, no matter your own faith. Farewell. */
IF ~~ THEN DO ~AddExperienceParty(35000)GiveGoldForce(1000)SetGlobal("TalonWar","GLOBAL",2)SetAreaRestFlag(1)~ EXIT
END

IF ~Global("TalonWar","GLOBAL",2)~ THEN BEGIN finale_lathander_aftermath
SAY #36310
IF ~~ THEN EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN finale_lathander_no_flunkies
  SAY #61127 /* ~May the Dawnlord bless you! Please excuse me, but my duties require me to talk to <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

// main questgiver - Helm

BEGIN "%dlg_priest_finale_helm_questgiver%"

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-oghma-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_oghma
SAY @101 /* Thank you for coming, <CHARNAME>. Once again we need you help to maintain order - and I trust you understand that without order and the peace that it brings, there can be no lasting knowledge. Our faiths have a common interest here. */ 
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-azuth-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_azuth
SAY @102 /* Thank you for coming, <CHARNAME>. Once again we need you help to maintain order - and I am sure you realize that the mages of Amn rely on that order to pursue their studies in peace. Our faiths have a common interest here */ 
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-bane_xvim-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_bane_xvim
SAY @103 /* <CHARNAME>... I had feared you would not come. But although the order that your god seeks is steeped in blood, it is order nonetheless. And this day, it is chaos and misrule that I fear, not tyranny. I promise you that our interests run together in this. */ 
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-clangeddin-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_clangeddin
SAY @104 /* <CHARNAME>. Though your faith honors the warrior, still I know you understand the need for order, and for battle only for a legal cause. */ 
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-kossuth-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_kossuth
SAY @105 /* Firewalker. Though many in your faith serve destruction and chaos, I know you understand that the hottest flame burns for the clearest cause - that of justice and order. */
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-moradin-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_moradin
SAY @106 /* Sonnlinor. Once again I must call upon the alliance between our faiths. A conflict is brewing in Athkatla - a conflict which will hurt all our citizens, elf and man and dwarf. */
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-myrkul_velsharoon-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_myrkul_velsharoon
SAY @107 /* <CHARNAME>. I admit, I am wary of your faith. But these are desperate times, and you aided the cause of Helm once before. */
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-mystra-kit","GLOBAL",1)~ BEGIN helm_questgiver_intro_mystra
SAY @108 /* <CHARNAME>. Our faiths have oft-times been at odds... but still, we share a common goal today, the maintenance of order and justice in Athkatla. */
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Kit(Player1,OHTYR)~ BEGIN helm_questgiver_intro_tyr
SAY @109 /* <CHARNAME>. It is good that you have come - your faith has always defended nobility and honor, and I am sure that you will see the justice and honor of our cause tonight. */
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)~ BEGIN helm_questgiver_intro_generic
SAY @110 /* Ah, <CHARNAME>. Thank you for coming - unfortunately, there is a matter that concerns both our faiths, and which requires immediate attention */ 
IF ~~ THEN GOTO helm_questgiver_main
END

IF ~~ BEGIN helm_questgiver_main
SAY #36293
= #36296
IF ~~ THEN REPLY #36297 GOTO finale_helm_what_to_do
IF ~~ THEN REPLY #36298 GOTO finale_helm_what_to_do
IF ~~ THEN REPLY #36299 GOTO finale_helm_what_to_do
END

IF ~~ BEGIN finale_helm_what_to_do
SAY #36300 
= #36301
= #36302
IF ~~ THEN DO 
~SetGlobal("%var_priest_finale_quest%","GLOBAL",4)
SetGlobal("Challenge","GLOBAL",0)
SetGlobal("TalonWar","GLOBAL",1)
SetGlobal("TalonWarSpawn","GLOBAL",1)
~
EXIT
END

IF ~Global("TalonWar","GLOBAL",1)NumDeadLT("talkni02",4)~ BEGIN finale_helm_holding_pattern_1
SAY #36303
IF ~~ THEN EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)Global("TalonWar","GLOBAL",3)NumDeadGT("talkni02",3)~ BEGIN finale_helm_success_1
SAY #36304
IF ~Global("dw-oghma-kit","GLOBAL",1)~ THEN REPLY @111 /* It is ignorance that leads to tragedies like this. If the Talassans had truly understood their situation, they would not have thrown their lives away. Their comrades have gained knowledge today, but at a bitter price. */ GOTO finale_helm_denouement_oghma
IF ~Global("dw-azuth-kit","GLOBAL",1)~ THEN REPLY @112 /* Open warfare would have brought ruin to all of Athkatla, the students of the Art not least. I served Azuth's will this day; he would not want the wizards of the city drawn into pointless conflict. */ GOTO finale_helm_denouement_azuth
IF ~Global("dw-bane_xvim-kit","GLOBAL",1)~ THEN REPLY @113 /* It sits ill with me to parley with the Lathanderites, but my Lord's goals will not be solved by unfettered chaos. */ GOTO finale_helm_denouement_bane_xvim
IF ~Global("dw-clangeddin-kit","GLOBAL",1)~ THEN REPLY @114 /* It was a glorious battle against the Talassar - but glory requires a just cause, and the Lathanderites would have gone beyond self-defense if we had not stopped them. */ GOTO finale_helm_denouement_clangeddin
IF ~Global("dw-kossuth-kit","GLOBAL",1)~ THEN REPLY @115 /* Kossuth gives us fire as a tool - to consume that which must burn, but not to blaze unconstrained. It was right to restrain the Lathanderites. */ GOTO finale_helm_denouement_kossuth
IF ~Global("dw-moradin-kit","GLOBAL",1)~ THEN REPLY @116 /* I am honored to have sustained our faiths' alliance, and to have done my part to prevent open warfare in the streets. */ GOTO finale_helm_denouement_moradin
IF ~Global("dw-myrkul_velsharoon-kit","GLOBAL",1)~ THEN REPLY @117 /* Do not guess at my motives, servant of Helm. It suited my purposes to help you today. Tomorrow, we shall see. */ GOTO finale_helm_denouement_myrkul_velsharoon
IF ~Global("dw-mystra-kit","GLOBAL",1)~ THEN REPLY @118 /* Open warfare would have brought ruin to all of Athkatla, the students of the Art not least. I served Mystra's will this day; she would not wish the Lathanderites to pursue their empty vengeance. */ GOTO finale_helm_denouement_mystra
IF ~Kit(Player1,OHTYR)~ THEN REPLY @119 /* Defending the Lathanderites from attack was noble, but to have stood back and allowed them to butcher the Talassar in revenge would have gone against the teachings of Tyr. */ GOTO finale_helm_denouement_tyr



IF ~~ THEN REPLY #36306 GOTO finale_helm_denouement_general
IF ~~ THEN REPLY #36307 GOTO finale_helm_denouement_general
END

IF ~~ THEN BEGIN finale_helm_denouement_oghma
SAY @120 /* Your words are wise, <CHARNAME>. This alliance of Oghma and Helm may yet bring peace and wisdom to Athkatla. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_azuth
SAY @121 /* A wise judgement. I am glad that our faiths were able to work together in this matter. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_bane_xvim
SAY @122 /* You are uncommonly wise for one of your dark faith. See that your Lord's goals remain aligned with order and justice, though, if you wish to remain our ally. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_clangeddin
SAY @123 /* You are wise to temper your battle-lust. It is a powerful weapon for order, but it is good that you know when to sheathe that weapon. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_kossuth
SAY @124 /* You are uncommonly wise for one of your faith. Too many of your brethren simply exult in the destructive power of the flame, but you see its purpose more clearly, I think. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_moradin
SAY @125 /* The honor is ours, Sonnlinor. The dwarven folk - all the folk of Athkatla - are fortunate to have your shield protecting them. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_myrkul_velsharoon
SAY @126 /* As you wish. What matters to us is the result, not your reasons for bringing it about. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_mystra
SAY @127 /* I know little of your goddess, but I am glad that her path and the Watcher's ran together in this sad business. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_tyr
SAY @128 /* Your honor is exceeded only by your prowess in battle. I regret that you did not come to serve the Vigilant One, but you are a champion of your own faith. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_denouement_general
SAY @129 /* Such is the burden of Helm's watchers - a burden that you have shared this day. */
IF ~~ THEN GOTO finale_helm_reward
END

IF ~~ THEN BEGIN finale_helm_reward
SAY @130 /* <CHARNAME>, you have shown your worth to Helm a hundredfold over, even if your own faith is elsewhere. Your have a place here whenever you wish it - the safety and convenience of this temple is yours to enjoy. Remember that you are in the gaze of the Vigilant One, and go with honor. */
IF ~~ THEN DO ~AddExperienceParty(35000)GiveGoldForce(1000)SetGlobal("TalonWar","GLOBAL",6)SetAreaRestFlag(1)~ EXIT
END

IF ~Global("TalonWar","GLOBAL",6)~ THEN BEGIN finale_helm_aftermath
SAY #36311
IF ~~ THEN EXIT
END

IF ~Global("TalonWar","GLOBAL",4)~ THEN BEGIN finale_helm_failed
SAY #36382
IF ~~ THEN REPLY #36384 GOTO finale_helm_failed_1a
IF ~~ THEN REPLY #36385 GOTO finale_helm_failed_1b
END

IF ~~ THEN BEGIN finale_helm_failed_1a
SAY #36386 
IF ~~ THEN GOTO finale_helm_failed_2
END

IF ~~ THEN BEGIN finale_helm_failed_1b
SAY #36388
IF ~~ THEN GOTO finale_helm_failed_2
END

IF ~~ THEN BEGIN finale_helm_failed_2
SAY #36388
= @131 /* No, <CHARNAME>, this is a tragic failing on your part. I was a fool to trust your judgement and your faith. Others will clean up this mess in time. Your work here is done. Go. */
IF ~~ THEN DO ~SetGlobal("TalonWar","GLOBAL",5)~ EXIT
END 

IF ~Global("TalonWar","GLOBAL",5)~ THEN BEGIN finale_helm_aftermath_bad
SAY #36396
IF ~~ THEN EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)~ BEGIN finale_helm_no_flunkies
SAY #61131
IF ~~ THEN EXIT
END

// Latlara (in Helm quest)

BEGIN "%dlg_priest_finale_latlara%"
IF ~Global("TalonWar","GLOBAL",1)NumDeadGT("talkni02",3)~ THEN BEGIN latlara_intro
  SAY #36312 /* ~Your help has been greatly appreciated here, servant of Helm, but now that the brunt of the assault is over, it is time for the dawn to bring retribution. We shall kill that foul Weathermistress! Such evil cannot be permitted!~ */
  IF ~~ THEN REPLY @132 /* Neither can this continuing slaughter. I will stand with the Great Guard to stop it. */  GOTO latlara_talk_down_1
  IF ~~ THEN REPLY #36314 /* ~I agree, but an assassination is not the answer. This is a city, not the frontier. Innocents will die.~ */ GOTO latlara_talk_down_1
  IF ~~ THEN REPLY #36377 /* ~I agree! I was supposed to stop you from retaliating, but this crime demands revenge!~ */ GOTO latlara_revenge
END

IF ~~ THEN BEGIN latlara_talk_down_1
  SAY #36316 /* ~You cannot condone what they have tried to do! You would stand in the way of righteousness? Of justice? Does not Helm stand for justice?~ */
  IF ~~ THEN REPLY #36317 /* ~There is no justice in slaughter. Due process applies to the divine like all others.~ */ GOTO latlara_talk_down_2
  IF ~~ THEN REPLY @133 /* Helm stands for protection, and today, so do I. */  GOTO latlara_talk_down_2
  IF ~~ THEN REPLY #36381 /* ~Perhaps we should destroy them, to protect more in the long term.~ */ GOTO latlara_revenge
END

IF ~~ THEN BEGIN latlara_talk_down_2
  SAY #36319 /* ~Then we shall stand down for now, though we shall be vigilant where once we trusted. You are a voice of reason, and I thank you. <CHARNAME>, isn't it? May Lathander smile upon you for your wisdom.~ */
  IF ~~ THEN DO ~SetGlobal("TalonWar","GLOBAL",3)
EscapeArea()
~
EXIT
END

IF ~~ THEN BEGIN latlara_revenge
  SAY #36379 /* ~Then we will march on the Talassan temple this night! They shall fall before the wrath of the Morninglord! Stand aside and let the light batter down the darkness!~ */
  IF ~~ THEN DO ~SetGlobal("Talonwar","GLOBAL",4)
EscapeArea()
~
EXIT
END


// main questgiver - Talos

BEGIN "%dlg_priest_finale_talos_questgiver%"

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-malar-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_malar
SAY @134 /* Welcome, <CHARNAME>! I have a chance for you to unleash the Beastlord's savagery and earn Talos's great favor! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-auril-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_auril
SAY @135 /* Welcome, <CHARNAME>! I pray that the icy touch of Auril will serve Talos today, to the benefit of both our faiths! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-azuth-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_azuth
SAY @136 /* Welcome, <CHARNAME>! Our faiths differ greatly, but we worked together well in crushing the beholder cult, and I hope that we might do so again today. The arcane puissance of Azuth and the destructive fury of Talos, working together to the benefit of both our faiths! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-bane_xvim-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_bane_xvim
SAY @137 /* Welcome, <CHARNAME>! I offer a chance to spread fear, hatred and destruction - the lifeblood of your god, and of mine! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-bhaal_cyric-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_bhaal_cyric
SAY @138 /* Welcome, <CHARNAME>! We do not trust one another, of course, but I am sure you will see the benefits in aiding me, and aiding the Talassar. The Prince of Lies and the Stormlord can find common cause this one time. */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-gruumsh-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_gruumsh
SAY @139 /* Welcome, Bloodspear! I can count on a servant of mighty Gruumsh to pursue a course of mayhem and destruction - truly, only Talos himself can match your lord's fury! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-kossuth-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_kossuth
SAY @140 /* Welcome, Firewalker! I know that you truly embrace the destructive terror of fire - and tonight that fire will burn across the rooftops of Athkatla as all marvel at the power of Talos and of Kossuth! */ 
IF ~~ THEN GOTO talos_questgiver_main
END


IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-mask-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_mask
SAY @141 /* Welcome, Demarch! I know that our ways lack the subtlety your god esteems - but there is great profit to be gained here, for you and your cause. When this night is done, the servants of Mask will be free to operate in Athkatla without the wretched attention of our shared enemy. */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-shar-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_shar
SAY @142 /* Welcome, Nightcloak! Though the ways of our faiths differ greatly, still we have a common enemy: the servants of dawn and light. */ 
IF ~~ THEN GOTO talos_questgiver_main
END


IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-myrkul_velsharoon-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_myrkul_velsharoon
SAY @143 /* Welcome, <CHARNAME>. Once again I must call on the secret alliance between our faiths. But know that if you aid us this night, great honor and great profit will be yours. */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Global("dw-talona-kit","GLOBAL",1)~ BEGIN talos_questgiver_intro_talona
SAY @144 /* Welcome, Talontar. I know of the dark and spiteful goals of your cult, and I exult in them! Together we willl bring destruction and ruin, and profit aplenty for your church and ours. */ 
IF ~~ THEN GOTO talos_questgiver_main
END


IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)Kit(Player1,OHTEMPUS)~ BEGIN talos_questgiver_intro_tempus
SAY @145 /* Welcome, <CHARNAME>! You have always been a champion of the bloodiest aspects of your god. Tonight, I offer a chance for glorious battle, glorious chaos, glorious ruin! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~InPartySlot(LastTalkedToBy,0)Global("%var_priest_finale_quest%","GLOBAL",3)~ BEGIN talos_questgiver_intro_generic
SAY @146 /* Welcome, <CHARNAME>! Our faiths have often worked together to great glory and profit, and today they will do so again, and you will earn Talos's great favor! */ 
IF ~~ THEN GOTO talos_questgiver_main
END

IF ~~ BEGIN talos_questgiver_main
SAY @147 /* Do you know well the name of the Morninglord, Lathander? Remember it well, for it is the name of the enemy. On them you will bring ruin in the holy cause of death and mayhem. */
= #36231
IF ~~ THEN REPLY #36324 GOTO finale_talos_what_to_do
IF ~~ THEN REPLY #36325 GOTO finale_talos_what_to_do
IF ~~ THEN REPLY @148 /* All will fear our alliance. What must I do? */ GOTO finale_talos_what_to_do
END

IF ~~ BEGIN finale_talos_what_to_do
SAY #36327 
= #36328
IF ~~ THEN DO 
~SetGlobal("%var_priest_finale_quest%","GLOBAL",4)
SetGlobal("Challenge","GLOBAL",0)
SetGlobal("TalonWar","GLOBAL",1)
SetGlobal("TempleShout0902","GLOBAL",1)
~
EXIT
END

IF ~Global("TalonWar","GLOBAL",1)!Dead("dawnmas")~ BEGIN finale_talos_holding_pattern
SAY #36329
IF ~~ THEN EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)Global("TalonWar","GLOBAL",1)Dead("dawnmas")~ BEGIN finale_talos_success
SAY #36330
IF ~Global("dw-malar-kit","GLOBAL",1)~ THEN REPLY @149 /* It was a High Hunt like no other - the high priest of mewling Lathander struck down in Malar's name! */ GOTO finale_talos_denouement_malar
IF ~Global("dw-auril-kit","GLOBAL",1)~ THEN REPLY @150 /* And the cold fury of the Frostmaiden has been unleashed! */ GOTO finale_talos_denouement_auril
IF ~Global("dw-azuth-kit","GLOBAL",1)~ THEN REPLY @151 /* I care not. I aided you here for my own reasons. */ GOTO finale_talos_denouement_azuth
IF ~Global("dw-bane_xvim-kit","GLOBAL",1)~ THEN REPLY @152 /* I sought not just destruction, but fear. Now the weaklings of Athkatla know that they will be safe only if they submit */ GOTO finale_talos_denouement_bane_xvim
IF ~Global("dw-bhaal_cyric-kit","GLOBAL",1)~ THEN REPLY @153 /* Do not think that this is more than a temporary alliance, Nallahir. Cyric brooks no rival. */ GOTO finale_talos_denouement_bhaal_cyric
IF ~Global("dw-gruumsh-kit","GLOBAL",1)~ THEN REPLY @154 /* The blood flowed! The thunder rolled! Truly, this was a night of mayhem! */ GOTO finale_talos_denouement_gruumsh
IF ~Global("dw-kossuth-kit","GLOBAL",1)~ THEN REPLY @155 /* The temple of the Morninglord burns! The fires rise to the night, and all Athkatla will fear the fury of Kossuth! */ GOTO finale_talos_denouement_kossuth
IF ~Global("dw-mask-kit","GLOBAL",1)~ THEN REPLY @156 /* My lord prefers a subtler touch, yet this serves his will also. In the night, our wrath came; Athkatla awoke to it, and learned to fear us. */ GOTO finale_talos_denouement_mask
IF ~Global("dw-shar-kit","GLOBAL",1)~ THEN REPLY @157 /* Dawn will never come for those fools. Darkness has taken them, and the morning could not save them. */ GOTO finale_talos_denouement_shar
IF ~Global("dw-myrkul_velsharoon-kit","GLOBAL",1)~ THEN REPLY @158 /* And my lord, too, will be pleased. The meddling Lathanderites far too often interfere with his goals. */ GOTO finale_talos_denouement_myrkul_velsharoon
IF ~Global("dw-talona-kit","GLOBAL",1)~ THEN REPLY @159 /* And Athkatla has learned to fear the Lady of Poison. Her dark repute can only grow after tonight's deeds. */ GOTO finale_talos_denouement_talona
IF ~Kit(Player1,OHTEMPUS)~ THEN REPLY @160 /* It was a glorious battle! The Lathanderites fought bravely - they were worthy opponents! */ GOTO finale_talos_denouement_tempus




IF ~~ THEN REPLY #36333 GOTO finale_talos_denouement_general
IF ~~ THEN REPLY #36334 GOTO finale_talos_denouement_general
END

IF ~~ THEN BEGIN finale_talos_denouement_malar
SAY @161 /* I hope his death was long and bloody, as your creed demands. But you have done Talos's will, regardless! */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_auril
SAY @162 /* Indeed, the icy touch of your mistress claimed the Lathanderites! But you have done Talos's will, regardless! */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_azuth
SAY @163 /* Eh, if you wish to see it thus, do so - but you have done Talos's will, regardless! */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_bane_xvim
SAY @164 /* And only if they fear Talos, and your dark Lord! A good lesson, my friend, and a good day! */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_bhaal_cyric
SAY @165 /* And Talos does not care for upstart gods! But let us not quarrel in the moment of victory. You have done Talos's will, regardless of your own motives. */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_gruumsh
SAY @166 /* Indeed! An orgy of destruction, enough to sate both our gods for the moment. Here, let us drink to ruin and blood! */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_kossuth
SAY @167 /* Indeed they will - the fire of Kossuth, and the thunder of Talos! You have done the Storm Lord's will today, even as you serve your own master. */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_mask
SAY @168 /* Indeed. The shadow has fallen on the Lathanderites, and it will not lift. You have done the Storm Lord's will today, even as you serve your own master. */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_shar
SAY @169 /* Talos does not care for these subtleties - but what of it? We may have had different reasons for our alliance, but our triumph is beyond doubt! */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_myrkul_velsharoon
SAY @170 /* Our alliance remains strong, and benefits us both. You have done the Storm Lord's will today, even as you serve your own master. */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_talona
SAY @171 /* Let it be so! You have done the Storm Lord's will today, even as you serve your own mistress. Talos will not begrudge her share of fame. */
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_denouement_tempus
SAY @172 /* Worthy or not, their blood stains their burning temple, and that is what matters to the Storm Lord! You have done his will today! */
IF ~~ THEN GOTO finale_talos_reward
END


IF ~~ THEN BEGIN finale_talos_denouement_general
SAY #36331
IF ~~ THEN GOTO finale_talos_reward
END

IF ~~ THEN BEGIN finale_talos_reward
SAY @173 /* You have sanctuary here for as long as you wish it, for you walk with Talos, whether you acknowledge it or not. Let your footfalls crush the hopes of the peaceful everywhere! */
IF ~~ THEN DO ~AddExperienceParty(35000)GiveGoldForce(2000)SetGlobal("TalonWar","GLOBAL",2)SetAreaRestFlag(1)~ EXIT
END

IF ~Global("TalonWar","GLOBAL",2)~ THEN BEGIN finale_talos_aftermath
SAY @174 /* The destroyer returns! Welcome, and know your very shadow is respected here. Just don't stay too long lest your many enemies track you here. No offense. */
IF ~~ THEN EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN finale_talos_no_flunkies
  SAY #61128 /* ~Away fool! I speak to none but <CHARNAME>!~ */
  IF ~~ THEN EXIT
END

//// Sir Sarles quest - allied priests get the fancy rewards

EXTEND_BOTTOM scsain 17
IF ~Global("%var_priest_finale_allegiance%","GLOBAL",1)~ THEN GOTO scsain_ally_reward
IF ~Global("dw-sune-kit","GLOBAL",1)~ THEN GOTO scsain_sune_reward
END

APPEND scsain

IF ~~ BEGIN scsain_ally_reward
SAY @175 /* And since you are a <PRO_MANWOMAN> of faith and a worthy ally of our church, I will grant you a boon that is seldom given to those not of our faith. */
IF ~~ THEN GOTO 20
END

IF ~~ BEGIN scsain_sune_reward
SAY @176 /* And since you are a follower of Sune, I have a special gift for you - an artifact of your goddess that was left in our care some years past. You have served well the cause of Lathander. Go in peace. */
 IF ~~ THEN DO ~GiveItemCreate("RING22",[PC],1,1,1)
GiveGoldForce(1500)
~ GOTO 30
END

END

EXTEND_BOTTOM sctelwyn 17
IF ~Global("%var_priest_finale_allegiance%","GLOBAL",2)~ THEN GOTO sctelwyn_ally_reward
END

APPEND sctelwyn 

IF ~~ BEGIN sctelwyn_ally_reward
SAY @177 /* But mere gold is not worthy of your service. You are a <PRO_MANWOMAN> of faith and a true ally to Helm's cause. You deserve greater tools, even if they are seldom given to those not of our faith. */
IF ~~ THEN GOTO 20
END

END

EXTEND_BOTTOM scyarryl 17
IF ~Global("%var_priest_finale_allegiance%","GLOBAL",3)~ THEN GOTO scyarryl_ally_reward
END

APPEND scyarryl

IF ~~ BEGIN scyarryl_ally_reward
SAY @178 /* As an ally of our church, you have earned a true blessing. Your survival is now valued, so you will be given tools to assure it is so. */
IF ~~ THEN GOTO 20
END

END

