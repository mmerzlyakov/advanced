#
# ��������� ������� `cat`
#

CREATE TABLE `cat` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) NOT NULL default '',
  `catalog` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# ���� ������ ������� `cat`
#

INSERT INTO `cat` VALUES (1, 'factory12.jpg', '��������� ���������', '������������ ��������� ��������� ��� ���������� � ������������� �������.');
INSERT INTO `cat` VALUES (2, 'pentium.jpg', '��������� ������', '���� ������, � ����.');

#
# ��������� ������� `categ`
#

CREATE TABLE `categ` (
  `categ_id` int(11) NOT NULL auto_increment,
  `category` varchar(255) NOT NULL default '',
  `id` int(11) NOT NULL default '0',
  UNIQUE KEY `categ_id` (`categ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# ���� ������ ������� `categ`
#

INSERT INTO `categ` VALUES (1, '�������� OPC ��� ������������� ���������', 1);
INSERT INTO `categ` VALUES (2, '���������', 1);
INSERT INTO `categ` VALUES (3, '�������� OPC ��� �������� ���������', 1);
INSERT INTO `categ` VALUES (4, '������', 2);
INSERT INTO `categ` VALUES (5, '�������', 2);

#
# ��������� ������� `subcat`
#

CREATE TABLE `subcat` (
  `sub_id` int(11) NOT NULL auto_increment,
  `subcategory` text NOT NULL,
  `categ_id` int(11) NOT NULL default '0',
  UNIQUE KEY `sub_id` (`sub_id`)
)  ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# ���� ������ ������� `subcat`
#

INSERT INTO `subcat` VALUES (1, 'Canon', 1);
INSERT INTO `subcat` VALUES (2, 'Konica', 1);
INSERT INTO `subcat` VALUES (3, 'Minolta', 1);
INSERT INTO `subcat` VALUES (4, '��� �������, Master/Drum Units', 2);
INSERT INTO `subcat` VALUES (5, '��� ������. ���������, ������, Drum unit', 2);
INSERT INTO `subcat` VALUES (6, 'Elite', 3);
INSERT INTO `subcat` VALUES (7, 'Epson', 3);
INSERT INTO `subcat` VALUES (8, 'HP', 3);
INSERT INTO `subcat` VALUES (9, 'IBM', 3);
INSERT INTO `subcat` VALUES (10, 'Lexmark', 3);
INSERT INTO `subcat` VALUES (11, 'OKI', 3);
INSERT INTO `subcat` VALUES (12, 'Lexmark', 3);
INSERT INTO `subcat` VALUES (13, 'Samsung', 3);
INSERT INTO `subcat` VALUES (14, 'Hyperline', 4);
INSERT INTO `subcat` VALUES (15, 'Gewiss', 4);
INSERT INTO `subcat` VALUES (16, 'DKC', 4);
INSERT INTO `subcat` VALUES (17, 'Hyperline', 5);

#
# ��������� ������� `name_cat`
#

CREATE TABLE `name_cat` (
  `name_id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `price` double NOT NULL default '0',
  `sub_id` int(11) NOT NULL default '0',
  UNIQUE KEY `name_id` (`name_id`)
)  ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# ���� ������ ������� `name_cat`
#

INSERT INTO `name_cat` VALUES (1, '����������� Canon FC/PC-1/2/3/5/22/6/7/11,NP-1010/1020(Fuji)', '648.2', 1);
INSERT INTO `name_cat` VALUES (2, '����������� Canon FC/PC-210/230/310/330 (Fuji)', '526.4', 1);
INSERT INTO `name_cat` VALUES (3, '����������� Canon FC/PC-210/230/310/330 (Katun)', '810.6', 1);
INSERT INTO `name_cat` VALUES (4, '����������� Canon IR-1600/2000 (Master)', '1621.2', 1);
INSERT INTO `name_cat` VALUES (5, '����������� Canon IR-2200/2800/3300/GP-210/215/225 (Master)', '2025.8', 1);
INSERT INTO `name_cat` VALUES (6, '����������� Canon NP-1215/1015/1218/1510/1520/2010(Mitsubish', '648.2', 1);
INSERT INTO `name_cat` VALUES (7, '����������� Canon NP-1215/1550/2020/6216/6317 (Fuji)', '567', 1);
INSERT INTO `name_cat` VALUES (8, '����������� Canon NP-1215/1550/2020/6216/6317 (Katun)+������', '1215.2', 1);
INSERT INTO `name_cat` VALUES (9, '����������� Canon NP-6012/6112/6512 (Fuji)', '810.6', 1);
INSERT INTO `name_cat` VALUES (10, '����������� Canon NP-6016/6218/6521/6621 (������-Fuji)', '1134', 1);
INSERT INTO `name_cat` VALUES (11, '����������� Canon NP-6025/6030 (Fuji)', '1540', 1);
INSERT INTO `name_cat` VALUES (12, '����������� Canon NP-7161 (Fuji)', '1377.6', 1);
INSERT INTO `name_cat` VALUES (13, '����������� Konica U-bix 1015/1120/1212/1216/2223 (Fuji)', '3039.4', 2);
INSERT INTO `name_cat` VALUES (14, '����������� Minolta Di 152/183 (Master)', '2025.8', 3);
INSERT INTO `name_cat` VALUES (15, '����������� Minolta EP 1030 (Fuji)', '1702.4', 3);
INSERT INTO `name_cat` VALUES (16, '����������� Minolta EP 1050/1080/1052/1054/2010/2030 (Fuji)', '3039.4', 3);
INSERT INTO `name_cat` VALUES (17, 'Copy cartridge RX-5009/5310 (013R00059)', '5875.8', 4);
INSERT INTO `name_cat` VALUES (18, 'Copy cartridge RX-5316/5317 (013R00054)', '8913.8', 4);
INSERT INTO `name_cat` VALUES (19, 'Copy cartridge Xerox WC415/420 (101R00023)', '5672.8', 4);
INSERT INTO `name_cat` VALUES (20, 'Drum cartridge Sharp AL-1000 (AL100DR)', '3161.2', 4);
INSERT INTO `name_cat` VALUES (21, 'Drum cartridge Sharp AL-800 (AL80DR)', '2917.6', 4);
INSERT INTO `name_cat` VALUES (22, 'Drum cartridge Sharp AR-161/200/205 (AR200DM)', '3039.4', 4);
INSERT INTO `name_cat` VALUES (23, 'Drum cartridge Sharp Z-20/25 (ZT20DR)', '2269.4', 4);
INSERT INTO `name_cat` VALUES (24, 'Drum cartridge Sharp Z-30 (ZT30DR)', '4457.6', 4);
INSERT INTO `name_cat` VALUES (25, 'Drum cartridge Sharp Z-50/52 (ZT50DR)', '3647', 4);
INSERT INTO `name_cat` VALUES (26, 'Drum cartridge Sharp Z-810/830/840 (ZT81DR)', '2877', 4);
INSERT INTO `name_cat` VALUES (27, 'Drum Unit Canon IR1600/2000 C-EXV5', '3728.2', 4);
INSERT INTO `name_cat` VALUES (28, 'Drum cartridge Sharp FO-2600 (FO-26DR)', '2511.6', 5);
INSERT INTO `name_cat` VALUES (29, 'Drum Kit HP Color LJ 8500/8550 (C4153A)', '6483.4', 5);
INSERT INTO `name_cat` VALUES (30, 'Drum Unit Panasonic KX-P4400/KX-F3000/3100 (KX-PDM6)', '3161.2', 5);
INSERT INTO `name_cat` VALUES (31, 'Drum Unit Panasonic KX-P6100/6150 (KX-PEP3)', '5429.2', 5);
INSERT INTO `name_cat` VALUES (32, '�������� Canon EP-22 (HP LJ 1100/1100A, Canon LBP-800/1120)', '2107', 5);
INSERT INTO `name_cat` VALUES (33, '�������� Canon EP-25 (HP LJ 1000/1200, Canon LBP-1210)', '2431.8', 5);
INSERT INTO `name_cat` VALUES (34, '�������� Canon EP-A (HP LJ 5L/6L, Canon LBP-460/465/660)', '2391.2', 5);
INSERT INTO `name_cat` VALUES (35, '�������� Canon FX-3 ��� Fax L200/250/300/Multipass L60/90', '2958.2', 5);
INSERT INTO `name_cat` VALUES (36, '�������� Canon Type M ��� PC 1210D/1230D/1270D', '5997.6', 5);
INSERT INTO `name_cat` VALUES (37, '�������� Canon Type T ��� PC-D320/340/FAX-L400', '4538.8', 5);
INSERT INTO `name_cat` VALUES (38, '�������� EPL-5900L/6100/6100L (C13S050087), Toner', '4295.2', 5);
INSERT INTO `name_cat` VALUES (39, '����������� Elite XL 1208/Apple Laserwriter 300/360(Fuji)', '1174.6', 6);
INSERT INTO `name_cat` VALUES (40, '����������� Epson EPL 6000/TEC-1305 (Fuji)', '1458.8', 7);
INSERT INTO `name_cat` VALUES (41, '����������� Epson EPL 7000/Minolta SP-101 (Fuji)', '1418.2', 7);
INSERT INTO `name_cat` VALUES (42, '����������� HP LJ 1000w/1150/1200/1300 (Fuji)', '364', 8);
INSERT INTO `name_cat` VALUES (43, '����������� HP LJ 1000w/1150/1200/1300 (Master)', '324.8', 8);
INSERT INTO `name_cat` VALUES (44, '����������� HP LJ 1010/1012/1015 (Fuji)', '404.6', 8);
INSERT INTO `name_cat` VALUES (45, '����������� HP LJ 1010/1012/1015 (Master)', '364', 8);
INSERT INTO `name_cat` VALUES (46, '����������� HP LJ 2100/2200 (Fuji)', '526.4', 8);
INSERT INTO `name_cat` VALUES (47, '����������� HP LJ 2100/2200 (Master)', '485.8', 8);
INSERT INTO `name_cat` VALUES (48, '����������� HP LJ 2300 (Fuji)', '648.2', 8);
INSERT INTO `name_cat` VALUES (49, '����������� HP LJ 2300 (Master)', '607.6', 8);
INSERT INTO `name_cat` VALUES (50, '����������� HP LJ 4/4+/5, E� (Fuji)', '445.2', 8);
INSERT INTO `name_cat` VALUES (51, '����������� HP LJ 4/4+/5, E� (Master)', '364', 8);
INSERT INTO `name_cat` VALUES (52, '����������� HP LJ 4000 (Fuji)', '526.4', 8);
INSERT INTO `name_cat` VALUES (53, '����������� HP LJ 4000 (Master)', '485.8', 8);
INSERT INTO `name_cat` VALUES (54, '����������� HP LJ 4100 (Fuji)', '567', 8);
INSERT INTO `name_cat` VALUES (55, '����������� HP LJ 4100 (Master)', '526.4', 8);
INSERT INTO `name_cat` VALUES (56, '����������� HP LJ 4200/4300 (Fuji)', '688.8', 8);
INSERT INTO `name_cat` VALUES (57, '����������� HP LJ 4200/4300 (Master)', '607.6', 8);
INSERT INTO `name_cat` VALUES (58, '����������� HP LJ 4L/4P, PX (Fuji)', '404.6', 8);
INSERT INTO `name_cat` VALUES (59, '����������� HP LJ 4L/4P, PX (Master)', '364', 8);
INSERT INTO `name_cat` VALUES (60, '����������� HP LJ 4V/QMS 860/1660, BX (Fuji)', '770', 8);
INSERT INTO `name_cat` VALUES (61, '����������� HP LJ 5000 (Fuji)', '729.4', 8);
INSERT INTO `name_cat` VALUES (62, '����������� HP LJ 5000 (Master)', '688.8', 8);
INSERT INTO `name_cat` VALUES (63, '����������� HP LJ 5L/6L/1100, AX (Fuji)', '284.2', 8);
INSERT INTO `name_cat` VALUES (64, '����������� HP LJ 5L/6L/1100, AX (Master)', '243.6', 8);
INSERT INTO `name_cat` VALUES (65, '����������� HP LJ 5P/5MP/6P/6MP, VX (Fuji)', '324.8', 8);
INSERT INTO `name_cat` VALUES (66, '����������� HP LJ 5P/5MP/6P/6MP, VX (Master)', '284.2', 8);
INSERT INTO `name_cat` VALUES (67, '����������� HP LJ 5Si/8000, WX (Fuji)', '851.2', 8);
INSERT INTO `name_cat` VALUES (68, '����������� HP LJ 8100 (Fuji)', '891.8', 8);
INSERT INTO `name_cat` VALUES (69, '����������� HP LJ 8100 (Master)', '891.8', 8);
INSERT INTO `name_cat` VALUES (70, '����������� HP LJ 9000 (Master)', '1499.4', 8);
INSERT INTO `name_cat` VALUES (71, '����������� HP LJ II/III, SX (SC)', '404.6', 8);
INSERT INTO `name_cat` VALUES (72, '����������� HP LJ IIP/IIIP, LX (Fuji)', '445.2', 8);
INSERT INTO `name_cat` VALUES (73, '����������� IBM 4019 (Fuji)', '1013.6', 9);
INSERT INTO `name_cat` VALUES (74, '����������� IBM 4039 (Fuji)', '1013.6', 9);
INSERT INTO `name_cat` VALUES (75, '����������� Lexmark Optra-S (Master)', '932.4', 10);
INSERT INTO `name_cat` VALUES (76, '����������� Lexmark Optra-S (Static control)', '1093.4', 10);
INSERT INTO `name_cat` VALUES (77, '����������� OKI 400/800 (��������)', '1215.2', 11);
INSERT INTO `name_cat` VALUES (78, '����������� RX P8E/Lexmark Optra-E310 (Fuji)', '607.6', 10);
INSERT INTO `name_cat` VALUES (79, '����������� RX P8E/Lexmark Optra-E310 (Master)', '567', 10);
INSERT INTO `name_cat` VALUES (80, '����������� Samsung ML-1210/200/250/Phaser 3110 (Master)', '526.4', 13);
INSERT INTO `name_cat` VALUES (81, '����������� Samsung ML-1710/1510/1750/Phaser3120 (Master)', '729.4', 13);
INSERT INTO `name_cat` VALUES (82, 'Hyperline GC-0.5C ����� ����������� � ������� (������), ����. ������� 5 �� (100 ��.)', '33.93', 14);
INSERT INTO `name_cat` VALUES (83, 'Hyperline GC-1C ����� ����������� � ������� (������), ����. ������� 6�� (100 ��.)', '33.93', 14);
INSERT INTO `name_cat` VALUES (84, 'Hyperline GB-1 ����� ����������� � ������� (������), ����. ������� 3.2 �� (100 ��.)', '46.37', 14);
INSERT INTO `name_cat` VALUES (85, 'Hyperline GB-2 ����� ����������� � ������� (������), ����. ������� 5 �� (100 ��.)', '53.91', 14);
INSERT INTO `name_cat` VALUES (86, 'Hyperline GB-3 ����� ����������� � ������� (������), ����. ������� 7.2 �� (100 ��.)', '88.22', 14);
INSERT INTO `name_cat` VALUES (87, 'Hyperline GCL-1/4C ��������� ����� ��� ���� ��� ��������� ������ 5.9��, (100��)', '101.04', 14);
INSERT INTO `name_cat` VALUES (88, 'Hyperline GCL-3/8C ��������� ����� ��� ���� ��� ��������� ������ 9.1��, (100��)', '117.62', 14);
INSERT INTO `name_cat` VALUES (89, 'Hyperline GCL-1/2C ��������� ����� ��� ���� ��� ��������� ������ 12.2��, (100��)', '124.03', 14);
INSERT INTO `name_cat` VALUES (90, 'Hyperline GCL-9/16C ��������� ����� ��� ���� ��� ��������� ������ 13.8��, (100��)', '133.84', 14);
INSERT INTO `name_cat` VALUES (91, 'Hyperline GCL-3/4C ��������� ����� ��� ���� ��� ��������� ������ 18.6��, (100��)', '177.19', 14);
INSERT INTO `name_cat` VALUES (92, 'Hyperline GCL-7/8C ��������� ����� ��� ���� ��� ��������� ������ 21.8��, (100��)', '193.4', 14);
INSERT INTO `name_cat` VALUES (93, 'Hyperline GCL-1-1/8C ��������� ����� ��� ���� ��� ��������� ������ 27.9��, (100��)', '226.2', 14);
INSERT INTO `name_cat` VALUES (94, 'Gewiss GW50811 ����� �.10-11 �� (100 ��)', '245.43', 15);
INSERT INTO `name_cat` VALUES (95, 'Gewiss GW50812 ����� �.12-13 �� (100 ��)', '265.79', 15);
INSERT INTO `name_cat` VALUES (96, 'Gewiss GW50813 ����� �.14-15 �� (100 ��)', '289.16', 15);
INSERT INTO `name_cat` VALUES (97, 'Gewiss GW50814 ����� �.16-17 �� (100 ��)', '299.34', 15);
INSERT INTO `name_cat` VALUES (98, 'Gewiss GW50815 ����� �.19-20 �� (100 ��)', '320.07', 15);
INSERT INTO `name_cat` VALUES (99, 'Gewiss GW50816 ����� �.21-22 �� (100 ��)', '183.6', 15);
INSERT INTO `name_cat` VALUES (100, 'Gewiss GW50817 ����� �.25-26 �� (100 ��)', '236', 15);
INSERT INTO `name_cat` VALUES (101, 'Gewiss GW50818 ����� �.31-32 �� (100 ��)', '361.54', 15);
INSERT INTO `name_cat` VALUES (102, 'Gewiss GW50819 ����� �.38-40 �� (100 ��)', '457.3', 15);
INSERT INTO `name_cat` VALUES (103, 'Gewiss GW50820 ����� �.48-50 �� (100 ��)', '539.49', 15);
INSERT INTO `name_cat` VALUES (104, 'Gewiss GW50821 ����� � ����� ����������� �.10-11 �� (100 ��)', '245.43', 15);
INSERT INTO `name_cat` VALUES (105, 'Gewiss GW50822 ����� � ����� ����������� �.12-13 �� (100 ��)', '245.43', 15);
INSERT INTO `name_cat` VALUES (106, 'Gewiss GW50823 ����� � ����� ����������� �.14-15 �� (100 ��)', '265.79', 15);
INSERT INTO `name_cat` VALUES (107, 'Gewiss GW50824 ����� � ����� ����������� �.16-17 �� (100 ��)', '265.79', 15);
INSERT INTO `name_cat` VALUES (108, 'Gewiss GW50825 ����� � ����� ����������� �.19-20 �� (100 ��)', '289.16', 15);
INSERT INTO `name_cat` VALUES (109, 'Gewiss GW50826 ����� � ����� ����������� �.21-22 �� (100 ��)', '183.6', 15);
INSERT INTO `name_cat` VALUES (110, 'Gewiss GW50827 ����� � ����� ����������� �.25-26 �� (50 ��)', '204.33', 15);
INSERT INTO `name_cat` VALUES (111, 'DKC / ��� 51500 GT4G ������� 3-4 �� ����� ����������� � ������� (������), (100 ��.)', '77.66', 16);
INSERT INTO `name_cat` VALUES (112, 'DKC / ��� 51600 GT6G ������� 5-6 �� ����� ����������� � ������� (������), (100 ��.)', '77.66', 16);
INSERT INTO `name_cat` VALUES (113, 'DKC / ��� 51700 GT8G ������� 7-8 �� ����� ����������� � ������� (������), (100 ��.)', '105.94', 16);
INSERT INTO `name_cat` VALUES (114, 'DKC / ��� 51800 GT10G ������� 9-10 �� ����� ����������� � ������� (������), (100 ��.)', '105.94', 16);
INSERT INTO `name_cat` VALUES (115, 'DKC / ��� 51900 GT13G ������� 13-14 �� ����� ����������� � ������� (������), (100 ��.)', '117.25', 16);
INSERT INTO `name_cat` VALUES (116, 'DKC / ��� 52000 GT16G ������� 15-16 �� ����� ����������� � ������� (������), (100 ��.)', '141.75', 16);
INSERT INTO `name_cat` VALUES (117, 'DKC / ��� 52100 GT19G ������� 19-20 �� ����� ����������� � ������� (������), (100 ��.)', '212.25', 16);
INSERT INTO `name_cat` VALUES (118, 'DKC / ��� 52300 GT25G ������� 25-26 �� ����� ����������� � ������� (������), (100 ��.)', '530.44', 16);
INSERT INTO `name_cat` VALUES (119, 'Hyperline WMB-1 ������������� ������� (0-9), �������� (10 ������)', '218.66', 17);
INSERT INTO `name_cat` VALUES (120, 'Hyperline WMB-2 ������������� ������� (A-Z, /, +,-, 0-15), �������� (10 ������)', '218.66', 17);
INSERT INTO `name_cat` VALUES (121, 'Hyperline WMB-3 ������������� ������� (1-45), �������� (10 ������)', '218.66', 17);
INSERT INTO `name_cat` VALUES (122, 'Hyperline OM-3.5-0 ������� �� ������, �������, ����� 0, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (123, 'Hyperline OM-3.5-1 ������� �� ������, �������, ����� 1, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (124, 'Hyperline OM-3.5-2 ������� �� ������, �������, ����� 2, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (125, 'Hyperline OM-3.5-3 ������� �� ������, �������, ����� 3, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (126, 'Hyperline OM-3.5-4 ������� �� ������, �������, ����� 4, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (127, 'Hyperline OM-3.5-5 ������� �� ������, �������, ����� 5, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (128, 'Hyperline OM-3.5-6 ������� �� ������, �������, ����� 6, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (129, 'Hyperline OM-3.5-7 ������� �� ������, �������, ����� 7, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (130, 'Hyperline OM-3.5-8 ������� �� ������, �������, ����� 8, �����. ����. 4.2�� (100 ��)', '33.55', 17);
INSERT INTO `name_cat` VALUES (131, 'Hyperline OM-3.5-9 ������� �� ������, �������, ����� 9, �����. ����. 4.2�� (100 ��)', '33.55', 17);
    