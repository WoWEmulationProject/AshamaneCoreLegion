--
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `id`=22340;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=22340;

SET @Egg :=185211;
UPDATE `gameobject_template` SET `AIName`='' WHERE `entry` IN (@Egg);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Egg*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Egg*100+1 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Egg AND `source_type`=1;

DELETE FROM `pool_template` WHERE `entry` BETWEEN 11639 AND 11656;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(11639,1,"Cursed Egg#1"),
(11640,1,"Cursed Egg#2"),
(11641,1,"Cursed Egg#3"),
(11642,1,"Cursed Egg#4"),
(11643,1,"Cursed Egg#5"),
(11644,1,"Cursed Egg#6"),
(11645,1,"Cursed Egg#7"),
(11646,1,"Cursed Egg#8"),
(11647,1,"Cursed Egg#9"),
(11648,1,"Cursed Egg#10"),
(11649,1,"Cursed Egg#11"),
(11650,1,"Cursed Egg#12"),
(11651,1,"Cursed Egg#13"),
(11652,1,"Cursed Egg#14"),
(11653,1,"Cursed Egg#15"),
(11654,1,"Cursed Egg#16"),
(11655,1,"Cursed Egg#17"),
(11656,1,"Cursed Egg#18");

DELETE FROM `pool_gameobject` WHERE `guid` IN (26093,9683,26094,9681, 26095,9674, 26096,9676,26097,9672,165990,9671,9666, 9673,9667,9677,9668, 9678,9669,9680,9670,9679,9675,9682,9684,9685,9686,9687,9688,9689,9690,9691,9692,9693,9694,9695);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(26093,  11639, "Cursed Egg #1"),
(9683,   11639, "Cursed Egg #1"),
(26094,  11640, "Cursed Egg #2"),
(9681,   11640, "Cursed Egg #2"),
(26095,  11641, "Cursed Egg #3"),
(9674,   11641, "Cursed Egg #3"),
(26096,  11642, "Cursed Egg #4"),
(9676,    11642, "Cursed Egg #4"),
(26097,  11643, "Cursed Egg #5"),
(9672,   11643, "Cursed Egg #5"),
(165990, 11644, "Cursed Egg #6"),
(9671,   11644, "Cursed Egg #6"),
(9666,   11645, "Cursed Egg #7"),
(9673,   11645, "Cursed Egg #7"),
(9667,   11646, "Cursed Egg #8"),
(9677,   11646, "Cursed Egg #8"),
(9668,   11647, "Cursed Egg #9"),
(9678,   11647, "Cursed Egg #9"),
(9669,   11648, "Cursed Egg #10"),
(9680,   11648, "Cursed Egg #10"),
(9670,   11649, "Cursed Egg #11"),
(9679,   11649, "Cursed Egg #11"),
(9675,   11650, "Cursed Egg #12"),
(9682,   11650, "Cursed Egg #12"),
(9684,   11651, "Cursed Egg #13"),
(9685,   11651, "Cursed Egg #13"),
(9686,   11652, "Cursed Egg #14"),
(9687,   11652, "Cursed Egg #14"),
(9688,   11653, "Cursed Egg #15"),
(9689,   11653, "Cursed Egg #15"),
(9690,   11654, "Cursed Egg #16"),
(9691,   11654, "Cursed Egg #16"),
(9692,   11655, "Cursed Egg #17"),
(9693,   11655, "Cursed Egg #17"),
(9694,   11656, "Cursed Egg #18"),
(9695,   11656, "Cursed Egg #18");

