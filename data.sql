-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: snm2728db
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filesdata`
--

DROP TABLE IF EXISTS `filesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filesdata` (
  `fileid` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(30) DEFAULT NULL,
  `filedata` longblob,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  KEY `userid` (`userid`),
  CONSTRAINT `filesdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdata` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesdata`
--

LOCK TABLES `filesdata` WRITE;
/*!40000 ALTER TABLE `filesdata` DISABLE KEYS */;
INSERT INTO `filesdata` VALUES (3,'regular expressions.py',_binary '#regular expression(regrex)\r\n\'\'\'a=\"codegnan is in vijayawada\"\r\nprint(a)\r\n\r\na=\"codegnan\\nis\\tin\\nvja\"\r\nprint(a)\'\'\'\r\n\r\n#rstring\r\n\'\'\'a=r\"codegnan\\nis\\tin\\nvja\"\r\nprint(a)\'\'\'\r\n\r\n#compile(),search(),findall().split(),sub()\r\n#sequence chracters:\r\n\'\'\'\\w->it matches alphanumeric   \r\n\\w->it matches non-alphanumeric   \r\n\\d->it matches any digit          \r\n\\D->it matches non -digit         \r\n\\s->it represent white spaces     \r\n\\S->it represents non-white spaces\'\'\'\r\n\r\n\r\n#compile()\r\n\r\n\r\n\'\'\'a=\"maths map cat code cash money nat cap dog donkey\"\r\nb=re.compile(r\"m\\w\\w\\w\\w\")\r\nprint(b)\'\'\'\r\n\r\n#search\r\n\'\'\'c=b.search(a)\r\nprint(c)\'\'\'\r\n\r\n\'\'\'d=re.search(r\"m\\w+\",a)\r\nprint(d)\r\n\r\n#findall\r\ne=re.findall(r\"m\\w+\",a)\r\nprint(*e)\'\'\'\r\n\r\n#split()\r\n\'\'\'x=re.split(r\"m\\w\",a)\r\nprint(x)\'\'\'\r\n\r\n\'\'\'y=re.split(r\"\\s\",a)\r\nprint(y)\r\n\r\nz=re.split(r\"\\S\",a)\r\nprint(z)\'\'\'\r\n\r\n\r\n#sub\r\n\'\'\'d=re.sub(r\"maths\",\"science\",a)\r\nprint(d)\'\'\'\r\n\r\n\'\'\'import re\r\na=\"year 2026 month 3 date 4\"\r\nb=re.findall(r\"\\d+\",a)\r\nprint(b)\'\'\'\r\n\r\n\r\n\'\'\'a=\"year 2026 month 2 date 15\"\r\nb=re.findall(\"\\D+\",a)\r\nprint(b)\'\'\'\r\n\r\n#bmi\r\nwhile True:\r\n    \r\n    height=float(input(\"entr the height in meters:\"))\r\n    weight=float(input(\"ent weight in kg:\"))\r\n    bmi=weight/(height**2)\r\n    print(\"your bmi is\",round(bmi,2))\r\n    if bmi<=18.5:\r\n        print(\"under weight\")\r\n    elif bmi>=18.5:\r\n        print(\"u are under healthy weight\")\r\n    elif bmi>=29.5:\r\n        print(\"under over weight\")\r\n    else:\r\n        print(\"obesity\")\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','2026-05-23 12:37:39',10),(5,'python practice.html',_binary '#using \r\n','2026-05-23 12:54:06',10),(6,'python test.py',_binary '#find min element in array\r\n\'\'\'def remove_min(arr):\r\n    if len(arr)==0:\r\n        return arr\r\n    min_val=min(arr)\r\n    arr.remove(min_val)\r\nnums=list(map(int,input(\"enter the nums:\").split()))\r\nprint(\"remove after element:\",min(nums))\'\'\'\r\n\r\n\r\n#find max element in array\'\'\r\n\'\'\'def remove_max(arr):\r\n    if len(arr)==0:\r\n        return arr\r\n        \r\n    max_val=max(arr)\r\n    arr.remove(max_val)\r\n    return arr\r\nnums=list(map(int,input(\"enter the nums:\").split()))\r\nprint(\"remove after maximu element:\",max(nums))\'\'\'\r\n\r\n\r\n#triangle pattern\r\n\'\'\'n=int(input(\"enter the number:\"))\r\nfor i in range(1,n+1):\r\n    for j in range(i):\r\n        print(\"*\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\'\'\'n=8\r\nfor i in range(1,n+1):\r\n    for j in range(i):\r\n        print(\"#\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\r\n\r\n#triangle pattern using aplhabets\r\n\'\'\'n=int(input(\"enter the number\"))\r\nfor i in range(1,n+1):\r\n    for j in range(1,i+1):\r\n        print(chr(64+j),end=\" \")\r\n    print()\'\'\'\r\n\r\n\r\n\'\'\'\r\nn=4\r\nfor i in range(1,n+1):\r\n    for j in range(1,i+1):\r\n        print(chr(64+j),end=\" \")\r\n    print()\'\'\'\r\n\r\n\'\'\'\r\nn=5\r\nfor i in range(1,n+1):\r\n    for j in range(1,i+1):\r\n        print(\"*\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\r\n\'\'\'n=5\r\nfor i in range(n,0,-1):\r\n    for j in range(i):\r\n        print(\"*\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\'\'\'\r\nn=5\r\nfor i in range(n,0,-1):\r\n    for j in range(1,i+1):\r\n        print(chr(64+j),end=\" \")\r\n    print()\'\'\'\r\n\r\n\r\n\r\n\'\'\'\r\ndef remove_min(arr):\r\n    if len(arr)==0:\r\n        return arr\r\n    min_val=min(arr)\r\n    arr.remove(min_val)\r\n    return arr\r\n        \r\nnums=list(map(int,input(\"enter the numbers:\").split()))\r\nprint(\"after removing elements:\",min(nums))\'\'\'\r\n\r\n\'\'\'def remove_max(arr):\r\n    if len(arr)==0:\r\n        return arr\r\n    max_val=max(arr)\r\n    arr.remove(max_val)\r\n    return arr\r\nnums=list(map(int,input(\"enter the numbers:\").split()))\r\nprint(max(nums))\'\'\'\r\n\r\n\r\n\'\'\'\r\nn=int(input(\"enter the numbers:\"))\r\nfor i in range(1,n+1):\r\n    for j in range(i):\r\n        print(\"*\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\'\'\'n=int(input(\"enter the num:\"))\r\nfor i in range(n,0,-1):\r\n    for j in range(i):\r\n        print(\"*\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\r\n\r\n\r\n\r\n\r\n\'\'\'\r\nn=int(input(\"enter the nums:\"))\r\nfor i in range(1,n+1):\r\n    for j in range(i):\r\n        print(chr(65+j),end=\" \")\r\n    print()\'\'\'\r\n    \r\n\r\n\'\'\'\r\n                                      for i in range(1,n+1):\r\n    for j in range(i):\r\n        print(\"*\",end=\" \")\r\n    print()\'\'\'\r\n\r\n\'\'\'\r\nn=int(input(\"enter the nums:\"))\r\nfor i in range(1,n+1):\r\n    for j in range(i):\r\n        print(chr(65+j),end=\" \")\r\n    print()\'\'\'\r\n\r\n\'\'\'\r\nn=int(input(\"enter the num:\"))\r\nfor i in range(1,n+1):\r\n    for j in range(1,i+1):\r\n        print(chr(64+j),end=\" \")\r\n    print()\'\'\'\r\n\r\n\r\n\r\n\'\'\'\r\nnums=list(map(int,input(\"enter the numbers:\").split()))\r\nlargest=nums[0]\r\nfor number in nums:\r\n    if number>largest:\r\n        largest=number\r\nprint(\"largest number:\",largest)\'\'\'\r\n\r\n\'\'\'#find largest number\r\nnum=list(map(int,input(\"enter the numbers:\").split()))\r\nlargest=num[0]\r\nfor number in num:\r\n    if number>largest:\r\n        largest=number\r\nprint(\"big number is:\",largest)\'\'\'\r\n        \r\n\r\n\'\'\'\r\nnum=list(map(int,input(\"enter the  numbers:\").split()))\r\nlargest=num[0]\r\nfor num1 in num:\r\n    if num1 >largest:\r\n        largest=num1\r\nprint(\"smallest numbers is :\",largest)\'\'\'\r\n\r\n\r\n    \r\n\r\n\r\n    \r\n\r\n\r\n\r\n\r\n\'\'\'\r\ndef remove_max(nums):\r\n    if len(nums)==0:\r\n        return nums\r\n    max_val=max(nums)\r\n    nums.remove(max_val)\r\n    return nums\r\n    \r\nnums=list(map(int,input(\"entr the numbrers\").split()))\r\nprint(\"maximum number is :\",remove_max(nums))\'\'\'\r\n\r\n                        \r\n\r\n\'\'\'\r\ndef remove_max(arr):\r\n    if len(arr)==0:\r\n        return arr\r\n        \r\n    max_val=max(arr)\r\n    arr.remove(max_val)\r\n    return arr\r\nnums=list(map(int,input(\"enter the nums:\").split()))\r\nprint(\"remove after maximu element:\",max(nums))\'\'\'\r\n\r\n\r\n\'\'\'\r\nn=int(input(\"enter the numbers:\"))\r\ncount=0\r\nfor i in range(0,n+1):\r\n    count+=i\r\nprint(\"sum the numbers:\",count)\'\'\'\r\n\r\n\r\n\r\n\'\'\'\r\nn=list(map(int,input(\"enter the numbers with spaces:\").split()))\r\ntotal=0\r\nfor i in n(1,n+1):\r\n    total+=i\r\nprint(\"adding n numbers:\",total)\'\'\'\r\n\r\n\'\'\'\r\nn=list(map(int,input(\"enter the numbers:\").split()))\r\ntotal=sum(n)\r\nprint(\"sum of n total=\",total)\'\'\'\r\n\r\n\'\'\'\r\nn=list(map(int,input(\"enter the numbers:\").split()))\r\ncount=0\r\nfor i in n:\r\n    count+=i\r\nprint(\"count numbers:\",count)\'\'\'\r\n\r\n\'\'\'\r\nn=list(map(int,input(\"enter the numbers:\").split()))\r\ncount=0\r\nfor i in range(1,n+1):\r\n    count*=i\r\nprint(\"count numbers:\",count)\'\'\'\r\n\r\n\r\n\'\'\'num=input(\"enter the words:\")\r\nd=num[::-1]\r\nprint(d)\'\'\'\r\n\r\n#to reverse the word\r\n\'\'\'num = input(\"enter the words: \")\r\nletters = [ch for ch in num if ch != \' \']\r\nletters = letters[::-1]\r\nresult = \"\"\r\nindex = 0\r\nfor ch in num:\r\n    if ch == \" \":\r\n        result += \" \"\r\n    else:\r\n        result += letters[index]\r\n        index += 1\r\nprint(result)\'\'\'\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','2026-05-23 13:11:56',10);
/*!40000 ALTER TABLE `filesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notesdata`
--

DROP TABLE IF EXISTS `notesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notesdata` (
  `notesid` int unsigned NOT NULL AUTO_INCREMENT,
  `notestitle` longtext,
  `notes_description` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `userid` (`userid`),
  CONSTRAINT `notesdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdata` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notesdata`
--

LOCK TABLES `notesdata` WRITE;
/*!40000 ALTER TABLE `notesdata` DISABLE KEYS */;
INSERT INTO `notesdata` VALUES (10,'hii hjk,d','bnsm,','2026-05-23 12:35:23',10);
/*!40000 ALTER TABLE `notesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdata` (
  `userid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `userpassword` varchar(50) NOT NULL,
  `userphone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES (1,'daniel','danielganjayela@gmail.com','Daniel@123456$','1234567890'),(2,'anjaneyulu','ganjayelaa@gmail.com','123456','1234567890'),(4,'balu','balavardhan0143@gmail.com','1234','1234567890'),(5,'dani','21it1030@gmail.com','0','1234567890'),(7,'anjaneyulu','anjaneyulua@gmail.com','123456','1234567890'),(8,'asad','hi2mdasad@gmail.com','1234','1234567890'),(10,'simha','simhadris147@gmail.com','1234','1234567890');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-27 13:28:17
