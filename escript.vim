" Vim syntax file
" Language:	Escript + POL functions
" Maintainer:	Marcin Biegun <biegun.m@gmail.com>
" Filenames:	*.src *.inc *.cfg *.em
" Last Change:	2010 Apr 17

if exists("b:current_syntax")
  finish
endif

syn case ignore

" Escript comments
syn match escriptLineComment "\/\/.*$"
syn region escriptBlockComment start="\/\*" end="\*\/"

" Escript operators
syn match escriptOperators "\~!@%^&*()\\-+=|/{}\[]:;\"'<>,.?" contained

" Escript function names
syn match escriptFunction1 "%function ^([a-zA-Z0-9_]+([0-9a-zA-Z_,:=+    ^-^"]++)^)$"
syn match escriptFunction2 "%exported function ^([a-zA-Z0-9_]+([0-9a-zA-Z_,:=+    ^-^"]++)^)$"

" Escript indenting
syn match escriptIndentStrings     "case|else|elseif|enum|for|foreach|function|if|program|repeat|while|do"
syn match escriptUnindentStrings   "else|elseif|endif|endfunction|endprogram|endwhile|endcase|endenum|endfor|endforeach|until|dowhile"
"syn match escriptOpenBraceStrings  "case|else|elseif|enum|for|foreach|function|if|program|repeat|while|do|\{|\(|\["
syn match escriptOpenBraceStrings  "case|else|elseif|enum|for|foreach|function|if|program|repeat|while|do"
"syn match escriptCloseBraceStrings "endcase|endif|endif|endenum|endfor|endforeach|endfunction|endif|endprogram|until|endwhile|dowhile|\}|\)|\]"
syn match escriptCloseBraceStrings "endcase|endif|endif|endenum|endfor|endforeach|endfunction|endif|endprogram|until|endwhile|dowhile"
"syn match escriptOpenFoldStrings   "case|enum|for|foreach|function|if|program|repeat|while|do|\{|\(|\["
syn match escriptOpenFoldStrings   "case|enum|for|foreach|function|if|program|repeat|while|do"
"syn match escriptCloseFoldStrings  "endcase|endenum|endfor|endforeach|endfunction|endif|endprogram|until|endwhile|dowhile|\}|\)|\]"
syn match escriptCloseFoldStrings  "endcase|endenum|endfor|endforeach|endfunction|endif|endprogram|until|endwhile|dowhile"

" Escript core keywords
syn keyword escriptCoreKeywords array const dictionary endprogram endfunction endwhile error function includ program struct use var

" Escript script keywords
"syn match escriptScriptKeywords "\!|\%|\&|\(|\)|\*|\+|\-|\.|\/\/|\/|\:|\;|\<|\=|\>|\[|\]|\^|and|break|byref|case|continue|default|downto|else|elseif|endcase|endenum|endfor|endforeach|endif|endwhile|enum|exported|for|foreach|if|in|not|or|repeat|return|to|until|while|\{|\||\}|\~"
syn match escriptScriptKeywords "and|break|byref|case|continue|default|downto|else|elseif|endcase|endenum|endfor|endforeach|endif|endwhile|enum|exported|for|foreach|if|in|not|or|repeat|return|to|until|while"

" Escript EM files
syn keyword escriptEmFiles ATTRIBUTES BASIC BASICIO BOAT CFGFILE CLILOC DATAFILE FILE GUILDS HTTP MATH NPC OS POLSYS STORAGE UO UTIL UNICODE VITALS

