-- --------------------------------------------------------------------------------------
--	ARENA TOP - 55333
-- --------------------------------------------------------------------------------------
SET
@Entry 		:= 55333,
@Model 	    := 31833, -- Blood Elf
@Name 		:= "Destroyer",
@Title 		:= "Top Arena Ranking",
@Icon 		:= "LootAll",
@GossipMenu := 0,
@MinLevel 	:= 80,
@MaxLevel 	:= 80,
@Faction 	:= 35,
@NPCFlag 	:= 3,
@Scale		:= 1.0,
@Rank		:= 0,
@Type 		:= 7,
@TypeFlags 	:= 0,
@FlagsExtra := 2,
@AIName		:= "SmartAI",
@Script 	:= "arenatop";

-- NPC in creature_template
DELETE FROM creature_template WHERE entry = @Entry;
INSERT INTO creature_template (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Entry, 0, 0, 0, 0, 0, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, 1, @Faction, @NPCFlag, 1, 1.14286, 1, 1, 20, @Scale, @Rank, 0, 2.4, 2000, 2000, 1, 1, 1, 2, 2048, 0, 0, 0, 0, 0, 0, @Type, @TypeFlags, 0, 0, 0, 0, 0, 0, 0, @AIName, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, @FlagsExtra, @Script, 12340);

-- Text in npc_text
DELETE FROM `npc_text` WHERE `ID`=@Entry;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (@Entry, 'Hey there, the name\'s Skinny. You feelin\' lucky?');

-- Model in creature_template_model
DELETE FROM `creature_template_model` WHERE `CreatureID`=@Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) 
VALUES (@Entry, 0, @Model, 1.0, 1, 12340);