DELETE FROM `gameobject` WHERE `id` IN (185210,185211);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(26093, 185210, 530, 0, 0, 1, 0, -3550.77, 5709.02, 0.0407527, 1.12387, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9683,  185211, 530, 0, 0, 1, 0, -3550.77, 5709.02, 0.0407527, 1.12387, 0, 0, 0.532825, 0.846226, 180, 100, 1, 0),
(26094, 185210, 530, 0, 0, 1, 0, -3568.11, 5772.55, -3.02607, 3.46437, 0, 0, 0.987005, -0.160689, 180, 100, 1, 0),
(9681,  185211, 530, 0, 0, 1, 0, -3568.11, 5772.55, -3.02607, 3.46437, 0, 0, 0.987005, -0.160689, 180, 100, 1, 0),
(26095, 185210, 530, 0, 0, 1, 0, -3674.04, 5709.53, -0.753326, 0.0958021, 0, 0, 0.0478827, 0.998853, 180, 100, 1, 0),
(9674,  185211, 530, 0, 0, 1, 0, -3674.04, 5709.53, -0.753326, 0.0958021, 0, 0, 0.0478827, 0.998853, 180, 100, 1, 0),
(26096, 185210, 530, 0, 0, 1, 0, -3669.77, 5715.84, -1.06872, 1.11918, 0, 0, 0.530837, 0.847474, 180, 100, 1, 0),
(9676,   185211, 530, 0, 0, 1, 0, -3669.77, 5715.84, -1.06872, 1.11918, 0, 0, 0.530839, 0.847473, 180, 100, 1, 0),
(26097, 185210, 530, 0, 0, 1, 0, -3692.92, 5728.49, -1.08262, 6.04755, 0, 0, 0.117545, -0.993068, 180, 100, 1, 0),
(9672,  185211, 530, 0, 0, 1, 0, -3692.92, 5728.49, -1.08262, 6.04755, 0, 0, 0.117545, -0.993068, 180, 100, 1, 0),
(165990, 185210, 530, 0, 0, 1, 0, -3687.32, 5732.72, -0.901197, 0.455512, 0, 0, 0.225792, 0.974176, 180, 100, 1, 0),
(9671,  185211, 530, 0, 0, 1, 0, -3687.32, 5732.72, -0.901197, 0.455512, 0, 0, 0.225792, 0.974176, 180, 100, 1, 0),
(9666,  185210, 530, 0, 0, 1, 0, -3678.76, 5733.7, -1.00135, 0.73039, 0, 0, 0.357131, 0.934054, 180, 100, 1, 0),
(9673,  185211, 530, 0, 0, 1, 0, -3678.76, 5733.7, -1.00135, 0.73039, 0, 0, 0.357131, 0.934054, 180, 100, 1, 0),
(9667,  185210, 530, 0, 0, 1, 0, -3660.27, 5810.96, 0.0255844, 5.41215, 0, 0, 0.421881, -0.906651, 180, 100, 1, 0),
(9677,  185211, 530, 0, 0, 1, 0, -3660.27, 5810.96, 0.0255844, 5.41215, 0, 0, 0.42188, -0.906652, 180, 100, 1, 0),
(9668,  185210, 530, 0, 0, 1, 0, -3639.24, 5831.28, 0.0740742, 0.067508, 0, 0, 0.0337476, 0.99943, 180, 100, 1, 0),
(9678,  185211, 530, 0, 0, 1, 0, -3639.24, 5831.28, 0.0740742, 0.067508, 0, 0, 0.0337476, 0.99943, 180, 100, 1, 0),
(9669,  185210, 530, 0, 0, 1, 0, -3568.88, 5808.19, -3.25185, 3.96701, 0, 0, 0.916037, -0.401094, 180, 100, 1, 0),
(9680,  185211, 530, 0, 0, 1, 0, -3568.88, 5808.19, -3.25185, 3.96701, 0, 0, 0.916038, -0.401092, 180, 100, 1, 0),
(9670,  185210, 530, 0, 0, 1, 0, -3579.48, 5817.77, -3.262, 2.74573, 0, 0, 0.980476, 0.19664, 180, 100, 1, 0),
(9679,  185211, 530, 0, 0, 1, 0, -3579.48, 5817.77, -3.262, 2.74573, 0, 0, 0.980475, 0.196642, 180, 100, 1, 0),
(9675,  185210, 530, 0, 0, 1, 0, -3560.05, 5771.58, -3.12615, -0.506145, 0, 0, 0.25038, -0.968148, 180, 100, 1, 0),
(9682,  185211, 530, 0, 0, 1, 0, -3560.05, 5771.58, -3.12615, -0.506145, 0, 0, -0.25038, 0.968148, 180, 100, 1, 0),
(9684,  185210, 530, 0, 0, 1, 0, -3624.428467, 5782.358, 1.242, 0.590728, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9685,  185211, 530, 0, 0, 1, 0, -3624.428467, 5782.358, 1.242, 0.590728, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9686,  185210, 530, 0, 0, 1, 0, -3620.726318, 5759.633, 1.737, 5.295265, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9687,  185211, 530, 0, 0, 1, 0, -3620.726318, 5759.633, 1.737, 5.295265, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9688,  185210, 530, 0, 0, 1, 0, -3625.974121, 5752.484, 1.734, 5.118557, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9689,  185211, 530, 0, 0, 1, 0, -3625.974121, 5752.484, 1.734, 5.118557, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9690,  185210, 530, 0, 0, 1, 0, -3663.873779, 5836.516, 0.083, 5.197107, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9691,  185211, 530, 0, 0, 1, 0, -3663.873779, 5836.516, 0.083, 5.197107, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9692,  185210, 530, 0, 0, 1, 0, -3680.917725, 5833.584, 0.515, 5.452358, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9693,  185211, 530, 0, 0, 1, 0, -3680.917725, 5833.584, 0.515, 5.452358, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9694,  185210, 530, 0, 0, 1, 0,-3538.941, 5702.7041, 1.0183, 0.629442, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0),
(9695,  185211, 530, 0, 0, 1, 0,-3538.941, 5702.7041, 1.0183, 0.629442, 0, 0, 0.532824, 0.846226, 180, 100, 1, 0);