" Escript EM functions
syn keyword escriptEmFunctions ACos ASin ATan Abs Accessible AddAmount AddMenuItem AlterAttributeTemporaryMod AppendConfigFileElem AppendToFile ApplyConstraint ApplyDamage ApplyRawDamage AssignRectToWeatherRegion Attach BaseSkillToRawSkill Bin BoatFromItem Broadcast BroadcastUC CAsc CAscZ CChr CChrZ CDbl CInt CStr CancelTarget CanMove Ceil CheckLineOfSight CheckLosAt CheckLosBetween CheckSkill Clear_Event_Queue CloseGump CloseTradeWindow Compare ConstE ConstPi ConsumeMana ConsumeReagents ConsumeSubstance ConsumeVital CoordinateDistance Cos CreateAccount CreateDataFile CreateGuild CreateItemAtLocation CreateItemCopyAtLocation CreateItemInBackpack CreateItemInContainer CreateItemInInventory CreateMenu CreateMultiAtLocation CreateNpcFromTemplate CreatePacket CreateParty CreateRootItemInStorageArea CreateStorageArea Create_Debug_Context DegToRad DestroyGuild DestroyItem DestroyMulti DestroyRootItemInStorageArea Detach DisableEvents DisbandParty DisconnectClient Distance EnableEvents EnumerateItemsInContainer EnumerateOnlineCharacters EquipFromTemplate EquipItem EraseGlobalProperty EraseObjProperty Events_Waiting FileExists Find FindAccount FindConfigElem FindGuild FindObjtypeInContainer FindPath FindRootItemInStorageArea FindStorageArea FindSubstance Floor FormatRealToString GetAmount GetAttribute GetAttributeBaseValue GetAttributeCap GetAttributeDefaultCap GetAttributeIntrinsicMod GetAttributeLock GetAttributeName GetAttributeTemporaryMod GetCmdLevelName GetCmdLevelNumber GetCommandHelp GetConfigInt GetConfigIntKeys GetConfigMaxIntKey GetConfigReal GetConfigString GetConfigStringArray GetConfigStringDictionary GetConfigStringKeys GetCoordsInLine GetElemProperty GetEquipmentByLayer GetFacing GetGlobalProperty GetGlobalPropertyNames GetHarvestDifficulty GetItemDescriptor GetMapInfo GetMenuObjTypes GetMultiDimensions GetObjProperty GetObjPropertyNames GetObjType GetObjtypeByName GetPackageByName GetPid GetProcess GetProperty GetRegionName GetRegionString GetRegionNameAtLocation GetSpellDifficulty GetStandingHeight GetStandingLayers GetVital GetVitalMaximumValue GetVitalName GetVitalRegenRate GetWorldHeight GrantPrivilege HarvestResource HealDamage Hex IncRevision IsLegalMove Is_Critical IsStackable Len ListAccounts ListConfigElemProps ListDataFiles ListEquippedItems ListGhostsNearLocation ListGuilds ListHostiles ListItemsAtLocation ListItemsNearLocation ListItemsNearLocationOfType ListItemsNearLocationWithFlag ListMobilesInLineOfSight ListMobilesNearLocation ListMobilesNearLocationEx ListMultisInBox ListObjectsInBox ListStaticsAtLocation ListStaticsInBox ListStaticsNearLocation ListTextCommands ListenPoints LoadTusScpFile Log10 LogE LogToFile Lower MakeBoundingBox Max Min Move MoveBoat MoveBoatRelative MoveBoatXY MoveCharacterToLocation MoveItemToContainer MoveItemToLocation MoveItemToSecureTradeWin MOVEOBJECT_FORCELOCATION MOVEITEM_IGNOREMOVABLE MOVEOBJECT_NORMAL MoveObjectToLocation MoveObjectToRealm OpenDataFile OpenPaperdoll OpenURL Pack Packages PerformAction PlayLightningBoltEffect PlayMovingEffect PlayMovingEffectEx PlayMovingEffectXYZ PlayMovingEffectXYZEx PlayMusic PlayObjectCenteredEffect PlayObjectCenteredEffectEx PlaySoundEffect PlaySoundEffectXYZ PlaySoundEffectPrivate PlayStationaryEffect PlayStationaryEffectEx PolCore Pow Print PrintTextAbove PrintTextAboveCL PrintTextAbovePrivate PrintTextAbovePrivateCL PrintTextAbovePrivateUC PrintTextAboveUC QueryIP QueryParam RadToDeg RandomDiceRoll RandomFloat RandomInt RandomIntMinMax RawSkillToBaseSkill ReadConfigFile ReadFile ReadGameClock ReadMillisecondClock Realms RecalcVitals RegisterForSpeechEvents RegisterItemWithBoat ReleaseItem ReloadConfiguration RequestInput RequestInputUC ReserveItem RestartScript Resurrect RevokePrivilege Root RunAwayFrom RunAwayFromLocation RunToward RunTowardLocation Run_Script Run_Script_To_Completion SaveWorldState Say SayUC SecureTradeWin SelectColor SelectMenuItem2 Self SendBuyWindow SendCharacterRaceChanger SendDialogGump SendEvent SendInstaResDialog SendOpenBook SendOpenSpecialContainer SendPacket SendPartyMsg SendPrivatePartyMsg SendQuestArrow SendSellWindow SendSkillWindow SendStatus SendStringAsTipWindow SendSysMessage SendSysMessageCL SendSysMessageUC SendTextEntryGump SendViewContainer SetAnchor SetAttributeBaseValue SetAttributeCap SetAttributeLock SetAttributeTemporaryMod SetGlobalProperty SetName SetObjProperty SetOpponent SetProperty SetRegionLightLevel SetRegionWeatherLevel SetScriptController SetSysTrayPopupText SetVital SetWarMode Set_Critical Set_Debug Set_Event_Queue_Size Set_Priority Set_Script_Option Shutdown Sin SizeOf Sleep Sleepms SpeakPowerWords SplitWords Sqrt StartSpellEffect Start_Script StorageAreas StrFormatTime StrReplace Substr SubStrReplace SubtractAmount SysLog SystemFindBoatBySerial SystemFindObjectBySerial System_RPM Tan Target TargetCoordinates TargetMultiPlacement Trim TurnAwayFrom TurnAwayFromLocation TurnBoat TurnToward TurnTowardLocation TypeOf UnloadConfigFile UnloadDataFile Unload_Scripts Unpack UpdateMobile Upper UseItem Wait_For_Event WalkAwayFrom WalkAwayFromLocation WalkToward WalkTowardLocation Wander WriteFile WriteHTML WriteHTMLRaw

