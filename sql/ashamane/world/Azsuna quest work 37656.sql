-- quest 37656
DELETE FROM smart_scripts WHERE entryorguid='90487';
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=90487;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (90487, 0, 0, 0, 38, 0, 100, 1, 0, 1, 0, 0, 80, 9048700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ts');
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (9048700, 9, 0, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 90474, 10, 0, 0, 0, 0, 0, 'data');
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (9048700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 90487, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (9048700, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 's1');
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (9048700, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'desp');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=240123;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=240122;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=240075;
DELETE FROM smart_scripts WHERE entryorguid='240123';
DELETE FROM smart_scripts WHERE entryorguid='240122';
DELETE FROM smart_scripts WHERE entryorguid='240075';
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (240123, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 90487, 10, 0, 0, 0, 0, 0, 'state data');
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (240122, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 90487, 10, 0, 0, 0, 0, 0, 'state data');
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES (240075, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 90487, 10, 0, 0, 0, 0, 0, 'state data');


INSERT INTO `conditions` VALUES (19, 0, 37499, 0, 0, 8, 0, 37656, 0, 0, 0, 0, 0, '', 'quest accept only if has quest');