-- MySQL dump 10.13  Distrib 5.5.43, for Win64 (x86)
--
-- Host: localhost    Database: dongshuai
-- ------------------------------------------------------
-- Server version	5.5.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` varchar(15) COLLATE utf8_bin NOT NULL,
  `adminpwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionbank`
--

DROP TABLE IF EXISTS `questionbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionbank` (
  `id` varchar(10) COLLATE utf8_bin NOT NULL,
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `answer` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionbank`
--

LOCK TABLES `questionbank` WRITE;
/*!40000 ALTER TABLE `questionbank` DISABLE KEYS */;
INSERT INTO `questionbank` VALUES ('1','浠ヤ笅鍦ㄨ剼鏈腑鍝竴椤规槸鍏ㄥ眬瀵硅薄锛堬級\r\nA document     B  window   C  location  D form ','B'),('10','鍦╤tml椤甸潰涓婏紝鎸変笅閿洏涓婄殑浠绘剰涓€涓敭鏃堕兘浼氳Е鍙慾avascript 鐨勶紙锛塡r\nA  onFocus   B onBlur    C onSubmit  D onKeyDown','D'),('11','浠ヤ笅鍝竴椤瑰彲浠ユ寚瀹氬彴寮忔満涓竷灞€鍏冪礌鍚戝彸鍋忕Щ4涓垪锛堬級\r\nA col-md-offset-4	B col-md-offget-4	    C col-offset-4	D col-offget-4','A'),('12','鍦?tbody>涓坊鍔犳枒椹嚎褰㈠紡鐨勬潯绾圭殑绫绘槸锛堬級\r\nA .table-bordered   B .table-hover    C .table-striped   D .table-condensed ','C'),('13','鏍呮牸鍙傛暟鍝竴椤归€傚悎澶у睆骞曪紙锛塡r\nA  col-xs-*   B  col-sm-*   C col-md-*   D col-lg-*','D'),('14','btn-warning鏄紙锛塡r\n A  缁胯壊鐨勬寜閽?  B 绾㈣壊鐨勬寜閽?    C 姗欒壊鐨勬寜閽?  D 鐧借壊鐨勬寜閽?,'C'),('15','dropdown鐨勫姛鑳芥槸锛堬級\r\nA 鍒涘缓涓嬫媺鑿滃崟   B 涓嬫媺鑿滃崟鐨勭鐢ㄩ」   C 鎸囧畾鍚戜笅寮瑰嚭鐨勪笅鎷夎彍鍗?  锛や笅鎷夎彍鍗曠殑鍒嗗壊绾?,'C'),('16','鎯宠鍋氬瀭鐩村紡鐨勮兌鍥婂鑸紝鐢ㄥ埌鐨勭被鏄紙锛塡r\nA nav-stacked   B nav-justified   C disabled  D active','A'),('17','鎻愪氦琛ㄥ崟鏃讹紝鍙互閫氳繃鍝釜灞炴€ц缃彁浜ょ殑鐩爣鏂囦欢锛堬級\r\nA  name  B method   C style  D action ','D'),('18','type灞炴€т负鍝竴椤规椂锛岃緭鍏ユ暟鎹笉浠ユ槑鏂囨樉绀猴紙锛塡r\nA  text   B銆€checked銆€銆€C   radio   D  password','D'),('19','鍝釜灞炴€х敤浜庤缃〃鍗曠殑璺ㄨ鍗曞厓鏍?锛堬級\r\nA cellspacing   B cellpadding  C rowspan   D colspan','C'),('2','(澶氶€?瀹氭椂鍣ㄧ殑璁剧疆鍙互閫夌敤鍝釜鏂规硶锛堬級\r\nA  setTimeout锛堬級 B  clearTimeout锛堬級 C   clearInterval   D  setInterval','AD'),('20','鏁翠釜椤甸潰鐨勮儗鏅鑹插簲璇ュ湪body鐨勫摢涓睘鎬ц繘琛岃缃紙锛塡r\nA div  B background-color   C銆€background-img   D color','B'),('21','椤甸潰杩涜鍙樻崲鏃讹紝榛樿鐨勫弬鐓у潗鏍囩郴缁焧ransform-origin鐨勫€兼槸锛堬級\r\nA 50%  0%   B 0% 0%    C 0% 50%  D 浠ヤ笂閮戒笉鏄?,'D'),('22','锛堝閫夛級鍏抽敭甯х敤锛堬級鏉ヨ瀹氬彉鍖栧彂鐢熺殑鏃堕棿\r\nA  鐧惧垎姣?   B 鍏抽敭瀛?from鍜?to    C px   D 鍒嗛挓 ','AB'),('23','浠ヤ笅鍝釜鏄缃秴閾炬帴鏈闂殑鐘舵€佹牱寮忥紵锛堬級\r\nA a:hover   B a:active   C a:visited   D  a:link','D'),('24','var  a=124涓紝a鏄粈涔堢被鍨嬬殑鏁版嵁锛堬級\r\nA 瀛楃涓?  B鏁板€笺€€銆€C 甯冨皵   銆€D鏈畾涔?,'B'),('25','浠ヤ笅杩愮畻涓紝鍝竴涓紭鍏堢骇鏈€楂橈紙锛塡r\nA *    B ++   C  ()    D ?  ','C'),('26','浠ヤ笅鍝釜鍗曡瘝涓嶅睘浜庤剼鏈殑淇濈暀瀛楋紙锛塡r\nA with   B  parent   C case   D void','B'),('27','(澶氶€夛級鐐圭嚎鍙互鐢ㄥ摢涓睘鎬ц缃紙锛塡r\nA border-style   B border    C border-image    D border-radius ','AB'),('28','js 鐗规€т笉鍖呮嫭锛堬級\r\nA 瑙ｉ噴鎬?   B鐢ㄤ簬瀹㈡埛绔€€ C鍩轰簬瀵硅薄銆€銆€D闈㈠悜瀵硅薄','D'),('29','锛堝閫夛級js涓殑鍑芥暟鍙互锛堬級\r\nA銆€宓屽璋冪敤    B宓屽瀹氫箟     C 娌℃湁杩斿洖鍊?  D浜嬩欢瑙﹀彂璋冪敤','ABCD'),('3','锛堝閫夛級DOM鏍囧噯琚垎涓哄摢3涓笉鍚岀殑閮ㄥ垎锛堬級\r\nA  XML DOM-閽堝XML鏂囨。鐨勬爣鍑嗘ā鍨?    B  鏍稿績DOM-閽堝浠讳綍缁撴瀯鍖栨枃妗ｇ殑鏍囧噯妯″瀷\r\nC  FUNCTION  DOM-閽堝鑴氭湰鍑芥暟鐨勬爣鍑嗘ā鏉?    D HTML DOM-閽堝HTML鏂囨。鐨勬爣鍑嗘ā鍨?,'ABD'),('30','浠ヤ笅鍝竴椤规槸鍥炴斁鍦板潃锛岀敤浜庤繘琛岀綉缁滆蒋浠舵祴璇曪紙锛塡r\nA 147.10.255.225    B 255.255.255.0   C 127.0.0.1  D 192.168.0.1','C'),('4','Body 鍜孎rame灞炰簬锛堬級\r\nA 鍚岃優鑺傜偣     B 鐖跺瓙鑺傜偣   C 鍖呭惈鑺傜偣   D 浠ヤ笂閮戒笉瀵?,'D'),('5','鍝釜鏂规硶鍙互鎶婃柊鑺傜偣娣诲姞鍒版寚瀹氳妭鐐癸紙锛塡r\nA insert Before锛堬級銆€  B  replaceChild锛堬級 銆€ C銆€removeChild锛堬級銆€D銆€appendChild()','D'),('6','HTML鏂囨。鐨勬爲鐘剁粨鏋勪腑锛岋紙锛夋爣绛句负鏂囨。鐨勬牴鑺傜偣锛屼綅浜庣粨鏋勪腑鐨勬渶椤剁\r\nA <head>     B <html>   C<body>   D <title>','B'),('7','锛堝閫夛級鍦―OM瀵硅薄妯″瀷涓紝鍝釜瀵硅薄浣嶄簬DOM瀵硅薄妯″瀷鐨勭浜屽眰锛堬級\r\nA  history      B   document      C   button    D text  ','AB'),('8','html 椤甸潰涓紝涓嶈兘oncharge浜嬩欢澶勭悊绋嬪簭鐩稿叧鐨勮〃鍗曞厓绱犳湁锛堬級\r\nA 鏂囨湰妗?  B銆€澶嶉€夋銆€銆€C銆€鍒楄〃妗嗐€€銆€銆€D 鎸夐挳','D'),('9','浠ヤ笅鍝釜鍙傛暟琛ㄧず鍙板紡鐢佃剳绗旇鏈紙锛塡r\nA銆€col-xs-*   B col-sm-*  C col-md-*   D col-lg-* ','C');
/*!40000 ALTER TABLE `questionbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentid` varchar(15) COLLATE utf8_bin NOT NULL,
  `studentpwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studentname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studentclass` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studenttel` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1700802060','123456','钁ｅ竻','172','18797151587'),('1700802064','123456','璋㈡辰鍗?,'172','17666522240'),('1700802066','123456','浣欓『寮?,'172','18697157545');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stutotea`
--

DROP TABLE IF EXISTS `stutotea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stutotea` (
  `studentid` varchar(15) COLLATE utf8_bin NOT NULL,
  `teacherid` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sendtime` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stutotea`
--

LOCK TABLES `stutotea` WRITE;
/*!40000 ALTER TABLE `stutotea` DISABLE KEYS */;
INSERT INTO `stutotea` VALUES ('1700802066','teacher','浣犲ソ鍟婏紝鑰佸笀','2019-12-20 17:20:40'),('1700802060','teacher','鑰佸笀浣犲ソ','2019-12-20 23:12:30'),('1700802060','teacher','浣犲湪鍝?,'2019-12-23 15:09:43');
/*!40000 ALTER TABLE `stutotea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuuploadhomeworkback`
--

DROP TABLE IF EXISTS `stuuploadhomeworkback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuuploadhomeworkback` (
  `studentid` varchar(15) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `score` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuuploadhomeworkback`
--

LOCK TABLES `stuuploadhomeworkback` WRITE;
/*!40000 ALTER TABLE `stuuploadhomeworkback` DISABLE KEYS */;
INSERT INTO `stuuploadhomeworkback` VALUES ('1700802060','1700802060钁ｅ竻绗簩娆′綔涓?docx','F:\\webTestData\\stuHomework\\back\\1700802060\\1700802060钁ｅ竻绗簩娆′綔涓?docx','78','绗簩娆′綔涓?),('1700802060','1700802060钁ｅ竻绗笁娆′綔涓?java','F:\\webTestData\\stuHomework\\back\\1700802060\\1700802060钁ｅ竻绗笁娆′綔涓?java','21','绗笁娆′綔涓?),('1700802060','1700802060钁ｅ竻绗洓娆′綔涓?docx','F:\\webTestData\\stuHomework\\back\\1700802060\\1700802060钁ｅ竻绗洓娆′綔涓?docx','99','绗洓娆′綔涓?);
/*!40000 ALTER TABLE `stuuploadhomeworkback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuuploadhomeworkfront`
--

DROP TABLE IF EXISTS `stuuploadhomeworkfront`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuuploadhomeworkfront` (
  `studentid` int(15) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `score` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuuploadhomeworkfront`
--

LOCK TABLES `stuuploadhomeworkfront` WRITE;
/*!40000 ALTER TABLE `stuuploadhomeworkfront` DISABLE KEYS */;
INSERT INTO `stuuploadhomeworkfront` VALUES (1700802066,'1700802066浣欓『寮虹浜屾浣滀笟.html','F:\\webTestData\\stuHomework\\front\\1700802066\\1700802066浣欓『寮虹浜屾浣滀笟.html','100','绗簩娆′綔涓?),(1700802066,'1700802066浣欓『寮虹涓夋浣滀笟.html','F:\\webTestData\\stuHomework\\front\\1700802066\\1700802066浣欓『寮虹涓夋浣滀笟.html','99','绗笁娆′綔涓?),(1700802066,'1700802066浣欓『寮虹鍥涙浣滀笟.html','F:\\webTestData\\stuHomework\\front\\1700802066\\1700802066浣欓『寮虹鍥涙浣滀笟.html','94','绗洓娆′綔涓?),(1700802064,'1700802064璋㈡辰鍗庣浜屾浣滀笟.html','F:\\webTestData\\stuHomework\\front\\1700802064\\1700802064璋㈡辰鍗庣浜屾浣滀笟.html','55','绗簩娆′綔涓?),(1700802064,'1700802064璋㈡辰鍗庣涓夋浣滀笟.html','F:\\webTestData\\stuHomework\\front\\1700802064\\1700802064璋㈡辰鍗庣涓夋浣滀笟.html','78','绗笁娆′綔涓?),(1700802064,'1700802064璋㈡辰鍗庣鍥涙浣滀笟.html','F:\\webTestData\\stuHomework\\front\\1700802064\\1700802064璋㈡辰鍗庣鍥涙浣滀笟.html','87','绗洓娆′綔涓?);
/*!40000 ALTER TABLE `stuuploadhomeworkfront` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacherid` varchar(11) COLLATE utf8_bin NOT NULL,
  `teacherpwd` varchar(255) COLLATE utf8_bin NOT NULL,
  `teachername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('teacher','123456','Lixinli'),('teacher2','123456','Sss'),('teacher3','123456','mm');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teatostu`
--

DROP TABLE IF EXISTS `teatostu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teatostu` (
  `teacherid` varchar(15) COLLATE utf8_bin NOT NULL,
  `studentid` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sendtime` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teatostu`
--

LOCK TABLES `teatostu` WRITE;
/*!40000 ALTER TABLE `teatostu` DISABLE KEYS */;
INSERT INTO `teatostu` VALUES ('teacher','1700802066','浣犱篃鏄?,'2019-12-20 17:20:58'),('teacher','1700802060','浣犲ソ','2019-12-20 23:12:39'),('teacher','1700802060','鏁欏','2019-12-23 15:09:57');
/*!40000 ALTER TABLE `teatostu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teauploadhomeworkback`
--

DROP TABLE IF EXISTS `teauploadhomeworkback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teauploadhomeworkback` (
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teachername` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teauploadhomeworkback`
--

LOCK TABLES `teauploadhomeworkback` WRITE;
/*!40000 ALTER TABLE `teauploadhomeworkback` DISABLE KEYS */;
INSERT INTO `teauploadhomeworkback` VALUES ('绗竴娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\back\\绗竴娆′綔涓?-servlet1.docx','2019-12-16','Lixinli'),('绗簩娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\back\\绗簩娆′綔涓?-rsa绠楁硶c璇█瀹炵幇瀹為獙鎶ュ憡.pdf','2019-12-31','Lixinli'),('绗笁娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\back\\绗笁娆′綔涓?-鎷︽埅鍣ㄥ疄楠屽崱.docx','2020-01-01','Lixinli'),('绗洓娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\back\\绗洓娆′綔涓?-缁煎悎缁冧範1.docx','2020-02-01','Lixinli');
/*!40000 ALTER TABLE `teauploadhomeworkback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teauploadhomeworkfront`
--

DROP TABLE IF EXISTS `teauploadhomeworkfront`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teauploadhomeworkfront` (
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teachername` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teauploadhomeworkfront`
--

LOCK TABLES `teauploadhomeworkfront` WRITE;
/*!40000 ALTER TABLE `teauploadhomeworkfront` DISABLE KEYS */;
INSERT INTO `teauploadhomeworkfront` VALUES ('绗竴娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\front\\绗竴娆′綔涓?-servlet1.docx','2019-12-16','Lixinli'),('绗簩娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\front\\绗簩娆′綔涓?-StudentsInfo.xls','2019-12-18','Lixinli'),('绗笁娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\front\\绗笁娆′綔涓?-ELGamal鏁板瓧绛惧悕.pdf','2020-03-31','Lixinli'),('绗洓娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\front\\绗洓娆′綔涓?-琛ㄥ崟缁冧範.html','2020-04-01','Lixinli'),('绗簲娆′綔涓?,'F:\\webTestData\\teaUploadHomework\\front\\绗簲娆′綔涓?-S02Servlet绋嬪簭寮€鍙戝疄渚嬩笂鏈烘墜鍐?doc','2020-12-12','Lixinli');
/*!40000 ALTER TABLE `teauploadhomeworkfront` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teauploadteachfile`
--

DROP TABLE IF EXISTS `teauploadteachfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teauploadteachfile` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `releasedate` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teachername` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teauploadteachfile`
--

LOCK TABLES `teauploadteachfile` WRITE;
/*!40000 ALTER TABLE `teauploadteachfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `teauploadteachfile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-24 17:19:19