" Escript object members
syn match escriptObjectMembers "/.acct|/.acctname|/.alignment|/.all_scripts|/.allyguilds|/.amount|/.ar|/.ar_base|/.ar_mod|/.attached|/.attached_to|/.attribute|/.backpack|/.banned|/.buyprice|/.bytes_received|/.bytes_sent|/.call_depth|/.candidates|/.candidate_of_party|/.clientinfo|/.clientversion|/.clientver_detail|/.cmdlevel|/.cmdlevelstr|/.color|/.combat_operations_per_min|/.compiledate|/.compiletime|/.components|/.concealed|/.connected|/.consec_cycles|/.container|/.controller|/.corpsetype|/.createdat|/.criminal|/.cursor|/.damage|/.damage_cold|/.damage_cold_mod|/.damage_energy|/.damage_energy_mod|/.damage_fire|/.damage_fire_mod|/.damage_physical|/.damage_physical_mod|/.damage_poison|/.damage_poison_mod|/.dead|/.decayat|/.defaultcmdlevel|/.delay_mod|/.desc|/.dmg_mod|/.enabled|/.enemyguilds|/.equipscript|/.error_creations_per_min|/.errortext|/.evasionchance_mod|/.eventmask|/.events_per_min|/.facing|/.followers|/.followers_max|/.footprint|/.frozen|/.gender|/.getcorpse|/.globals|/.gold|/.graphic|/.guild|/.guildid|/.gump|/.gumpheight|/.gumpwidth|/.has_offline_mobiles|/.height|/.height|/.hidden|/.hitchance_mod|/.hitscript|/.hold|/.hp|/.instr_cycles|/.instr_per_min|/.intrinsic|/.invisible|/.iostats|/.ip|/.isopen|/.isUOKR|/.item|/.item_count|/.itemcount|/.items|/.langcode|/.layer|/.leader|/.locked|/.luck|/.mapid|/.master|/.maxhp|/.maxhp_mod|/.members|/.mobile|/.mobile_count|/.mobilecount|/.mobiles|/.movable|/.movemode|/.multi|/.murderer|/.name|/.newbie|/.npcdesc|/.npctemplate|/.num_globals|/.objtype|/.onhitscript|/.opponent|/.ownerserial|/.packages|/.paralyzed|/.party|/.partycanloot|/.passwordhash|/.pc|/.pid|/.poisoned|/.portplank|/.priority_divide|/.process|/.prompt|/.quality|/.queued_iostats|/.race|/.realm|/.reportables|/.resist_cold|/.resist_cold_mod|/.resist_energy|/.resist_energy_mod|/.resist_fire|/.resist_fire_mod|/.resist_physical|/.resist_physical_mod|/.resist_poison|/.resist_poison_mod|/.run_speed|/.saveonexit|/.script|/.script_profiles|/.sellprice|/.serial|/.shield|/.skill_checks_per_min|/.skillcap|/.sleep_cycles|/.source|/.speech_color|/.speech_font|/.squelched|/.stackable|/.starboardplank|/.statcap|/.state|/.stealthsteps|/.supports_http|/.sysload|/.sysload_severity|/.systime|/.tasks_late_per_min|/.tasks_late_ticks_per_min|/.tasks_ontime_per_min|/.texttype|/.tile_layer|/.tillerman|/.tithing|/.title_guild|/.title_prefix|/.title_race|/.title_suffix|/.toplevel_item_count|/.trading_with|/.truecolor|/.trueobjtype|/.type|/.uc_text|/.uclang|/.unequipscript|/.uptime|/.uo_expansion|/.use_adjustments|/.usernamepasswordhash|/.usescript|/.value|/.var_size|/.version|/.verstr|/.warmode|/.weapon|/.weight|/.width|/.x|/.xeast|/.xmax|/.xmin|/.xwest|/.y|/.ymax|/.ymin|/.ynorth|/.ysouth|/.z|"

