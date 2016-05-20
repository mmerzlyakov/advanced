#
# Структура таблицы `cat`
#

CREATE TABLE `cat` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) NOT NULL default '',
  `catalog` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Дамп данных таблицы `cat`
#

INSERT INTO `cat` VALUES (1, 'factory12.jpg', 'Расходные материалы', 'Всевозможные расходные материалы для печатующей и копировальной техники.');
INSERT INTO `cat` VALUES (2, 'pentium.jpg', 'Монтажная мелочь', 'Хоть мелочь, а надо.');

#
# Структура таблицы `categ`
#

CREATE TABLE `categ` (
  `categ_id` int(11) NOT NULL auto_increment,
  `category` varchar(255) NOT NULL default '',
  `id` int(11) NOT NULL default '0',
  UNIQUE KEY `categ_id` (`categ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Дамп данных таблицы `categ`
#

INSERT INTO `categ` VALUES (1, 'Барабаны OPC для копировальных аппаратов', 1);
INSERT INTO `categ` VALUES (2, 'Картриджи', 1);
INSERT INTO `categ` VALUES (3, 'Барабаны OPC для лазерных принтеров', 1);
INSERT INTO `categ` VALUES (4, 'Клипсы', 2);
INSERT INTO `categ` VALUES (5, 'Маркеры', 2);

#
# Структура таблицы `subcat`
#

CREATE TABLE `subcat` (
  `sub_id` int(11) NOT NULL auto_increment,
  `subcategory` text NOT NULL,
  `categ_id` int(11) NOT NULL default '0',
  UNIQUE KEY `sub_id` (`sub_id`)
)  ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Дамп данных таблицы `subcat`
#

INSERT INTO `subcat` VALUES (1, 'Canon', 1);
INSERT INTO `subcat` VALUES (2, 'Konica', 1);
INSERT INTO `subcat` VALUES (3, 'Minolta', 1);
INSERT INTO `subcat` VALUES (4, 'для копиров, Master/Drum Units', 2);
INSERT INTO `subcat` VALUES (5, 'для лазерн. принтеров, факсов, Drum unit', 2);
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
# Структура таблицы `name_cat`
#

CREATE TABLE `name_cat` (
  `name_id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `price` double NOT NULL default '0',
  `sub_id` int(11) NOT NULL default '0',
  UNIQUE KEY `name_id` (`name_id`)
)  ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Дамп данных таблицы `name_cat`
#

INSERT INTO `name_cat` VALUES (1, 'Фотобарабан Canon FC/PC-1/2/3/5/22/6/7/11,NP-1010/1020(Fuji)', '648.2', 1);
INSERT INTO `name_cat` VALUES (2, 'Фотобарабан Canon FC/PC-210/230/310/330 (Fuji)', '526.4', 1);
INSERT INTO `name_cat` VALUES (3, 'Фотобарабан Canon FC/PC-210/230/310/330 (Katun)', '810.6', 1);
INSERT INTO `name_cat` VALUES (4, 'Фотобарабан Canon IR-1600/2000 (Master)', '1621.2', 1);
INSERT INTO `name_cat` VALUES (5, 'Фотобарабан Canon IR-2200/2800/3300/GP-210/215/225 (Master)', '2025.8', 1);
INSERT INTO `name_cat` VALUES (6, 'Фотобарабан Canon NP-1215/1015/1218/1510/1520/2010(Mitsubish', '648.2', 1);
INSERT INTO `name_cat` VALUES (7, 'Фотобарабан Canon NP-1215/1550/2020/6216/6317 (Fuji)', '567', 1);
INSERT INTO `name_cat` VALUES (8, 'Фотобарабан Canon NP-1215/1550/2020/6216/6317 (Katun)+ракель', '1215.2', 1);
INSERT INTO `name_cat` VALUES (9, 'Фотобарабан Canon NP-6012/6112/6512 (Fuji)', '810.6', 1);
INSERT INTO `name_cat` VALUES (10, 'Фотобарабан Canon NP-6016/6218/6521/6621 (Россия-Fuji)', '1134', 1);
INSERT INTO `name_cat` VALUES (11, 'Фотобарабан Canon NP-6025/6030 (Fuji)', '1540', 1);
INSERT INTO `name_cat` VALUES (12, 'Фотобарабан Canon NP-7161 (Fuji)', '1377.6', 1);
INSERT INTO `name_cat` VALUES (13, 'Фотобарабан Konica U-bix 1015/1120/1212/1216/2223 (Fuji)', '3039.4', 2);
INSERT INTO `name_cat` VALUES (14, 'Фотобарабан Minolta Di 152/183 (Master)', '2025.8', 3);
INSERT INTO `name_cat` VALUES (15, 'Фотобарабан Minolta EP 1030 (Fuji)', '1702.4', 3);
INSERT INTO `name_cat` VALUES (16, 'Фотобарабан Minolta EP 1050/1080/1052/1054/2010/2030 (Fuji)', '3039.4', 3);
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
INSERT INTO `name_cat` VALUES (32, 'Картридж Canon EP-22 (HP LJ 1100/1100A, Canon LBP-800/1120)', '2107', 5);
INSERT INTO `name_cat` VALUES (33, 'Картридж Canon EP-25 (HP LJ 1000/1200, Canon LBP-1210)', '2431.8', 5);
INSERT INTO `name_cat` VALUES (34, 'Картридж Canon EP-A (HP LJ 5L/6L, Canon LBP-460/465/660)', '2391.2', 5);
INSERT INTO `name_cat` VALUES (35, 'Картридж Canon FX-3 для Fax L200/250/300/Multipass L60/90', '2958.2', 5);
INSERT INTO `name_cat` VALUES (36, 'Картридж Canon Type M для PC 1210D/1230D/1270D', '5997.6', 5);
INSERT INTO `name_cat` VALUES (37, 'Картридж Canon Type T для PC-D320/340/FAX-L400', '4538.8', 5);
INSERT INTO `name_cat` VALUES (38, 'Картридж EPL-5900L/6100/6100L (C13S050087), Toner', '4295.2', 5);
INSERT INTO `name_cat` VALUES (39, 'Фотобарабан Elite XL 1208/Apple Laserwriter 300/360(Fuji)', '1174.6', 6);
INSERT INTO `name_cat` VALUES (40, 'Фотобарабан Epson EPL 6000/TEC-1305 (Fuji)', '1458.8', 7);
INSERT INTO `name_cat` VALUES (41, 'Фотобарабан Epson EPL 7000/Minolta SP-101 (Fuji)', '1418.2', 7);
INSERT INTO `name_cat` VALUES (42, 'Фотобарабан HP LJ 1000w/1150/1200/1300 (Fuji)', '364', 8);
INSERT INTO `name_cat` VALUES (43, 'Фотобарабан HP LJ 1000w/1150/1200/1300 (Master)', '324.8', 8);
INSERT INTO `name_cat` VALUES (44, 'Фотобарабан HP LJ 1010/1012/1015 (Fuji)', '404.6', 8);
INSERT INTO `name_cat` VALUES (45, 'Фотобарабан HP LJ 1010/1012/1015 (Master)', '364', 8);
INSERT INTO `name_cat` VALUES (46, 'Фотобарабан HP LJ 2100/2200 (Fuji)', '526.4', 8);
INSERT INTO `name_cat` VALUES (47, 'Фотобарабан HP LJ 2100/2200 (Master)', '485.8', 8);
INSERT INTO `name_cat` VALUES (48, 'Фотобарабан HP LJ 2300 (Fuji)', '648.2', 8);
INSERT INTO `name_cat` VALUES (49, 'Фотобарабан HP LJ 2300 (Master)', '607.6', 8);
INSERT INTO `name_cat` VALUES (50, 'Фотобарабан HP LJ 4/4+/5, EХ (Fuji)', '445.2', 8);
INSERT INTO `name_cat` VALUES (51, 'Фотобарабан HP LJ 4/4+/5, EХ (Master)', '364', 8);
INSERT INTO `name_cat` VALUES (52, 'Фотобарабан HP LJ 4000 (Fuji)', '526.4', 8);
INSERT INTO `name_cat` VALUES (53, 'Фотобарабан HP LJ 4000 (Master)', '485.8', 8);
INSERT INTO `name_cat` VALUES (54, 'Фотобарабан HP LJ 4100 (Fuji)', '567', 8);
INSERT INTO `name_cat` VALUES (55, 'Фотобарабан HP LJ 4100 (Master)', '526.4', 8);
INSERT INTO `name_cat` VALUES (56, 'Фотобарабан HP LJ 4200/4300 (Fuji)', '688.8', 8);
INSERT INTO `name_cat` VALUES (57, 'Фотобарабан HP LJ 4200/4300 (Master)', '607.6', 8);
INSERT INTO `name_cat` VALUES (58, 'Фотобарабан HP LJ 4L/4P, PX (Fuji)', '404.6', 8);
INSERT INTO `name_cat` VALUES (59, 'Фотобарабан HP LJ 4L/4P, PX (Master)', '364', 8);
INSERT INTO `name_cat` VALUES (60, 'Фотобарабан HP LJ 4V/QMS 860/1660, BX (Fuji)', '770', 8);
INSERT INTO `name_cat` VALUES (61, 'Фотобарабан HP LJ 5000 (Fuji)', '729.4', 8);
INSERT INTO `name_cat` VALUES (62, 'Фотобарабан HP LJ 5000 (Master)', '688.8', 8);
INSERT INTO `name_cat` VALUES (63, 'Фотобарабан HP LJ 5L/6L/1100, AX (Fuji)', '284.2', 8);
INSERT INTO `name_cat` VALUES (64, 'Фотобарабан HP LJ 5L/6L/1100, AX (Master)', '243.6', 8);
INSERT INTO `name_cat` VALUES (65, 'Фотобарабан HP LJ 5P/5MP/6P/6MP, VX (Fuji)', '324.8', 8);
INSERT INTO `name_cat` VALUES (66, 'Фотобарабан HP LJ 5P/5MP/6P/6MP, VX (Master)', '284.2', 8);
INSERT INTO `name_cat` VALUES (67, 'Фотобарабан HP LJ 5Si/8000, WX (Fuji)', '851.2', 8);
INSERT INTO `name_cat` VALUES (68, 'Фотобарабан HP LJ 8100 (Fuji)', '891.8', 8);
INSERT INTO `name_cat` VALUES (69, 'Фотобарабан HP LJ 8100 (Master)', '891.8', 8);
INSERT INTO `name_cat` VALUES (70, 'Фотобарабан HP LJ 9000 (Master)', '1499.4', 8);
INSERT INTO `name_cat` VALUES (71, 'Фотобарабан HP LJ II/III, SX (SC)', '404.6', 8);
INSERT INTO `name_cat` VALUES (72, 'Фотобарабан HP LJ IIP/IIIP, LX (Fuji)', '445.2', 8);
INSERT INTO `name_cat` VALUES (73, 'Фотобарабан IBM 4019 (Fuji)', '1013.6', 9);
INSERT INTO `name_cat` VALUES (74, 'Фотобарабан IBM 4039 (Fuji)', '1013.6', 9);
INSERT INTO `name_cat` VALUES (75, 'Фотобарабан Lexmark Optra-S (Master)', '932.4', 10);
INSERT INTO `name_cat` VALUES (76, 'Фотобарабан Lexmark Optra-S (Static control)', '1093.4', 10);
INSERT INTO `name_cat` VALUES (77, 'Фотобарабан OKI 400/800 (Германия)', '1215.2', 11);
INSERT INTO `name_cat` VALUES (78, 'Фотобарабан RX P8E/Lexmark Optra-E310 (Fuji)', '607.6', 10);
INSERT INTO `name_cat` VALUES (79, 'Фотобарабан RX P8E/Lexmark Optra-E310 (Master)', '567', 10);
INSERT INTO `name_cat` VALUES (80, 'Фотобарабан Samsung ML-1210/200/250/Phaser 3110 (Master)', '526.4', 13);
INSERT INTO `name_cat` VALUES (81, 'Фотобарабан Samsung ML-1710/1510/1750/Phaser3120 (Master)', '729.4', 13);
INSERT INTO `name_cat` VALUES (82, 'Hyperline GC-0.5C Скоба пластиковая с гвоздем (клипса), макс. диаметр 5 мм (100 шт.)', '33.93', 14);
INSERT INTO `name_cat` VALUES (83, 'Hyperline GC-1C Скоба пластиковая с гвоздем (клипса), макс. диаметр 6мм (100 шт.)', '33.93', 14);
INSERT INTO `name_cat` VALUES (84, 'Hyperline GB-1 Скоба пластиковая с гвоздем (клипса), макс. диаметр 3.2 мм (100 шт.)', '46.37', 14);
INSERT INTO `name_cat` VALUES (85, 'Hyperline GB-2 Скоба пластиковая с гвоздем (клипса), макс. диаметр 5 мм (100 шт.)', '53.91', 14);
INSERT INTO `name_cat` VALUES (86, 'Hyperline GB-3 Скоба пластиковая с гвоздем (клипса), макс. диаметр 7.2 мм (100 шт.)', '88.22', 14);
INSERT INTO `name_cat` VALUES (87, 'Hyperline GCL-1/4C Кабельный хомут под винт для крепления кабеля 5.9мм, (100шт)', '101.04', 14);
INSERT INTO `name_cat` VALUES (88, 'Hyperline GCL-3/8C Кабельный хомут под винт для крепления кабеля 9.1мм, (100шт)', '117.62', 14);
INSERT INTO `name_cat` VALUES (89, 'Hyperline GCL-1/2C Кабельный хомут под винт для крепления кабеля 12.2мм, (100шт)', '124.03', 14);
INSERT INTO `name_cat` VALUES (90, 'Hyperline GCL-9/16C Кабельный хомут под винт для крепления кабеля 13.8мм, (100шт)', '133.84', 14);
INSERT INTO `name_cat` VALUES (91, 'Hyperline GCL-3/4C Кабельный хомут под винт для крепления кабеля 18.6мм, (100шт)', '177.19', 14);
INSERT INTO `name_cat` VALUES (92, 'Hyperline GCL-7/8C Кабельный хомут под винт для крепления кабеля 21.8мм, (100шт)', '193.4', 14);
INSERT INTO `name_cat` VALUES (93, 'Hyperline GCL-1-1/8C Кабельный хомут под винт для крепления кабеля 27.9мм, (100шт)', '226.2', 14);
INSERT INTO `name_cat` VALUES (94, 'Gewiss GW50811 Скоба д.10-11 мм (100 шт)', '245.43', 15);
INSERT INTO `name_cat` VALUES (95, 'Gewiss GW50812 Скоба д.12-13 мм (100 шт)', '265.79', 15);
INSERT INTO `name_cat` VALUES (96, 'Gewiss GW50813 Скоба д.14-15 мм (100 шт)', '289.16', 15);
INSERT INTO `name_cat` VALUES (97, 'Gewiss GW50814 Скоба д.16-17 мм (100 шт)', '299.34', 15);
INSERT INTO `name_cat` VALUES (98, 'Gewiss GW50815 Скоба д.19-20 мм (100 шт)', '320.07', 15);
INSERT INTO `name_cat` VALUES (99, 'Gewiss GW50816 Скоба д.21-22 мм (100 шт)', '183.6', 15);
INSERT INTO `name_cat` VALUES (100, 'Gewiss GW50817 Скоба д.25-26 мм (100 шт)', '236', 15);
INSERT INTO `name_cat` VALUES (101, 'Gewiss GW50818 Скоба д.31-32 мм (100 шт)', '361.54', 15);
INSERT INTO `name_cat` VALUES (102, 'Gewiss GW50819 Скоба д.38-40 мм (100 шт)', '457.3', 15);
INSERT INTO `name_cat` VALUES (103, 'Gewiss GW50820 Скоба д.48-50 мм (100 шт)', '539.49', 15);
INSERT INTO `name_cat` VALUES (104, 'Gewiss GW50821 Скоба с двумя отверстиями д.10-11 мм (100 шт)', '245.43', 15);
INSERT INTO `name_cat` VALUES (105, 'Gewiss GW50822 Скоба с двумя отверстиями д.12-13 мм (100 шт)', '245.43', 15);
INSERT INTO `name_cat` VALUES (106, 'Gewiss GW50823 Скоба с двумя отверстиями д.14-15 мм (100 шт)', '265.79', 15);
INSERT INTO `name_cat` VALUES (107, 'Gewiss GW50824 Скоба с двумя отверстиями д.16-17 мм (100 шт)', '265.79', 15);
INSERT INTO `name_cat` VALUES (108, 'Gewiss GW50825 Скоба с двумя отверстиями д.19-20 мм (100 шт)', '289.16', 15);
INSERT INTO `name_cat` VALUES (109, 'Gewiss GW50826 Скоба с двумя отверстиями д.21-22 мм (100 шт)', '183.6', 15);
INSERT INTO `name_cat` VALUES (110, 'Gewiss GW50827 Скоба с двумя отверстиями д.25-26 мм (50 шт)', '204.33', 15);
INSERT INTO `name_cat` VALUES (111, 'DKC / ДКС 51500 GT4G диаметр 3-4 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '77.66', 16);
INSERT INTO `name_cat` VALUES (112, 'DKC / ДКС 51600 GT6G диаметр 5-6 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '77.66', 16);
INSERT INTO `name_cat` VALUES (113, 'DKC / ДКС 51700 GT8G диаметр 7-8 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '105.94', 16);
INSERT INTO `name_cat` VALUES (114, 'DKC / ДКС 51800 GT10G диаметр 9-10 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '105.94', 16);
INSERT INTO `name_cat` VALUES (115, 'DKC / ДКС 51900 GT13G диаметр 13-14 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '117.25', 16);
INSERT INTO `name_cat` VALUES (116, 'DKC / ДКС 52000 GT16G диаметр 15-16 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '141.75', 16);
INSERT INTO `name_cat` VALUES (117, 'DKC / ДКС 52100 GT19G диаметр 19-20 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '212.25', 16);
INSERT INTO `name_cat` VALUES (118, 'DKC / ДКС 52300 GT25G диаметр 25-26 мм Скоба пластиковая с гвоздем (клипса), (100 шт.)', '530.44', 16);
INSERT INTO `name_cat` VALUES (119, 'Hyperline WMB-1 Самоклеющиеся маркеры (0-9), переплет (10 листов)', '218.66', 17);
INSERT INTO `name_cat` VALUES (120, 'Hyperline WMB-2 Самоклеющиеся маркеры (A-Z, /, +,-, 0-15), переплет (10 листов)', '218.66', 17);
INSERT INTO `name_cat` VALUES (121, 'Hyperline WMB-3 Самоклеющиеся маркеры (1-45), переплет (10 листов)', '218.66', 17);
INSERT INTO `name_cat` VALUES (122, 'Hyperline OM-3.5-0 Маркеры на кабель, круглые, цифра 0, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (123, 'Hyperline OM-3.5-1 Маркеры на кабель, круглые, цифра 1, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (124, 'Hyperline OM-3.5-2 Маркеры на кабель, круглые, цифра 2, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (125, 'Hyperline OM-3.5-3 Маркеры на кабель, круглые, цифра 3, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (126, 'Hyperline OM-3.5-4 Маркеры на кабель, круглые, цифра 4, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (127, 'Hyperline OM-3.5-5 Маркеры на кабель, круглые, цифра 5, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (128, 'Hyperline OM-3.5-6 Маркеры на кабель, круглые, цифра 6, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (129, 'Hyperline OM-3.5-7 Маркеры на кабель, круглые, цифра 7, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (130, 'Hyperline OM-3.5-8 Маркеры на кабель, круглые, цифра 8, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
INSERT INTO `name_cat` VALUES (131, 'Hyperline OM-3.5-9 Маркеры на кабель, круглые, цифра 9, внутр. диам. 4.2мм (100 шт)', '33.55', 17);
    