" Escript object methods
syn match escriptObjectMethods "/.AddAllyGuild|/.addcandidate|/.AddEnemyGuild|/.addcharacter|/.AddMember|/.Add_Component|/.Append|/.AppendPin|/.attack_once|/.Ban|/.CheckPassword|/.Clear_Event_Queue|/.cleargottenitem|/.Clear_Script_Profile_Counters|/.Close|/.compareversion|/.CreateElement|/.Custom|/.Delete|/.DeleteCharacter|/.DeleteElement|/.Disable|/.Enable|/.Enabled|/.Erase|/.erase_component|/.ErasePin|/.EraseProp|/.Exists|/.FindElement|/.gameclock|/.GetCharacter|/.GetGottenItem|/.GetInt16|/.GetInt16Flipped|/.GetInt32|/.GetInt32Flipped|/.GetInt8|/.GetItemDescriptor|/.GetPins|/.GetProp|/.GetSize|/.GetString|/.GetUnicodeString|/.GetUnicodeStringFlipped|/.Get_Member|/.Insert|/.InsertPin|/.IsA|/.IsAllyGuild|/.IsEnemyGuild|/.IsMember|/.Keys|/.Kill|/.Log_Profile|/.Move_Char|/.Move_Offline_Mobiles|/.Open|/.Print|/.privileges|/.PropNames|/.RemoveAllyGuild|/.RemoveEnemyGuild|/.RemoveMember|/.RemoveReportable|/.Remove_Component|/.removecandidate|/.Reverse|/.SendAreaPacket|/.SendEvent|/.SendPacket|/.SetCmdLevel|/.SetCriminal|/.setdefaultcmdlevel|/.setfacing|/.SetInt16|/.SetInt16Flipped|/.SetInt32|/.SetInt32Flipped|/.SetInt8|/.setleader|/.SetLightLevel|/.SetMaster|/.SetMurderer|/.SetName|/.SetParalyzed|/.SetPassword|/.SetPoisoned|/.SetProp|/.SetSize|/.SetString|/.SetUnicodeString|/.SetWarMode|/.Set_Member|/.Set_Priority_Divide|/.SetUnicodeStringFlipped|/.Set_UO_Expansion|/.setswingtimer|/.Shrink|/.Size|/.Sort|/.SpendGold|/.Split|/.Squelch|/.Toggle|/.Transmit|/.TypeOf|/.UnBan"

" Escript constants
syn keyword escriptConstants _DEFAULT_CLCOLOR _DEFAULT_CLFONT _DEFAULT_REALM _DEFAULT_TEXT_COLOR _DEFAULT_TEXT_FONT _DEFAULT_UCCOLOR _DEFAULT_UCFONT ACTION_DIR_BACKWARD ACTION_DIR_FORWARD ACTION_NOREPEAT ACTION_REPEAT all attackhidden ATTRIBUTE_LOCK_DOWN ATTRIBUTE_LOCK_LOCKED ATTRIBUTE_LOCK_UP ATTRIBUTE_MAX_BASE AUX_Connection_Receive_Event clotheany CRMULTI_FACING_EAST CRMULTI_FACING_NORTH CRMULTI_FACING_SOUTH CRMULTI_FACING_WEST CRMULTI_IGNORE_ALL CRMULTI_IGNORE_MULTIS CRMULTI_IGNORE_OBJECTS CRMULTI_IGNORE_WORLDZ dblclickany DELETE_BY_PLAYER DELETE_BY_SCRIPT DF_KEYTYPE_INTEGER DF_KEYTYPE_STRING ENUMERATE_IGNORE_LOCKED ENUMERATE_ROOT_ONLY FACE_FORCE FACE_NORMAL firewhilemoving FINDSUBSTANCE_FIND_ALL FINDSUBSTANCE_IGNORE_LOCKED FINDSUBSTANCE_ROOT_ONLY FP_IGNORE_DOORS FP_IGNORE_MOBILES freemove hearghosts hiddenattack ignoredoors INSERT_ADD_ITEM INSERT_INCREASE_STACK invul ITEMS_IGNORE_MULTIS ITEMS_IGNORE_STATICS JOURNAL_PRINT_NAME JOURNAL_PRINT_YOU_SEE JOURNAL_UC_PRINT_NAME JOURNAL_UC_PRINT_YOU_SEE LH_FLAG_INCLUDE_HIDDEN LH_FLAG_LOS LISTENPT_HEAR_GHOSTS LISTEX_FLAG_CONCEALED LISTEX_FLAG_GHOST LISTEX_FLAG_HIDDEN LISTEX_FLAG_NORMAL LIST_IGNORE_Z LOG_DATETIME losany MAPDATA_FLAG_ALL MAPDATA_FLAG_ALLOWDROPON MAPDATA_FLAG_BLOCKING MAPDATA_FLAG_BLOCKSIGHT MAPDATA_FLAG_DROP_FLAGS MAPDATA_FLAG_GRADUAL MAPDATA_FLAG_MORE_SOLIDS MAPDATA_FLAG_MOVELAND MAPDATA_FLAG_MOVESEA MAPDATA_FLAG_MOVE_FLAGS MAPDATA_FLAG_NONE MAPDATA_FLAG_OVERFLIGHT MAPDATA_FLAG_WALKBLOCK MOVECHAR_FORCELOCATION moveany moveanydist MOVEITEM_FORCELOCATION MOVEITEM_NORMAL MOVETYPE_CORECREATE MOVETYPE_COREMOVE MOVETYPE_PLAYER MSGLEN_VARIABLE plogany POLCLASS_ARMOR POLCLASS_BOAT POLCLASS_CONTAINER POLCLASS_CORPSE POLCLASS_DOOR POLCLASS_EQUIPMENT POLCLASS_HOUSE POLCLASS_ITEM POLCLASS_LOCKABLE POLCLASS_MAP POLCLASS_MOBILE POLCLASS_MULTI POLCLASS_NPC POLCLASS_SPELLBOOK POLCLASS_UOBJECT POLCLASS_WEAPON RACE_HUMAN RACE_ELF REALM_BRITANNIA REALM_ILSHENAR REALM_MALAS REALM_TOKUNO renameany RESURRECT_FORCELOCATION SAY_DOEVENT_DISABLE SAY_DOEVENT_ENABLE SAY_TEXTTYPE_DEFAULT SAY_TEXTTYPE_WHISPER SAY_TEXTTYPE_YELL SCRIPTOPT_CAN_ACCESS_OFFLINE_MOBILES SCRIPTOPT_DEBUG SCRIPTOPT_NO_INTERRUPT SCRIPTOPT_NO_RUNAWAY seeghosts seehidden seeinvisitems showadv SYSEVENT_SPEECH SYSEVENT_ENGAGED SYSEVENT_DISENGAGED SYSEVENT_DAMAGED SYSEVENT_ENTEREDAREA SYSEVENT_LEFTAREA SYSEVENT_OPPONENT_MOVED SYSEVENT_HOSTILE_MOVED SYSEVENT_HOSTILE_MOVED SYSEVENT_MERCHANT_SOLD SYSEVENT_ITEM_GIVEN SYSEVENT_DOUBLECLICKED SYSEVENT_GHOST_SPEECH SYSEVENT_GONE_CRIMINAL SYSFIND_SEARCH_OFFLINE_MOBILES SYSFIND_SEARCH_STORAGE_AREAS TE_CANCEL_DISABLE TE_CANCEL_ENABLE TE_STYLE_DISABLE TE_STYLE_NORMAL TE_STYLE_NUMERICAL TGTOPT_CHECK_LOS TGTOPT_HARMFUL TGTOPT_HELPFUL TGTOPT_NEUTRAL TGTOPT_NOCHECK_LOS TILEDATA_FLAG_ANIMATED TILEDATA_FLAG_ARMOR TILEDATA_FLAG_BACKGROUND TILEDATA_FLAG_BRIDGE TILEDATA_FLAG_CONTAINER TILEDATA_FLAG_DAMAGING TILEDATA_FLAG_DOOR TILEDATA_FLAG_FOLIAGE TILEDATA_FLAG_IMPASSABLE TILEDATA_FLAG_INTERNAL TILEDATA_FLAG_LIGHTSOURCE TILEDATA_FLAG_MAP TILEDATA_FLAG_NODIAGONAL TILEDATA_FLAG_NOSHOOT TILEDATA_FLAG_PARTIAL_HUE TILEDATA_FLAG_PREFIX_A TILEDATA_FLAG_PREFIX_AN TILEDATA_FLAG_ROOF TILEDATA_FLAG_STACKABLE TILEDATA_FLAG_STAIRBACK TILEDATA_FLAG_STAIRRIGHT TILEDATA_FLAG_SURFACE TILEDATA_FLAG_TRANSLUCENT TILEDATA_FLAG_TRANSPARENT TILEDATA_FLAG_UNK TILEDATA_FLAG_UNK1 TILEDATA_FLAG_UNK2 TILEDATA_FLAG_WALL TILEDATA_FLAG_WEAPON TILEDATA_FLAG_WEARABLE TILEDATA_FLAG_WET TILEDATA_FLAG_WINDOW TRIM_BOTH TRIM_LEFT TRIM_RIGHT VENDOR_SEND_AOS_TOOLTIP

" Escript other functions
syn keyword escriptOtherFunctions ALCHEMY AP_AwardPoints AP_AwardRawAttributePoints AP_AwardTrainingPoints AP_BaseToRawSkill AP_ListAttributesByType AP_DoSkillCap AP_DoStatCap AP_GetBaseAttributeCap AP_GetLevelTitle AP_GetNeededRawPointsToIncrease AP_GetSkillCap AP_GetSkillStats AP_GetSkillTitle AP_GetStatCap AP_GetVitalRegenRateMod AP_RawToBaseSkill AP_SaveVitalRegenRateProp AP_SetSkillCap AP_SetStatCap AP_SetVitalRegenRateMod AP_SkillCheck AP_SkillCheckItem ANATOMY ANIMALLORE ARCANE ARCHERY ARMSLORE ARTISTRY BATTLEDEXTERITY BATTLEFOCUS BEGGING BLACKSMITHY BOWCRAFT CAMPING CARPENTRY CARTOGRAPHY CHIVALRY CLUMSY COOKING DETECTHIDDEN DEXTERITY DISCORDANCE EVALUATINGINTELLIGENCE FARMING FENCING FISHING FORENSICS FORENSICEVALUATION GetRaceAttributeBaseValue GREATERPATH HEALING HERDING HIDING HITS ITEMIDENTIFICATION INSCRIPTION INTELLIGENCE INVOCATION ITEMID LEADERSHIP LESSERPATH LOCKPICKING LUMBERJACKING MACEFIGHTING MAGERY MAGICRESISTANCE MANA MEDITATION MINING MORPHING MUSICIANSHIP MUSICIANSHIP NECROMANCY PANIC PARALYSE PARRY PEACEMAKING POISONING PROVOCATION REMOVETRAP RIDING SNOOPING SPIRITSPEAK STAMINA STAVES STEALING STEALTH STONEWORKING STRENGTH SWORDSMANSHIP TACTICS TAILORING TAMING TASTEID TINKERING TRACKING VETERINARY WRESTLING



" Config (ultra edit)
"L2"POL Config File"
"Nocase
"Line Comment = //
"Line Comment Alt = #
"Escape Char = \
"File Extensions = CFG
"Delimiters =     
"Function String = "%^([a-zA-Z0-9_ ]++^)[^p^r^n]{"
"Indent Strings = "{"
"Unindent Strings = "}"
"Open Brace Strings = "{"
"Close Brace Strings = "}"
"Open Fold Strings = "{"
"Close Fold Strings = "}"



"Comment Identifier Function PreProc Todo Include Special Delimiter Character Type
hi def link escriptLineComment Comment
hi def link escriptBlockComment Comment
hi def link escriptOperators Identifier
hi def link escriptFunction1 Function
hi def link escriptFunction2 Function
hi def link escriptIndentStrings Character
hi def link escriptUnindentStrings Identifier
hi def link escriptOpenBraceStrings Identifier
hi def link escriptCloseBraceStrings Identifier
hi def link escriptOpenFoldStrings Identifier
hi def link escriptCloseFoldStrings Identifier
hi def link escriptCoreKeywords Type
hi def link escriptScriptKeywords Type
hi def link escriptEmFunctions Function
hi def link escriptObjectMembers Special
hi def link escriptObjectMethods Special
hi def link escriptConstants PreProc
hi def link escriptOtherFunctions Function


let b:current_syntax = "escript"

" vim:set sw=4:
