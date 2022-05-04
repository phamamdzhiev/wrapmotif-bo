-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: wrapstock
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressable_id` bigint unsigned NOT NULL,
  `addressable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_city_index` (`city`),
  KEY `address_country_index` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'billing address',1,'App\\Models\\Customer','Bahamastreet 8','Bahama’s city','Bulgaria','453673',NULL,'2021-08-13 08:25:01','2021-08-13 08:25:01',NULL),(2,'billing address',1,'App\\Models\\Company','Bahamastreet 8','Bahama’s city','Bulgaria','453673',NULL,'2021-08-13 08:25:04','2021-08-13 08:32:48',NULL),(3,'billing address',2,'App\\Models\\Customer','Alicia street','Alicia city','Belgium','Alicia zip code',NULL,'2021-08-19 13:01:53','2021-12-07 15:19:11',NULL),(4,'billing address',3,'App\\Models\\Customer','Ulon Link Road 120','Dhaka','Bangladesh','1219',NULL,'2021-09-16 12:28:56','2021-09-16 12:28:56',NULL),(5,'billing address',4,'App\\Models\\Customer','House:','Inside Dhaka Metro City','Bangladesh','1219',NULL,'2021-09-30 17:33:58','2021-09-30 17:33:58',NULL),(6,'billing address',5,'App\\Models\\Customer','10, Ulon Park Street','Dhaka','Bangladesh','1212',NULL,'2021-10-20 04:42:25','2021-10-20 04:42:25',NULL),(7,'billing address',6,'App\\Models\\Customer','Voluptatem Totam in','Eos ea enim est ull','Luxembourg','Similique sapiente e',NULL,'2021-10-21 06:10:37','2021-10-21 06:10:37',NULL),(8,'billing address',7,'App\\Models\\Customer','Rampura. Dhaka - 1219','Dhaka','Bangladesh','1219',NULL,'2021-11-22 04:55:20','2021-11-22 04:55:20',NULL),(9,'billing address',8,'App\\Models\\Customer','Atque laborum Conse','Nulla similique perf','Portugal','Earum excepteur aut',NULL,'2021-11-23 05:01:15','2021-11-23 05:01:15',NULL),(10,'billing address',9,'App\\Models\\Customer','Betricestraat 2','Antwerpen','Belgium','2000',NULL,'2021-12-06 11:08:21','2021-12-06 11:08:21',NULL),(11,'billing address',10,'App\\Models\\Customer','Kyiv','Salutna','Ukraine','25009',NULL,'2022-04-13 03:55:19','2022-04-13 03:55:19',NULL),(12,'billing address',11,'App\\Models\\Customer','Kosmonavtov, 32','Odesa','Ukraine','65125',NULL,'2022-04-13 18:36:47','2022-04-13 18:36:47',NULL),(13,'billing address',12,'App\\Models\\Customer','Sidi maarouf hay pam n74','CASABLANCA','Morocco','20280',NULL,'2022-04-19 16:23:18','2022-04-19 16:23:18',NULL),(14,'billing address',13,'App\\Models\\Customer','Hr','Rhynfd','Ukraine','82100',NULL,'2022-04-19 17:18:51','2022-04-19 17:18:51',NULL),(15,'billing address',14,'App\\Models\\Customer','Aut omnis eveniet q','Accusantium aut volu','Dominica','Dolore aliquip ducim',NULL,'2022-04-19 19:11:32','2022-04-19 19:11:32',NULL),(16,'billing address',15,'App\\Models\\Customer','Dolor odit assumenda','Saepe pariatur Quia','Burkina Faso','Sint et sint quibusd',NULL,'2022-04-19 19:12:04','2022-04-19 19:12:04',NULL),(17,'billing address',16,'App\\Models\\Customer','sadf','sadf','Bahrain','asdf',NULL,'2022-04-19 19:41:12','2022-04-19 19:41:12',NULL),(18,'billing address',17,'App\\Models\\Customer','Street','City','Afghanistan','76006',NULL,'2022-05-01 08:24:16','2022-05-01 08:24:16',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appearances`
--

DROP TABLE IF EXISTS `appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appearances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appearances`
--

LOCK TABLES `appearances` WRITE;
/*!40000 ALTER TABLE `appearances` DISABLE KEYS */;
INSERT INTO `appearances` VALUES (1,'hero','{\"title\": \"UNIVERSAL\", \"subtitle\": \"CAR WRAP DESIGNS\"}','2021-08-11 11:01:58','2022-03-19 13:13:14'),(2,'welcome_text','{\"title\": \"Turn heads on every street you cross with our top-notch car wrap designs\", \"description\": \"Do you want to be that head-turner? It\'s simple, choose a design you love, download it and contact a professional car wrapper. Didn\'t found your style? No worries, you can order a uniquely customized design of your imagination.\"}','2021-08-11 11:05:12','2021-12-17 13:11:14'),(3,'design','{\"title\": \"WRAPMOTIF DESIGNS\", \"subtitle\": \"only offered by us\", \"description\": \"Discover the visual 3D previews of our universal car wrap designs. Purchase your favorite design and download the ready-to-print files.\"}','2021-08-11 11:13:06','2022-03-18 22:17:01'),(4,'custom','{\"title\": \"Customized\", \"subtitle\": \"Something out of this world?\", \"description\": \"We got you covered! Just let us know what car wrap design you\'re after, and we\'ll bring your imagination to life.\"}','2021-08-11 11:16:04','2022-02-14 13:59:08'),(5,'partner','{\"show\": true, \"title\": \"Let\'s get it done\", \"subtitle\": \"PRINT AND WRAP\", \"description\": \"Start your journey to an outstanding car! Find a professional print & wrap shop nearby you, and deliver them the purchased files.\"}','2021-08-11 11:17:29','2022-02-14 13:57:31'),(6,'how_it_works','[]','2021-08-11 11:18:05','2021-08-11 11:18:05'),(7,'partner_page','{\"title\": \"TOGETHER WE\'RE STRONGER\", \"content\": \"<p>Are you a professional in car wrapping? Do you have experience in the application of vinyl graphics? Are you a certified installer or do you have certified installers working for you? Here\'s an opportunity from us to push your business forward and ace the game! Come forward as our partner and get registered on <a href=\\\"https://wrapmotif.com/wrapping-companies\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\"><u>our map</u></a>. Clients searching for professional wrappers in your region will be able to find you.&nbsp;Do you have a professional vinyl printer? <a href=\\\"https://wrapmotif.com/partner/become-partner\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(222, 139, 94);\\\"><u>Sign up as a partner too.</u></a></p>\"}','2021-08-11 11:24:15','2022-01-14 13:41:29'),(8,'terms_conditions','{\"title\": \"TERMS AND CONDITIONS\", \"general\": \"<p>These terms and conditions outline the rules and regulations for the use of PASO CLEANING EOOD\'s Website, located at <a href=\\\"https://www.wrapmotif.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">https://www.wrapmotif.com</a>, with its registered office at Veliko Tarnovo, ul. Musala 8, 5138, Bulgaria, hereinafter also “WRAPMOTIF”.</p><p><br></p><p>By accessing this website we assume you accept these terms and conditions. Do not continue to use this website if you do not agree to take all of the terms and conditions stated on this page.</p><p><br></p><p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \\\"Client\\\", \\\"You\\\" and \\\"Your\\\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \\\"The Company\\\", \\\"Ourselves\\\", \\\"We\\\", \\\"Our\\\" and \\\"Us\\\", refers to our Company. \\\"Party\\\", \\\"Parties\\\", or \\\"Us\\\", refers to both the Client and ourselves. All terms refer to the offer, acceptance, and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of the provision of the Company’s stated services, in accordance with and subject to, prevailing law of Bulgaria. Any use of the above terminology or other words in the singular, plural, capitalization, and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><p><br></p><p><strong>Cookies</strong></p><p>We employ the use of cookies. By accessing <a href=\\\"https://www.wrapmotif.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">https://www.wrapmotif.com</a>, you agreed to use cookies in agreement with the WRAPMOTIF\'s Privacy Policy.</p><p><br></p><p>Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><p><br></p><p><strong>Comments</strong></p><p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. WRAPMOTIF does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of WRAPMOTIF, its agents, and/or affiliates. Comments reflect the views and opinions of the person who posts their views and opinions. To the extent permitted by applicable laws, WRAPMOTIF shall not be liable for the Comments or for any liability, damages, or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p><br></p><p>WRAPMOTIF reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive, or cause a breach of these Terms and Conditions.</p><p><br></p><p>You warrant and represent that:</p><p><br></p><ul><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, including without limitation copyright, patent, or trademark of any third party;</li><li>The Comments do not contain any defamatory, libelous, offensive, indecent, or otherwise unlawful material which is an invasion of privacy</li><li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li><li>You hereby grant WRAPMOTIF a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats, or media.</li></ul><p><br></p><p><strong>Hyperlinking to our Content</strong></p><p>The following organizations may link to our Website without prior written approval:</p><p><br></p><ul><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li>System-wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p><br></p><p>These organizations may link to our home page, to publications, or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement, or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p><p><br></p><p>We may consider and approve other link requests from the following types of organizations:</p><p><br></p><ul><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law, and consulting firms; and</li><li>educational institutions and trade associations.</li></ul><p><br></p><p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of WRAPMOTIF, and (d) the link is in the context of general resource information.</p><p><br></p><p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement, or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p><p><br></p><p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to WRAPMOTIF. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait a few days for a response.</p><p><br></p><p>Approved organizations may hyperlink to our Website as follows:</p><p><br></p><ul><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li></ul><p><br></p><p>No use of WRAPMOTIF\'s logo or other artwork such as car wrap designs will be allowed for linking absent a trademark license agreement.</p><p><br></p><p><strong>iFrames</strong></p><p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><p><br></p><p><strong>Content Liability</strong></p><p>We shall not be held responsible for any content that appears on your Website. You agree to protect and defend us against all claims that are rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene, or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><p><br></p><p><strong>Your Privacy</strong></p><p>Please read Privacy Policy</p><p><br></p><p><strong>Reservation of Rights</strong></p><p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amend these terms and conditions and its linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><p><br></p><p><strong>Removal of links from our website</strong></p><p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us at any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p><br></p><p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><p><br></p><p><strong>Disclaimer</strong></p><p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><p><br></p><ul><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p><br></p><p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort, and for breach of statutory duty.</p><p><br></p><p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>\", \"license\": \"<p>Unless otherwise stated, WRAPMOTIF and/or its licensors own the intellectual property rights for all material on WRAPMOTIF. All intellectual property rights are reserved. You may access this from WRAPMOTIF for your own personal use subjected to restrictions set in these terms and conditions. </p><p><br></p><p><strong>License and use</strong></p><p>Your purchase of one of our car wrap designs in digital format constitutes our granting to you of a non-exclusive, non-sublicensable, non-transferable license to download and access that product for the purpose of your own personal use and reference. You agree that under no circumstances shall you use, or permit to be used, any product other than for the aforesaid purpose. </p><p><br></p><p>For the avoidance of doubt, you shall not:</p><p><br></p><ul><li>Apply a license (purchased car wrap design in digital format) on a car more than once. One time application only;</li><li>Share or distribute a license in any way that would allow others to use them without licenses;</li><li>Modify the car wrap design in any way to alter its appearance;</li><li>Sell, resell, rent, or sub-license material from WRAPMOTIF;</li><li>Reproduce, duplicate or copy material from WRAPMOTIF;</li><li>Redistribute content from WRAPMOTIF without its source link.</li></ul><p><br></p><p>This Agreement shall begin on the date hereof.</p><p><br></p>\", \"privacy\": \"<p>At WRAPMOTIF, accessible from <a href=\\\"https://www.wrapmotif.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">https://www.wrapmotif.com</a>, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by WRAPMOTIF and how we use it.</p><p><br></p><p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p><br></p><p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in <a href=\\\"https://www.wrapmotif.com/\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">https://www.wrapmotif.com</a>. This policy is not applicable to any information collected offline or via channels other than this website. </p><p><br></p><p><strong>Consent</strong></p><p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><p><br></p><p><strong>Information we collect</strong></p><p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p><br></p><p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p><br></p><p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><p><br></p><p><strong>How we use your information</strong></p><p>We use the information we collect in various ways, including to:</p><p><br></p><ul><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><p><br></p><p><strong>Log Files</strong></p><p>WRAPMOTIF follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and are a part of hosting services\' analytics. The information collected by log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><p><br></p><p><strong>Cookies and Web Beacons</strong></p><p>Like any other website, WRAPMOTIF uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><p><br></p><p>For more general information on cookies, please read more on the Cookie Consent website.</p><p><br></p><p><strong>Google DoubleClick DART Cookie</strong></p><p>Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL – <a href=\\\"https://policies.google.com/technologies/ads\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">https://policies.google.com/technologies/ads</a></p><p><br></p><p><strong>Our Advertising Partners</strong></p><p>Some of the advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has its own Privacy Policy for its policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p><p><br></p><ul><li>Google</li></ul><p>\\t\\t<a href=\\\"https://policies.google.com/technologies/ads\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">https://policies.google.com/technologies/ads</a></p><p><br></p><p><strong>Advertising Partners Privacy Policies</strong></p><p>You may consult this list to find the Privacy Policy for each of the advertising partners of WRAPMOTIF.</p><p><br></p><p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on WRAPMOTIF, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p><br></p><p>Note that WRAPMOTIF has no access to or control over these cookies that are used by third-party advertisers.</p><p><br></p><p><strong>Third-Party Privacy Policies</strong></p><p>WRAPMOTIF\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p><br></p><p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><p><br></p><p>CCPA Privacy Rights (Do Not Sell My Personal Information)</p><p>Under the CCPA, among other rights, California consumers have the right to:</p><p><br></p><p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p><br></p><p>Request that a business deletes any personal data about the consumer that a business has collected.</p><p><br></p><p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p><br></p><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p><br></p><p><strong>GDPR Data Protection Rights</strong></p><p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p><br></p><p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p><br></p><p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p><br></p><p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p><br></p><p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p><br></p><p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p><br></p><p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p><br></p><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p><br></p><p><strong>Children\'s Information</strong></p><p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p><br></p><p>WRAPMOTIF does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\", \"special\": \"<p>These special trading conditions set out the terms and conditions between you, the customer, and WRAPMOTIF (“us”, “we”), governing the use of our website and our downloadable digital products&nbsp;including the content therein (the “products”). Your use of our website, and purchase, download, and use of our products, constitutes your full acceptance of these terms and conditions. If you do not agree with these terms and conditions, you should not use our website or purchase, download, or use any of our products.</p><p><br></p><p><strong>Intellectual Property</strong></p><p>The products, whether modified or not, and all intellectual property and copyright contained therein, are and shall at all times remain our sole and exclusive property. You agree that under no circumstances, whether the product has been modified or not, shall you have or attempt to claim ownership of any intellectual property rights or copyright in the product.</p><p><br></p><p><strong>Refunds and chargebacks</strong></p><p>Once a product has been purchased by you, no right of cancellation or refund exists under the Consumer Protection (Distance Selling) Regulations 2000 due to the electronic nature of our products. Any refunds shall be at our sole and absolute discretion. You agree that under no circumstances whatsoever shall you initiate any chargebacks via your payment provider. You agree that any payments made by you for any of our products are final and may not be charged back. We reserve the right to alter any of our prices from time to time.</p><p><br></p><p><strong>Warranties and Liability</strong></p><p>We make every effort to ensure that our products are accurate, authoritative and fit for the use of our customers. However, we take no responsibility whatsoever for the suitability of the product, and we provide no warranties as to the function or use of the product, whether express, implied or statutory, including without limitation any warranties of merchantability or fitness for a particular purpose. You agree to indemnify us against all liabilities, claims, demands, expenses, actions, costs, damages, or loss arising out of your breach of these terms and conditions. Furthermore, we shall not be liable to you or any party for consequential, indirect, special or exemplary damages including but not limited to damages for loss of profits, business or anticipated benefits whether arising under tort, contract, negligence or otherwise whether or not foreseen, reasonably foreseeable or advised of the possibility of such damages.</p><p><br></p><p><strong>General</strong></p><p>These terms and conditions constitute the entire agreement and understanding between you and us for the supply of downloadable digital products, and shall supersede any prior agreements whether made in writing, orally, implied or otherwise. The failure by us to exercise or enforce any right(s) under these terms and conditions shall not be deemed to be a waiver of any such right(s) or operate so as to bar the exercise or enforcement thereof at any time(s) thereafter, as a waiver of another or constitute a continuing waiver. You agree that monetary damages may not be a sufficient remedy for the damage which may accrue to us by reason of your breach of these terms and conditions, therefore we shall be entitled to seek injunctive relief to enforce the obligations contained herein. The unenforceability of any single provision within these terms and conditions shall not affect any other provision hereof. These terms and conditions, your acceptance thereof, and our relationship with you shall be governed by and construed in accordance with Bulgarian law, and both us and you irrevocably submit to the exclusive jurisdiction of the Bulgarian courts over any claim, dispute or matter arising under or in connection with these terms and conditions or our relationship with you.</p><p><br></p><p><strong>Contacting us</strong></p><p>Please do not hesitate to contact us regarding any matter relating to this Downloadable Digital Products Special Terms and Conditions of Sale Policy via email info@wrapmotif.com.</p>\"}','2021-08-11 11:30:24','2021-11-28 12:46:00'),(9,'how_it_works_page','{\"title\": \"INSTRUCTIONS\", \"customer\": \"<ol><li>Buy your favorite universal design or order a custom design</li><li>Download the ready-to-print files</li><li>Contact a professional print and wrap shop for an appointment</li></ol><p><br></p><p><br></p>\", \"subtitle\": \"Follow these instructions to show off with an awesome restyled car.\", \"universal\": \"<p>What makes our designs fit any car?&nbsp;</p><p><br></p><ul><li>The use of simple patterns that are large enough so that the color fits nicely in the joints</li><li>Using unique patterns that do not have to match</li><li>Keeping away necessary matching patterns from critical joints</li></ul><p><br></p><p>Buy a universal design <a href=\\\"https://wrapmotif.com/designs\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\"><u>here</u></a>!</p>\"}','2021-08-11 11:32:52','2022-04-08 17:26:49'),(10,'custom_order','[]','2021-11-10 15:45:45','2021-11-10 15:45:45');
/*!40000 ALTER TABLE `appearances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Full Wrap Design',NULL,'2021-08-11 12:56:35','2022-03-24 12:34:22');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_changes`
--

DROP TABLE IF EXISTS `color_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color_changes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci,
  `colors` json DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deposit_amount` double NOT NULL DEFAULT '0',
  `customer_amount` double NOT NULL DEFAULT '0',
  `customer_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EUR',
  `vat` double NOT NULL DEFAULT '0',
  `vat_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '%',
  `vat_amount` double NOT NULL DEFAULT '0',
  `customer_vat_amount` double NOT NULL DEFAULT '0',
  `grand_total` double NOT NULL DEFAULT '0',
  `customer_grand_total` double NOT NULL DEFAULT '0',
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `color_changes_customer_id_foreign` (`customer_id`),
  KEY `color_changes_product_id_foreign` (`product_id`),
  KEY `color_change_product_name_index` (`product_name`),
  KEY `color_change_product_sku_index` (`product_sku`),
  CONSTRAINT `color_changes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `color_changes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_changes`
--

LOCK TABLES `color_changes` WRITE;
/*!40000 ALTER TABLE `color_changes` DISABLE KEYS */;
INSERT INTO `color_changes` VALUES (1,'2021-09-15',2,1,'Camo Lalo RED','38876','Camo Lalo Red and black color change','[{\"colorCode\": \"#6f2a2a\", \"description\": \"bordeaux bumper\"}, {\"colorCode\": \"#5f25cb\", \"description\": \"purple bonnet\"}]','bonnet in purple and bumper in bordeaux',30,30,'EUR',0,'%',0,0,30,30,'this is color change','completed','2021-09-15 14:14:55','2021-10-17 10:59:41',NULL);
/*!40000 ALTER TABLE `color_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gradient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (4,'Black','#000000','0','2021-08-11 12:22:33','2021-08-11 12:35:39'),(6,'White','#ffffff','0','2021-08-11 12:25:35','2021-08-11 12:25:35'),(7,'Gray','#808080','0','2021-08-11 12:26:20','2021-08-11 12:26:20'),(8,'Red','#ff0000','0','2021-08-11 12:26:56','2021-08-11 12:26:56'),(9,'Blue','#0000ff','0','2021-08-11 12:27:28','2021-08-11 12:27:28'),(10,'Yellow','#ffed00','0','2021-08-11 12:28:03','2021-08-11 12:31:15'),(11,'Orange','#ffa500','0','2021-08-11 12:29:04','2021-08-11 12:29:04'),(12,'Green','#009e3b','0','2021-08-11 12:29:59','2021-08-11 12:30:44'),(13,'Purple','#800080','0','2021-08-11 12:33:00','2021-08-11 12:33:00'),(14,'Brown','#964b00','0','2021-08-11 12:34:18','2021-08-11 12:34:18'),(15,'Pink','#ffc0cb','0','2021-08-11 12:37:03','2021-08-11 12:37:03'),(16,'Colorful','#d84141','1','2021-08-11 12:39:52','2021-08-11 12:39:52');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `commentable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint unsigned NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  KEY `comments_customer_id_foreign` (`customer_id`),
  KEY `commentable_index` (`commentable_id`,`commentable_type`),
  CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_name_unique` (`name`),
  UNIQUE KEY `countries_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','2021-08-11 06:51:59','2021-08-11 06:51:59'),(2,'Albania','AL','2021-08-11 06:51:59','2021-08-11 06:51:59'),(3,'Algeria','DZ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(4,'American Samoa','AS','2021-08-11 06:51:59','2021-08-11 06:51:59'),(5,'Andorra','AD','2021-08-11 06:51:59','2021-08-11 06:51:59'),(6,'Angola','AO','2021-08-11 06:51:59','2021-08-11 06:51:59'),(7,'Anguilla','AI','2021-08-11 06:51:59','2021-08-11 06:51:59'),(8,'Antarctica','AQ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(9,'Antigua','AG','2021-08-11 06:51:59','2021-08-11 06:51:59'),(10,'Argentina','AR','2021-08-11 06:51:59','2021-08-11 06:51:59'),(11,'Armenia','AM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(12,'Aruba','AW','2021-08-11 06:51:59','2021-08-11 06:51:59'),(13,'Australia','AU','2021-08-11 06:51:59','2021-08-11 06:51:59'),(14,'Austria','AT','2021-08-11 06:51:59','2021-08-11 06:51:59'),(15,'Azerbaijan','AZ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(16,'Bahamas','BS','2021-08-11 06:51:59','2021-08-11 06:51:59'),(17,'Bahrain','BH','2021-08-11 06:51:59','2021-08-11 06:51:59'),(18,'Bangladesh','BD','2021-08-11 06:51:59','2021-08-11 06:51:59'),(19,'Barbados','BB','2021-08-11 06:51:59','2021-08-11 06:51:59'),(20,'Belarus','BY','2021-08-11 06:51:59','2021-08-11 06:51:59'),(21,'Belgium','BE','2021-08-11 06:51:59','2021-08-11 06:51:59'),(22,'Belize','BZ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(23,'Benin','BJ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(24,'Bermuda','BM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(25,'Bhutan','BT','2021-08-11 06:51:59','2021-08-11 06:51:59'),(26,'Bolivia','BO','2021-08-11 06:51:59','2021-08-11 06:51:59'),(27,'Bosnia and Herzegovina','BA','2021-08-11 06:51:59','2021-08-11 06:51:59'),(28,'Botswana','BW','2021-08-11 06:51:59','2021-08-11 06:51:59'),(29,'Bouvet Island','BV','2021-08-11 06:51:59','2021-08-11 06:51:59'),(30,'Brazil','BR','2021-08-11 06:51:59','2021-08-11 06:51:59'),(31,'British lndian Ocean Territory','IO','2021-08-11 06:51:59','2021-08-11 06:51:59'),(32,'Brunei Darussalam','BN','2021-08-11 06:51:59','2021-08-11 06:51:59'),(33,'Bulgaria','BG','2021-08-11 06:51:59','2021-08-11 06:51:59'),(34,'Burkina Faso','BF','2021-08-11 06:51:59','2021-08-11 06:51:59'),(35,'Burundi','BI','2021-08-11 06:51:59','2021-08-11 06:51:59'),(36,'Cambodia','KH','2021-08-11 06:51:59','2021-08-11 06:51:59'),(37,'Cameroon','CM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(38,'Canada','CA','2021-08-11 06:51:59','2021-08-11 06:51:59'),(39,'Cape Verde','CV','2021-08-11 06:51:59','2021-08-11 06:51:59'),(40,'Cayman Islands','KY','2021-08-11 06:51:59','2021-08-11 06:51:59'),(41,'Central African Republic','CF','2021-08-11 06:51:59','2021-08-11 06:51:59'),(42,'Chad','TD','2021-08-11 06:51:59','2021-08-11 06:51:59'),(43,'Chile','CL','2021-08-11 06:51:59','2021-08-11 06:51:59'),(44,'China','CN','2021-08-11 06:51:59','2021-08-11 06:51:59'),(45,'Christmas Island','CX','2021-08-11 06:51:59','2021-08-11 06:51:59'),(46,'Cocos (Keeling) Islands','CC','2021-08-11 06:51:59','2021-08-11 06:51:59'),(47,'Colombia','CO','2021-08-11 06:51:59','2021-08-11 06:51:59'),(48,'Comoros','KM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(49,'Congo','CG','2021-08-11 06:51:59','2021-08-11 06:51:59'),(50,'Cook Islands','CK','2021-08-11 06:51:59','2021-08-11 06:51:59'),(51,'Costa Rica','CR','2021-08-11 06:51:59','2021-08-11 06:51:59'),(52,'Croatia (Hrvatska)','HR','2021-08-11 06:51:59','2021-08-11 06:51:59'),(53,'Cuba','CU','2021-08-11 06:51:59','2021-08-11 06:51:59'),(54,'Cyprus','CY','2021-08-11 06:51:59','2021-08-11 06:51:59'),(55,'Czech Republic','CZ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(56,'Democratic Republic of Congo','CD','2021-08-11 06:51:59','2021-08-11 06:51:59'),(57,'Denmark','DK','2021-08-11 06:51:59','2021-08-11 06:51:59'),(58,'Djibouti','DJ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(59,'Dominica','DM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(60,'Dominican Republic','DO','2021-08-11 06:51:59','2021-08-11 06:51:59'),(61,'East Timor','TP','2021-08-11 06:51:59','2021-08-11 06:51:59'),(62,'Ecudaor','EC','2021-08-11 06:51:59','2021-08-11 06:51:59'),(63,'Egypt','EG','2021-08-11 06:51:59','2021-08-11 06:51:59'),(64,'El Salvador','SV','2021-08-11 06:51:59','2021-08-11 06:51:59'),(65,'Equatorial Guinea','GQ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(66,'Eritrea','ER','2021-08-11 06:51:59','2021-08-11 06:51:59'),(67,'Estonia','EE','2021-08-11 06:51:59','2021-08-11 06:51:59'),(68,'Ethiopia','ET','2021-08-11 06:51:59','2021-08-11 06:51:59'),(69,'Falkland Islands (Malvinas)','FK','2021-08-11 06:51:59','2021-08-11 06:51:59'),(70,'Faroe Islands','FO','2021-08-11 06:51:59','2021-08-11 06:51:59'),(71,'Fiji','FJ','2021-08-11 06:51:59','2021-08-11 06:51:59'),(72,'Finland','FI','2021-08-11 06:51:59','2021-08-11 06:51:59'),(73,'France','FR','2021-08-11 06:51:59','2021-08-11 06:51:59'),(74,'France, Metropolitan','FX','2021-08-11 06:51:59','2021-08-11 06:51:59'),(75,'French Guiana','GF','2021-08-11 06:51:59','2021-08-11 06:51:59'),(76,'French Polynesia','PF','2021-08-11 06:51:59','2021-08-11 06:51:59'),(77,'French Southern Territories','TF','2021-08-11 06:51:59','2021-08-11 06:51:59'),(78,'Gabon','GA','2021-08-11 06:51:59','2021-08-11 06:51:59'),(79,'Gambia','GM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(80,'Georgia','GE','2021-08-11 06:51:59','2021-08-11 06:51:59'),(81,'Germany','DE','2021-08-11 06:51:59','2021-08-11 06:51:59'),(82,'Ghana','GH','2021-08-11 06:51:59','2021-08-11 06:51:59'),(83,'Gibraltar','GI','2021-08-11 06:51:59','2021-08-11 06:51:59'),(84,'Greece','GR','2021-08-11 06:51:59','2021-08-11 06:51:59'),(85,'Greenland','GL','2021-08-11 06:51:59','2021-08-11 06:51:59'),(86,'Grenada','GD','2021-08-11 06:51:59','2021-08-11 06:51:59'),(87,'Guadeloupe','GP','2021-08-11 06:51:59','2021-08-11 06:51:59'),(88,'Guam','GU','2021-08-11 06:51:59','2021-08-11 06:51:59'),(89,'Guatemala','GT','2021-08-11 06:51:59','2021-08-11 06:51:59'),(90,'Guinea','GN','2021-08-11 06:51:59','2021-08-11 06:51:59'),(91,'Guinea-Bissau','GW','2021-08-11 06:51:59','2021-08-11 06:51:59'),(92,'Guyana','GY','2021-08-11 06:51:59','2021-08-11 06:51:59'),(93,'Haiti','HT','2021-08-11 06:51:59','2021-08-11 06:51:59'),(94,'Heard and Mc Donald Islands','HM','2021-08-11 06:51:59','2021-08-11 06:51:59'),(95,'Honduras','HN','2021-08-11 06:51:59','2021-08-11 06:51:59'),(96,'Hong Kong','HK','2021-08-11 06:51:59','2021-08-11 06:51:59'),(97,'Hungary','HU','2021-08-11 06:51:59','2021-08-11 06:51:59'),(98,'Iceland','IS','2021-08-11 06:51:59','2021-08-11 06:51:59'),(99,'India','IN','2021-08-11 06:51:59','2021-08-11 06:51:59'),(100,'Indonesia','ID','2021-08-11 06:51:59','2021-08-11 06:51:59'),(101,'Iran (Islamic Republic of)','IR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(102,'Iraq','IQ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(103,'Ireland','IE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(104,'Israel','IL','2021-08-11 06:52:00','2021-08-11 06:52:00'),(105,'Italy','IT','2021-08-11 06:52:00','2021-08-11 06:52:00'),(106,'Ivory Coast','CI','2021-08-11 06:52:00','2021-08-11 06:52:00'),(107,'Jamaica','JM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(108,'Japan','JP','2021-08-11 06:52:00','2021-08-11 06:52:00'),(109,'Jordan','JO','2021-08-11 06:52:00','2021-08-11 06:52:00'),(110,'Kazakhstan','KZ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(111,'Kenya','KE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(112,'Kiribati','KI','2021-08-11 06:52:00','2021-08-11 06:52:00'),(113,'Korea, Democratic People\'s Republic of','KP','2021-08-11 06:52:00','2021-08-11 06:52:00'),(114,'Korea, Republic of','KR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(115,'Kuwait','KW','2021-08-11 06:52:00','2021-08-11 06:52:00'),(116,'Kyrgyzstan','KG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(117,'Lao People\'s Democratic Republic','LA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(118,'Latvia','LV','2021-08-11 06:52:00','2021-08-11 06:52:00'),(119,'Lebanon','LB','2021-08-11 06:52:00','2021-08-11 06:52:00'),(120,'Lesotho','LS','2021-08-11 06:52:00','2021-08-11 06:52:00'),(121,'Liberia','LR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(122,'Libyan Arab Jamahiriya','LY','2021-08-11 06:52:00','2021-08-11 06:52:00'),(123,'Liechtenstein','LI','2021-08-11 06:52:00','2021-08-11 06:52:00'),(124,'Lithuania','LT','2021-08-11 06:52:00','2021-08-11 06:52:00'),(125,'Luxembourg','LU','2021-08-11 06:52:00','2021-08-11 06:52:00'),(126,'Macau','MO','2021-08-11 06:52:00','2021-08-11 06:52:00'),(127,'Macedonia','MK','2021-08-11 06:52:00','2021-08-11 06:52:00'),(128,'Madagascar','MG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(129,'Malawi','MW','2021-08-11 06:52:00','2021-08-11 06:52:00'),(130,'Malaysia','MY','2021-08-11 06:52:00','2021-08-11 06:52:00'),(131,'Maldives','MV','2021-08-11 06:52:00','2021-08-11 06:52:00'),(132,'Mali','ML','2021-08-11 06:52:00','2021-08-11 06:52:00'),(133,'Malta','MT','2021-08-11 06:52:00','2021-08-11 06:52:00'),(134,'Marshall Islands','MH','2021-08-11 06:52:00','2021-08-11 06:52:00'),(135,'Martinique','MQ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(136,'Mauritania','MR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(137,'Mauritius','MU','2021-08-11 06:52:00','2021-08-11 06:52:00'),(138,'Mayotte','TY','2021-08-11 06:52:00','2021-08-11 06:52:00'),(139,'Mexico','MX','2021-08-11 06:52:00','2021-08-11 06:52:00'),(140,'Micronesia, Federated States of','FM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(141,'Moldova, Republic of','MD','2021-08-11 06:52:00','2021-08-11 06:52:00'),(142,'Monaco','MC','2021-08-11 06:52:00','2021-08-11 06:52:00'),(143,'Mongolia','MN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(144,'Montserrat','MS','2021-08-11 06:52:00','2021-08-11 06:52:00'),(145,'Morocco','MA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(146,'Mozambique','MZ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(147,'Myanmar','MM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(148,'Namibia','NA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(149,'Nauru','NR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(150,'Nepal','NP','2021-08-11 06:52:00','2021-08-11 06:52:00'),(151,'Netherlands','NL','2021-08-11 06:52:00','2021-08-11 06:52:00'),(152,'Netherlands Antilles','AN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(153,'New Caledonia','NC','2021-08-11 06:52:00','2021-08-11 06:52:00'),(154,'New Zealand','NZ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(155,'Nicaragua','NI','2021-08-11 06:52:00','2021-08-11 06:52:00'),(156,'Niger','NE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(157,'Nigeria','NG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(158,'Niue','NU','2021-08-11 06:52:00','2021-08-11 06:52:00'),(159,'Norfork Island','NF','2021-08-11 06:52:00','2021-08-11 06:52:00'),(160,'Northern Mariana Islands','MP','2021-08-11 06:52:00','2021-08-11 06:52:00'),(161,'Norway','NO','2021-08-11 06:52:00','2021-08-11 06:52:00'),(162,'Oman','OM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(163,'Pakistan','PK','2021-08-11 06:52:00','2021-08-11 06:52:00'),(164,'Palau','PW','2021-08-11 06:52:00','2021-08-11 06:52:00'),(165,'Panama','PA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(166,'Papua New Guinea','PG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(167,'Paraguay','PY','2021-08-11 06:52:00','2021-08-11 06:52:00'),(168,'Peru','PE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(169,'Philippines','PH','2021-08-11 06:52:00','2021-08-11 06:52:00'),(170,'Pitcairn','PN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(171,'Poland','PL','2021-08-11 06:52:00','2021-08-11 06:52:00'),(172,'Portugal','PT','2021-08-11 06:52:00','2021-08-11 06:52:00'),(173,'Puerto Rico','PR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(174,'Qatar','QA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(175,'Republic of South Sudan','SS','2021-08-11 06:52:00','2021-08-11 06:52:00'),(176,'Reunion','RE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(177,'Romania','RO','2021-08-11 06:52:00','2021-08-11 06:52:00'),(178,'Russian Federation','RU','2021-08-11 06:52:00','2021-08-11 06:52:00'),(179,'Rwanda','RW','2021-08-11 06:52:00','2021-08-11 06:52:00'),(180,'Saint Kitts and Nevis','KN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(181,'Saint Lucia','LC','2021-08-11 06:52:00','2021-08-11 06:52:00'),(182,'Saint Vincent and the Grenadines','VC','2021-08-11 06:52:00','2021-08-11 06:52:00'),(183,'Samoa','WS','2021-08-11 06:52:00','2021-08-11 06:52:00'),(184,'San Marino','SM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(185,'Sao Tome and Principe','ST','2021-08-11 06:52:00','2021-08-11 06:52:00'),(186,'Saudi Arabia','SA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(187,'Senegal','SN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(188,'Serbia','RS','2021-08-11 06:52:00','2021-08-11 06:52:00'),(189,'Seychelles','SC','2021-08-11 06:52:00','2021-08-11 06:52:00'),(190,'Sierra Leone','SL','2021-08-11 06:52:00','2021-08-11 06:52:00'),(191,'Singapore','SG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(192,'Slovakia','SK','2021-08-11 06:52:00','2021-08-11 06:52:00'),(193,'Slovenia','SI','2021-08-11 06:52:00','2021-08-11 06:52:00'),(194,'Solomon Islands','SB','2021-08-11 06:52:00','2021-08-11 06:52:00'),(195,'Somalia','SO','2021-08-11 06:52:00','2021-08-11 06:52:00'),(196,'South Africa','ZA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(197,'South Georgia South Sandwich Islands','GS','2021-08-11 06:52:00','2021-08-11 06:52:00'),(198,'Spain','ES','2021-08-11 06:52:00','2021-08-11 06:52:00'),(199,'Sri Lanka','LK','2021-08-11 06:52:00','2021-08-11 06:52:00'),(200,'St. Helena','SH','2021-08-11 06:52:00','2021-08-11 06:52:00'),(201,'St. Pierre and Miquelon','PM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(202,'Sudan','SD','2021-08-11 06:52:00','2021-08-11 06:52:00'),(203,'Suriname','SR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(204,'Svalbarn and Jan Mayen Islands','SJ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(205,'Swaziland','SZ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(206,'Sweden','SE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(207,'Switzerland','CH','2021-08-11 06:52:00','2021-08-11 06:52:00'),(208,'Syrian Arab Republic','SY','2021-08-11 06:52:00','2021-08-11 06:52:00'),(209,'Taiwan','TW','2021-08-11 06:52:00','2021-08-11 06:52:00'),(210,'Tajikistan','TJ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(211,'Tanzania, United Republic of','TZ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(212,'Thailand','TH','2021-08-11 06:52:00','2021-08-11 06:52:00'),(213,'Togo','TG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(214,'Tokelau','TK','2021-08-11 06:52:00','2021-08-11 06:52:00'),(215,'Tonga','TO','2021-08-11 06:52:00','2021-08-11 06:52:00'),(216,'Trinidad and Tobago','TT','2021-08-11 06:52:00','2021-08-11 06:52:00'),(217,'Tunisia','TN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(218,'Turkey','TR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(219,'Turkmenistan','TM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(220,'Turks and Caicos Islands','TC','2021-08-11 06:52:00','2021-08-11 06:52:00'),(221,'Tuvalu','TV','2021-08-11 06:52:00','2021-08-11 06:52:00'),(222,'Uganda','UG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(223,'Ukraine','UA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(224,'United Arab Emirates','AE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(225,'United Kingdom','GB','2021-08-11 06:52:00','2021-08-11 06:52:00'),(226,'United States','US','2021-08-11 06:52:00','2021-08-11 06:52:00'),(227,'United States minor outlying islands','UM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(228,'Uruguay','UY','2021-08-11 06:52:00','2021-08-11 06:52:00'),(229,'Uzbekistan','UZ','2021-08-11 06:52:00','2021-08-11 06:52:00'),(230,'Vanuatu','VU','2021-08-11 06:52:00','2021-08-11 06:52:00'),(231,'Vatican City State','VA','2021-08-11 06:52:00','2021-08-11 06:52:00'),(232,'Venezuela','VE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(233,'Vietnam','VN','2021-08-11 06:52:00','2021-08-11 06:52:00'),(234,'Virgin Islands (British)','VG','2021-08-11 06:52:00','2021-08-11 06:52:00'),(235,'Virgin Islands (U.S.)','VI','2021-08-11 06:52:00','2021-08-11 06:52:00'),(236,'Wallis and Futuna Islands','WF','2021-08-11 06:52:00','2021-08-11 06:52:00'),(237,'Western Sahara','EH','2021-08-11 06:52:00','2021-08-11 06:52:00'),(238,'Yemen','YE','2021-08-11 06:52:00','2021-08-11 06:52:00'),(239,'Yugoslavia','YU','2021-08-11 06:52:00','2021-08-11 06:52:00'),(240,'Zaire','ZR','2021-08-11 06:52:00','2021-08-11 06:52:00'),(241,'Zambia','ZM','2021-08-11 06:52:00','2021-08-11 06:52:00'),(242,'Zimbabwe','ZW','2021-08-11 06:52:00','2021-08-11 06:52:00');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` double NOT NULL DEFAULT '0',
  `start_from` double NOT NULL DEFAULT '0',
  `available_from` date NOT NULL,
  `available_to` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublished',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'Black Friday Offer','BlackFriday','This offer is only for black friday',100,200,'2021-09-18','2021-09-19','published','2021-09-18 04:19:58','2021-09-18 04:20:04',NULL),(2,'Cyclone Offer','Cyclone',NULL,50,100,'2021-09-18','2021-09-30','published','2021-09-18 04:25:10','2021-09-18 04:25:16',NULL),(3,'Coupon custom','CUSTOM15',NULL,15,91,'2021-10-14','2021-10-15','published','2021-10-14 12:56:52','2021-10-14 12:56:57',NULL);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_order_colors`
--

DROP TABLE IF EXISTS `custom_order_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_order_colors` (
  `custom_order_id` bigint unsigned NOT NULL,
  `color_id` bigint unsigned NOT NULL,
  KEY `custom_order_colors_custom_order_id_foreign` (`custom_order_id`),
  KEY `custom_order_colors_color_id_foreign` (`color_id`),
  CONSTRAINT `custom_order_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `custom_order_colors_custom_order_id_foreign` FOREIGN KEY (`custom_order_id`) REFERENCES `custom_orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_order_colors`
--

LOCK TABLES `custom_order_colors` WRITE;
/*!40000 ALTER TABLE `custom_order_colors` DISABLE KEYS */;
INSERT INTO `custom_order_colors` VALUES (1,7),(2,6),(3,13);
/*!40000 ALTER TABLE `custom_order_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_order_products`
--

DROP TABLE IF EXISTS `custom_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_order_products` (
  `custom_order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  KEY `custom_order_products_custom_order_id_foreign` (`custom_order_id`),
  KEY `custom_order_products_product_id_foreign` (`product_id`),
  CONSTRAINT `custom_order_products_custom_order_id_foreign` FOREIGN KEY (`custom_order_id`) REFERENCES `custom_orders` (`id`),
  CONSTRAINT `custom_order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_order_products`
--

LOCK TABLES `custom_order_products` WRITE;
/*!40000 ALTER TABLE `custom_order_products` DISABLE KEYS */;
INSERT INTO `custom_order_products` VALUES (1,1),(2,2),(2,1),(3,2),(3,1);
/*!40000 ALTER TABLE `custom_order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_order_tags`
--

DROP TABLE IF EXISTS `custom_order_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_order_tags` (
  `custom_order_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  KEY `custom_order_tags_custom_order_id_foreign` (`custom_order_id`),
  KEY `custom_order_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `custom_order_tags_custom_order_id_foreign` FOREIGN KEY (`custom_order_id`) REFERENCES `custom_orders` (`id`),
  CONSTRAINT `custom_order_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_order_tags`
--

LOCK TABLES `custom_order_tags` WRITE;
/*!40000 ALTER TABLE `custom_order_tags` DISABLE KEYS */;
INSERT INTO `custom_order_tags` VALUES (1,5),(1,11),(2,12),(2,9),(3,6);
/*!40000 ALTER TABLE `custom_order_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_orders`
--

DROP TABLE IF EXISTS `custom_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `bodywork` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_id` bigint unsigned DEFAULT NULL,
  `vehicle_model_id` bigint unsigned DEFAULT NULL,
  `vehicle_manufacture_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_conditioned` tinyint(1) NOT NULL,
  `design_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `range_from` double NOT NULL DEFAULT '0',
  `range_to` double NOT NULL DEFAULT '0',
  `deposit_amount` double NOT NULL DEFAULT '0',
  `customer_amount` double NOT NULL DEFAULT '0',
  `customer_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EUR',
  `vat` double NOT NULL DEFAULT '0',
  `vat_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '%',
  `vat_amount` double NOT NULL DEFAULT '0',
  `customer_vat_amount` double NOT NULL DEFAULT '0',
  `grand_total` double NOT NULL DEFAULT '0',
  `customer_grand_total` double NOT NULL DEFAULT '0',
  `feedback` text COLLATE utf8mb4_unicode_ci,
  `product_id` bigint unsigned DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_orders_category_id_foreign` (`category_id`),
  KEY `custom_orders_customer_id_foreign` (`customer_id`),
  KEY `custom_orders_vehicle_id_foreign` (`vehicle_id`),
  KEY `custom_orders_vehicle_model_id_foreign` (`vehicle_model_id`),
  KEY `custom_orders_product_id_foreign` (`product_id`),
  CONSTRAINT `custom_orders_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `custom_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `custom_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `custom_orders_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`),
  CONSTRAINT `custom_orders_vehicle_model_id_foreign` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_orders`
--

LOCK TABLES `custom_orders` WRITE;
/*!40000 ALTER TABLE `custom_orders` DISABLE KEYS */;
INSERT INTO `custom_orders` VALUES (1,2,'coube',10,4,'2019','#34b253','no note',1,'no note',1,400,1400,135,135,'EUR',0,'%',0,0,135,135,'this is the feedback part',4,'completed','2021-09-16 11:46:33','2021-10-14 12:30:47'),(2,3,'custom',8,2,'2020','#b7b576','Dolor molestias occa',0,NULL,1,400,1400,200,233,'USD',0,'%',0,0,200,233,'Et qui incididunt el',3,'completed','2021-09-30 13:18:01','2021-09-30 13:19:27'),(3,2,'custom',11,10,'2018','#3346b0',NULL,0,NULL,1,300,1500,200,200,'EUR',20,'%',40,40,240,240,NULL,NULL,'pending','2021-10-18 12:04:40','2021-10-18 12:04:40');
/*!40000 ALTER TABLE `custom_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eu_vat_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  KEY `customer_name_index` (`name`),
  KEY `customer_surname_index` (`surname`),
  KEY `customer_nickname_index` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Sterckx','Melanie',NULL,'sterckxmelanie@gmail.com','048546342848',NULL,'$2y$10$9G4ob5wvo6axnFlbUoiu6e4CV5a0j7.ZGa/naJTjjOXZG3ZhUDu2y',NULL,'Wrapking','BG202091716','2021-08-13 08:32:22','active','2021-08-13 08:25:01','2021-12-06 11:20:58',NULL),(2,'Alicia','Keerbergen','Aliciakeerbergen','aliciakeerbergen@gmail.com','63839494944',NULL,'$2y$10$3jwtXGWtj2b/t5pMj7I0fueBo3yGEOf1OYIB6tcBRMWViJW8dCBTq',NULL,NULL,NULL,'2022-04-12 18:28:20','active','2021-08-19 13:01:53','2022-04-12 18:28:20',NULL),(3,'Ahmed','Shakil',NULL,'asgraphicsolution@gmail.com','01834507645',NULL,'$2y$10$XGJPR6KWHhmPxAgLof4iHuCSVzGoLW3JKHKLFdxttE/c5bhuuqorK',NULL,NULL,NULL,'2021-09-16 12:29:00','active','2021-09-16 12:28:56','2021-09-16 12:29:00',NULL),(4,'Motasim','Fuad',NULL,'motasimfuad0@gmail.com','01956690980526',NULL,'$2y$10$b/4wbBbr75q3kC5JlV8aLOa7haiNn3hWco83qdCetxLYQ5aCccZ1W',NULL,NULL,NULL,'2021-09-30 17:34:21','active','2021-09-30 17:33:58','2021-09-30 17:34:21',NULL),(5,'Tanvir','Hasan',NULL,'tanvir@gmail.com','01912264216',NULL,'$2y$10$84IUo4i4LoPWHH3Qh4i3nOZH7pDVHCHpIl8xdDTVnz8NYnXa8jSwy',NULL,NULL,NULL,'2021-10-20 04:42:33','active','2021-10-20 04:42:25','2021-10-20 04:42:33',NULL),(6,'Incididunt eu archit','Ullam qui qui aliqui',NULL,'matinu@mailinator.com','536712-2342',NULL,'$2y$10$E.BJiNHn2Hi4RoTGJgb08u7RcB8c1MirA9Bi0atgaNwSscIOw6Ume',NULL,NULL,NULL,'2021-10-21 06:10:38','active','2021-10-21 06:10:37','2021-10-21 06:10:38',NULL),(7,'Motasim','Fuad',NULL,'fuad@gmail.com','0123456789',NULL,'$2y$10$iZuPBaH1EtL1E.2mo03t2.yKPn.Zhcy7zq3ZZmZ4jLaKISuV/ooSi',NULL,NULL,NULL,'2021-11-22 04:55:39','active','2021-11-22 04:55:20','2021-11-22 04:55:39',NULL),(8,'Ut aut omnis dolorem','Est sed rerum amet',NULL,'mysudiq@mailinator.com','4325 695-2134',NULL,'$2y$10$FGw4Tsmo1rdSbHJ4ISIcr.TmZZyT7JLcaizM.SjbCaUtbwap4D.H6',NULL,NULL,NULL,'2021-11-23 05:01:18','active','2021-11-23 05:01:15','2021-11-23 05:01:18',NULL),(9,'Stercjx','Melanie',NULL,'easolaiman@gmail.com','034467848448',NULL,'$2y$10$DQWQQ1tSns1kX0LKsv/hP.HvQ9iL76pQV1X7QyMTwpqoP1rw90Hhm',NULL,NULL,NULL,'2021-12-06 11:08:51','active','2021-12-06 11:08:21','2021-12-06 11:08:51',NULL),(10,'Test','test',NULL,'dhsilabs@gmail.com','+380992580322',NULL,'$2y$10$z5fC219xD4BywlfOcuhC9.vRBHS4YIR3EPqGkr6CoqRHpVSgyPHeW',NULL,NULL,NULL,'2022-04-13 03:55:20','active','2022-04-13 03:55:19','2022-04-13 03:55:20',NULL),(11,'Victor','Fury',NULL,'kishyanus.v@avada-media.com','380660091269',NULL,'$2y$10$AON1gIMOWcW4cxZ.VicrEOQ4sZWgtUrTG85nKF/EU7.e9b/1c442e',NULL,NULL,NULL,'2022-04-13 18:37:13','active','2022-04-13 18:36:47','2022-04-13 18:37:13',NULL),(12,'Hatim Lagzar','HatimDev',NULL,'lhatimdev@gmail.com','0695305800',NULL,'$2y$10$foyxPsBB1E1W5mR9xOODxuUCn2a1RPaMpVBXzYyGa0qPvQ3bI4KVC',NULL,NULL,NULL,'2022-04-19 16:23:35','active','2022-04-19 16:23:18','2022-04-19 16:23:35',NULL),(13,'tet',NULL,NULL,'tet@gmail.com','+380936684634',NULL,'$2y$10$XmYjHMtPuk8tL/jtltsyl.aXpws.gXeGXWgqcXzl1WQEJNTsm4bR6',NULL,NULL,NULL,'2022-04-19 17:18:52','active','2022-04-19 17:18:51','2022-04-19 17:18:52',NULL),(14,'Labore qui qui dolor','Dolores dolor quo vo',NULL,'byvebixi@mailinator.com','98',NULL,'$2y$10$tazisYNsPQtgcpZI3REjqe91Q/u5deJblcF23B.voNGTqGri0C7JG',NULL,NULL,NULL,NULL,'active','2022-04-19 19:11:32','2022-04-19 19:11:32',NULL),(15,'Laboriosam sint ex','Dicta reprehenderit',NULL,'mynupy@mailinator.com','1',NULL,'$2y$10$/RfRXuMmEqub.xhU9Bvxd.6onLjKfbF4nkKD7wDMi7BWKFQduGNVq',NULL,NULL,NULL,'2022-04-19 19:12:12','active','2022-04-19 19:12:04','2022-04-19 19:12:12',NULL),(16,'asdasd','asdasd',NULL,'asdfad@gmail.com','21321321321',NULL,'$2y$10$sv3jtuKNu/7aroHMOCcsJuRetbGubI0VcBGQcIb.sPFQr9QPkkqpm',NULL,NULL,NULL,'2022-04-19 19:41:14','active','2022-04-19 19:41:12','2022-04-19 19:41:14',NULL),(17,'John Doe','Newman',NULL,'user@example.com','+410777123123',NULL,'$2y$10$CYEZmEaFAgrU67ShQ8BmBucuXqSN8pSb1kVNNnjHY/hpJ6JPL9Gza',NULL,NULL,NULL,'2022-05-01 08:24:17','active','2022-05-01 08:24:16','2022-05-01 08:24:17',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_characters`
--

DROP TABLE IF EXISTS `design_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `design_characters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `deposit_amount` double NOT NULL DEFAULT '0',
  `design_price` double NOT NULL DEFAULT '0',
  `wrapper_price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `design_characters_category_id_foreign` (`category_id`),
  CONSTRAINT `design_characters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design_characters`
--

LOCK TABLES `design_characters` WRITE;
/*!40000 ALTER TABLE `design_characters` DISABLE KEYS */;
INSERT INTO `design_characters` VALUES (1,1,200,600,150,'2021-09-16 11:38:57','2021-09-16 13:58:55');
/*!40000 ALTER TABLE `design_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (23,'customer','What do I get after purchasing a universal design?','The price includes a ready-to-print file and a one-time apply license. The car wrap designs are prepared in stripes over the maximum width of the roll e.g. 150 cm. These files need to be shared with a professional vinyl printer to print out the design on a foil. You can get the ready-to-print files to a printing company or a professional car wrap shop. Note that car wrap shops prefer printing the design by themselves when you want them to wrap your car.','2022-04-26 14:11:22','2022-04-26 14:11:22',NULL),(24,'customer','Can I wrap a second car with one purchased design?','No, when purchasing a design, you buy a license for a one-time apply. Buy an additional license for each vehicle you want to wrap. Unlike the universal designs, with custom designs you can wrap as many cars as you want.','2022-04-26 14:11:49','2022-04-26 14:11:49',NULL),(25,'customer','Is it allowed to adapt a universal design to my vehicle?','Yes, you have the permission to adapt a universal design to your vehicle. Please keep in mind that we still own the design, even if its adapted. So the rules remain the same for adapted designs (one-time apply, prohibited to resell, etc).','2022-04-26 14:12:21','2022-04-26 14:12:21',NULL),(26,'customer','Universal designs fit any car?','Yes, for most of the vehicles, 20 length meters of foil will be enough. If you need more foil, please note when printing.','2022-04-26 14:15:33','2022-04-26 14:15:33',NULL),(27,'customer','What foil and effect are the renders based on?','Our renders on the website are based on a white foil with a gloss effect. When you print a design you can choose between more options like gloss, satin, or matt effect for white or chrome foil. A different foil or effect can make a big difference in the looks. We highly recommend considering every option.','2022-04-26 14:16:05','2022-04-26 14:16:05',NULL),(28,'customer','Are the custom designs unique?','Absolutely! Unlike the universal car wrap designs, custom designs are completely unique.','2022-04-26 14:16:25','2022-04-26 14:16:25',NULL),(29,'customer','How can I purchase a customized design?','Fill out the form carefully when ordering a custom design. Describe what you exactly want such as the color and the style. The payment made in the user interface for a customized car wrap design is a deposit of €350. The rest is paid at the last payment, after approval of the design. Finally, you will receive the ready-to-print file of your custom design.','2022-04-26 14:16:59','2022-04-26 14:16:59',NULL),(30,'customer','How much time will it take before I receive a customized design?','It will require us up to two weeks to create a custom car wrap design of your imagination.','2022-04-26 14:17:29','2022-04-26 14:17:29',NULL),(31,'customer','How much does a custom design cost?','The price of a custom design varies between €1000 and €3000. This depends on how complicated your request is. Contact us if you would like a quote or submit your request immediately using the form in the custom design tab.','2022-04-26 14:18:01','2022-04-26 14:18:01',NULL),(32,'customer','Where can I print the design?','You can find our partners on our map or you can get the ready-to-print file to a printing company or a professional wrap shop in your area. Professional wrap shops often have vinyl printers, and they prefer printing the design by themselves when you want them to wrap your car. Only print the design at a printing company if you are going to wrap the car yourself or if the wrap shop has advised you to do so. The minimum width of the printer must be 160 cm.','2022-04-26 14:19:10','2022-04-26 14:19:10',NULL),(33,'customer','Where can I wrap my vehicle?','You can find our partners on https://wrapmotif.com/wrapping-companies, or you can also look for car wrap shops in your area. Look for established shops with good reviews and certified installers that have done this type of work before. Please keep in mind that a cheap quote often equates to poor quality. Note that the wrap shops prefer doing the printing of the car wrap design themselves.','2022-04-26 14:19:51','2022-04-26 14:19:51',NULL),(34,'customer','How long will it take to wrap my vehicle?','The duration of the wrapping process depends on several factors. Contact a car wrap shop in your area, and they will provide you with more details. In most cases, the wrapping process is completed within a week.','2022-04-26 14:20:26','2022-04-26 14:20:26',NULL),(35,'customer','Can I wrap my vehicle with damaged paint?','We do not recommend wrapping your vehicle on damaged paint. Unevenness in the paint will affect the result. Besides, removing this wrap from damaged paint will no longer be guaranteed without risks.','2022-04-26 14:20:49','2022-04-26 14:20:49',NULL),(36,'customer','Will the car wrap protect my vehicle?','While car wrap won\'t protect your vehicle from critical dents, it can prevent minor things like scratches or pebbles that would otherwise damage your paint.','2022-04-26 14:21:11','2022-04-26 14:21:11',NULL),(37,'customer','Can I wash my vehicle in an automatic car wash?','We recommend washing your vehicle in a hand car wash. It’s the best option for both wrap and paint. Please make sure you do not use aggressive chemicals while washing and do not wash your car in direct sunlight or when your chassis is heated up already.','2022-04-26 14:21:30','2022-04-26 14:21:30',NULL),(38,'customer','Can I remove the car wrap easily?','The car wrap is easily removable without damaging the paint or residual glue remaining on the vehicle.','2022-04-26 14:21:48','2022-04-26 14:21:48',NULL),(39,'customer','How long will the car wrap last on my vehicle?','Most well-known car wrap suppliers like 3M, Avery Dennison, Oracal, Arlon etc. have a service life of three to seven years. However, this will depend on the weather and how much you protect your car. We recommend decontaminating the car wrap twice a year and use either a wax or a sealant.','2022-04-26 14:22:30','2022-04-26 14:22:30',NULL),(40,'customer','Is it difficult to wrap a car?','Wrapping a car represents a time-consuming process, and the installer should be a top-notch professional in this field. Care and effort are taken to make sure you won’t find edges where the underlying paint can shine through. There should be no rips, creases, or air bubbles trapped under the wrap. We highly recommend using the services of professional car wrappers.','2022-04-26 14:22:49','2022-04-26 14:22:49',NULL),(41,'wrapping_company','How many times can I wrap one design?','For universal designs, you can wrap the car wrap design only once. For customized car wrap designs, you are free to apply the design as much as you prefer.','2022-04-26 14:23:18','2022-04-26 14:23:18',NULL),(42,'wrapping_company','In what format do I get the printing data?','After purchase, you can download a printable TIFF-file.','2022-04-26 14:23:47','2022-04-26 14:23:47',NULL),(43,'wrapping_company','What resolution do you use in the printing data?','The designs are created on a 1:1 scale, the resolution is 150 dpi.','2022-04-26 14:24:07','2022-04-26 14:24:07',NULL),(44,'wrapping_company','Are you going to promote my company?','We will display your company as our partner on https://wrapmotif.com/wrapping-companies. Our clients searching for a printing or car wrapping studio in your area will find you on our map.','2022-04-26 14:24:28','2022-04-26 14:24:28',NULL),(45,'wrapping_company','Can I enjoy any discount as a car wrap company?','We love rewarding our returning customers with a promo code. Ask us for an additional 10% discount on universal designs.','2022-04-26 14:24:44','2022-04-26 14:24:44',NULL),(46,'wrapping_company','Do you print and deliver car wrap designs?','We don’t deliver this service, but we do have several partners who can do that. You can find these partners on our map https://wrapmotif.com/wrapping-companies.','2022-04-26 14:25:13','2022-04-26 14:25:13',NULL),(47,'wrapping_company','Is it allowed to adapt a universal design to a client’s vehicle?','Yes, you have the permission to adapt a universal design to a client’s vehicle. Please keep in mind that we still own the design, even if its adapted. So the rules remain the same for adapted designs (One time apply, prohibited to resell, etc).','2022-04-26 14:25:31','2022-04-26 14:25:31',NULL);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `user_id` int unsigned NOT NULL,
  `favoriteable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favoriteable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`favoriteable_id`,`favoriteable_type`),
  KEY `favorites_favoriteable_type_favoriteable_id_index` (`favoriteable_type`,`favoriteable_id`),
  KEY `favorites_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (2,'App\\Models\\Product',1,'2021-10-17 12:39:48','2021-10-17 12:39:48'),(2,'App\\Models\\Product',2,'2021-10-17 12:39:40','2021-10-17 12:39:40');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (36,'READY','TO PRINT',NULL,'2022-04-12 09:42:15','2022-04-12 09:42:15'),(37,'UNIVERSAL','DESIGN',NULL,'2022-04-12 09:42:45','2022-04-12 09:42:45'),(38,'CREATIVE','STYLES',NULL,'2022-04-12 09:43:16','2022-04-12 09:43:16'),(39,'VISUAL','3D PREVIEW',NULL,'2022-04-12 09:43:39','2022-04-12 09:43:39');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (24,'App\\Models\\Appearance',1,'d353245d-b433-4c7e-8301-e2ddc4f33fb6','primary','wrapstock-home-full (1)','wrapstock-home-full-(1).mp4','video/mp4','s3','s3',11492497,'[]','[]','[]','[]',24,'2021-08-17 16:08:32','2021-08-17 16:08:32'),(40,'App\\Models\\Settings',1,'c0865148-a833-4785-88fc-2ca1db8f5b67','primary','White logo-01','White-logo-01.png','image/png','s3','s3',60309,'[]','[]','[]','[]',39,'2021-09-07 11:49:53','2021-09-07 11:49:53'),(41,'App\\Models\\Settings',1,'ec21b500-98f1-4082-a20b-9e1bd8510443','secondary','black logo-01','black-logo-01.png','image/png','s3','s3',64306,'[]','[]','[]','[]',40,'2021-09-07 11:49:56','2021-09-07 11:49:56'),(59,'App\\Models\\Category',1,'9bd3d7ee-bdf2-4a21-8102-feb66567e2df','primary','Home foto ','Home-foto-.jpg','image/jpeg','s3','s3',224700,'[]','[]','[]','[]',58,'2021-09-07 12:39:30','2021-09-07 12:39:30'),(69,'App\\Models\\Color',16,'f2d0cf98-a138-4ad4-89ae-7f44fd07bca8','primary','colorfull','colorfull.jpg','image/jpeg','s3','s3',79615,'[]','[]','[]','[]',67,'2021-09-15 13:58:47','2021-09-15 13:58:47'),(111,'App\\Models\\CustomOrder',1,'876e75a2-1231-4fc8-a244-4cbe9ddbaea1','vehicle_photos','Schermafbeelding 2021-06-12 om 12.34.00','Schermafbeelding-2021-06-12-om-12.34.00.png','image/png','s3','s3',973070,'[]','[]','[]','[]',85,'2021-09-16 11:46:33','2021-09-16 11:46:33'),(112,'App\\Models\\CustomOrder',1,'8c80c4a6-5cf0-49db-85c2-22f52fa3744d','reference_designs','Schermafbeelding 2021-06-12 om 12.42.26','Schermafbeelding-2021-06-12-om-12.42.26.png','image/png','s3','s3',1416500,'[]','[]','[]','[]',86,'2021-09-16 11:46:34','2021-09-16 11:46:34'),(113,'App\\Models\\PreviewDesign',1,'6c7d19c6-758a-4b69-a411-1c462c9b6da1','collection','FW0379A_001','FW0379A_001.jpeg','image/jpeg','s3','s3',392066,'[]','[]','[]','[]',87,'2021-09-23 10:43:24','2021-09-23 10:43:24'),(114,'App\\Models\\PreviewDesign',1,'87af0214-e03b-4ce1-8c73-f20c1e8d4950','collection','FW0409A_Sunset-Glow_006','FW0409A_Sunset-Glow_006.jpeg','image/jpeg','s3','s3',373579,'[]','[]','[]','[]',88,'2021-09-23 10:43:25','2021-09-23 10:43:25'),(115,'App\\Models\\PreviewDesign',1,'e2fa56a6-9f49-4dfe-9b7f-8e39e5733115','collection','FW0422_001 kopie','FW0422_001-kopie.jpeg','image/jpeg','s3','s3',223693,'[]','[]','[]','[]',89,'2021-09-23 10:43:26','2021-09-23 10:43:26'),(116,'App\\Models\\PreviewDesign',1,'4fe0f1db-2942-4004-8ad9-5b7b5491b8e1','thumbnail','FW0379A_001','FW0379A_001.jpeg','image/jpeg','s3','s3',392066,'[]','[]','[]','[]',90,'2021-09-23 10:43:26','2021-09-23 10:43:26'),(117,'App\\Models\\ColorChange',1,'c02a0aff-2a67-431c-a03c-4c345fba6d5a','collection','FW0379A_001','FW0379A_001.jpeg','image/jpeg','s3','s3',392066,'[]','[]','[]','[]',91,'2021-09-23 10:49:07','2021-09-23 10:49:07'),(119,'App\\Models\\ColorChange',1,'495f57dc-500b-4adf-b403-29ba26dec183','collection','FW0422_001 kopie','FW0422_001-kopie.jpeg','image/jpeg','s3','s3',223693,'[]','[]','[]','[]',93,'2021-09-23 10:49:09','2021-09-23 10:49:09'),(125,'App\\Models\\Product',2,'120b7b78-2ca3-4312-948b-621643eee2a0','downloadable','2 design camouflage','2-design-camouflage.zip','application/zip','s3','s3',9683620,'[]','[]','[]','[]',99,'2021-09-23 12:37:50','2021-09-23 12:37:50'),(131,'App\\Models\\Product',3,'bbb4107a-ea76-4fbc-b2dc-ff8c622ef8aa','downloadable','Paid-Internship-Appointment-Letter-Sample','Paid-Internship-Appointment-Letter-Sample.zip','application/zip','s3','s3',43148,'[]','[]','[]','[]',105,'2021-09-30 13:19:26','2021-09-30 13:19:26'),(140,'App\\Models\\Product',4,'9fefc0c7-513e-4e90-8959-6d927c22ae7f','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',111,'2021-10-14 12:30:17','2021-10-14 12:30:17'),(142,'App\\Models\\ColorChange',1,'2dc8667e-7ae3-40e2-810d-6f3ec63df80c','collection','3D_Changer_014 (1)','3D_Changer_014-(1).png','image/png','s3','s3',3163242,'[]','[]','[]','[]',113,'2021-10-17 10:56:53','2021-10-17 10:56:53'),(143,'App\\Models\\ColorChange',1,'78df5776-9fc2-4b19-bf89-009e27e41e13','collection','3D_Changer_015 (1)','3D_Changer_015-(1).png','image/png','s3','s3',3166057,'[]','[]','[]','[]',114,'2021-10-17 10:56:57','2021-10-17 10:56:57'),(144,'App\\Models\\ColorChange',1,'23e096e1-dc3c-45ad-9ce2-5d95c44acf61','collection','3D_Changer_016 (1)','3D_Changer_016-(1).png','image/png','s3','s3',3196690,'[]','[]','[]','[]',115,'2021-10-17 10:56:59','2021-10-17 10:56:59'),(147,'App\\Models\\ColorChange',1,'79330b2a-2b8b-4abc-b06c-5db4074dee0e','collection','3D_Changer_014 (1)','3D_Changer_014-(1).png','image/png','s3','s3',3163242,'[]','[]','[]','[]',118,'2021-10-17 10:57:57','2021-10-17 10:57:57'),(148,'App\\Models\\ColorChange',1,'f999aea2-919d-4976-9d96-23309ee0ac29','collection','3D_Changer_015 (1)','3D_Changer_015-(1).png','image/png','s3','s3',3166057,'[]','[]','[]','[]',119,'2021-10-17 10:58:01','2021-10-17 10:58:01'),(152,'App\\Models\\ColorChange',1,'8f45e23b-a158-4906-afdb-c4cdcbe92b18','collection','3D_Changer_014 (1)','3D_Changer_014-(1).png','image/png','s3','s3',3163242,'[]','[]','[]','[]',123,'2021-10-17 10:58:59','2021-10-17 10:58:59'),(153,'App\\Models\\ColorChange',1,'8414cf69-ddcc-481b-a429-727f0b3572c9','collection','3D_Changer_015 (1)','3D_Changer_015-(1).png','image/png','s3','s3',3166057,'[]','[]','[]','[]',124,'2021-10-17 10:59:01','2021-10-17 10:59:01'),(157,'App\\Models\\ColorChange',1,'55edf269-40db-47df-bf32-991967df9ce1','collection','3D_Changer_014 (1)','3D_Changer_014-(1).png','image/png','s3','s3',3163242,'[]','[]','[]','[]',128,'2021-10-17 10:59:41','2021-10-17 10:59:41'),(158,'App\\Models\\ColorChange',1,'9d985ce5-fab6-4751-a6db-8262d98529e2','collection','3D_Changer_015 (1)','3D_Changer_015-(1).png','image/png','s3','s3',3166057,'[]','[]','[]','[]',129,'2021-10-17 10:59:43','2021-10-17 10:59:43'),(159,'App\\Models\\ColorChange',1,'e9e766fd-9ddb-41d2-88d4-09ce83cd6e8a','collection','3D_Changer_016 (1)','3D_Changer_016-(1).png','image/png','s3','s3',3196690,'[]','[]','[]','[]',130,'2021-10-17 10:59:45','2021-10-17 10:59:45'),(160,'App\\Models\\ColorChange',1,'068b3715-321b-4bb0-b254-b760b88b2c1e','downloadable','2-design-camouflage','2-design-camouflage.zip','application/zip','s3','s3',9683620,'[]','[]','[]','[]',131,'2021-10-17 10:59:46','2021-10-17 10:59:46'),(161,'App\\Models\\ColorChange',1,'89dd437f-4810-46bb-9503-6242055a8661','thumbnail','3D_Changer_015 (1)','3D_Changer_015-(1).png','image/png','s3','s3',3166057,'[]','[]','[]','[]',132,'2021-10-17 10:59:55','2021-10-17 10:59:55'),(184,'App\\Models\\Appearance',3,'26760b1f-d827-4b80-b255-6d901949e992','primary','3D_Changer_0449','3D_Changer_0449.png','image/png','s3','s3',3187107,'[]','[]','[]','[]',155,'2021-11-17 15:59:08','2021-11-17 15:59:08'),(186,'App\\Models\\Slide',3,'97719edb-38d0-4757-aa4e-91d7abd87d47','primary','3D_Changer_0491','3D_Changer_0491.png','image/png','s3','s3',3143171,'[]','[]','[]','[]',157,'2021-11-17 16:08:07','2021-11-17 16:08:07'),(187,'App\\Models\\Slide',4,'c14cda45-5578-403c-9745-c8f1d9590e6c','primary','3D_Changer_0746','3D_Changer_0746.png','image/png','s3','s3',2962300,'[]','[]','[]','[]',158,'2021-11-17 16:52:57','2021-11-17 16:52:57'),(193,'App\\Models\\Appearance',4,'014497f6-b3ff-47aa-9261-9379ca085a60','primary','3D_Changer_0816','3D_Changer_0816.png','image/png','s3','s3',3122827,'[]','[]','[]','[]',164,'2021-11-19 14:17:52','2021-11-19 14:17:52'),(194,'App\\Models\\Slide',2,'02bdfd10-eb81-4961-982b-5b1d37e992bd','primary','3D_Changer_0824','3D_Changer_0824.png','image/png','s3','s3',3591913,'[]','[]','[]','[]',165,'2021-11-19 14:18:54','2021-11-19 14:18:54'),(195,'App\\Models\\Product',1,'55faa665-5a0b-4971-b568-a92fe4e8f6a8','collection','WM1000001 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',133545,'[]','[]','[]','[]',166,'2021-11-19 14:51:12','2021-11-19 14:51:12'),(196,'App\\Models\\Product',1,'5437617f-2f43-402c-b93e-03aeb911b790','collection','WM1000001 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',141672,'[]','[]','[]','[]',167,'2021-11-19 14:51:16','2021-11-19 14:51:16'),(197,'App\\Models\\Product',1,'8a0c4937-7ac9-4c5d-bcf5-db5b92ac7301','collection','WM1000001 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',138987,'[]','[]','[]','[]',168,'2021-11-19 14:51:16','2021-11-19 14:51:16'),(198,'App\\Models\\Product',1,'fb40b694-9963-4ff1-9ba1-60add8f01d3b','collection','WM1000001 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',126225,'[]','[]','[]','[]',169,'2021-11-19 14:51:17','2021-11-19 14:51:17'),(199,'App\\Models\\Product',1,'af23882c-7ea8-4157-9c98-db7cf568411b','collection','WM1000001 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',138693,'[]','[]','[]','[]',170,'2021-11-19 14:51:17','2021-11-19 14:51:17'),(200,'App\\Models\\Product',1,'310e309a-2e07-4586-823a-56a814ea2365','collection','WM1000001 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',135808,'[]','[]','[]','[]',171,'2021-11-19 14:51:17','2021-11-19 14:51:17'),(201,'App\\Models\\Product',1,'d2edb763-079e-476b-9202-2c667e6292b0','collection','WM1000001 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000001---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',140848,'[]','[]','[]','[]',172,'2021-11-19 14:51:18','2021-11-19 14:51:18'),(203,'App\\Models\\Product',2,'7a9a2ba8-9454-4084-a45b-470595c11c76','collection','WM1000002 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',204635,'[]','[]','[]','[]',174,'2021-11-19 14:53:45','2021-11-19 14:53:45'),(204,'App\\Models\\Product',2,'f5ef8f5a-fb40-446e-880f-3db09b3780bf','collection','WM1000002 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',202740,'[]','[]','[]','[]',175,'2021-11-19 14:53:47','2021-11-19 14:53:47'),(205,'App\\Models\\Product',2,'8fde9222-4f76-441c-947b-5ac52b6da252','collection','WM1000002 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',200397,'[]','[]','[]','[]',176,'2021-11-19 14:53:48','2021-11-19 14:53:48'),(206,'App\\Models\\Product',2,'ddf63d5d-788a-4c9e-b319-8314ba652760','collection','WM1000002 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',190354,'[]','[]','[]','[]',177,'2021-11-19 14:53:48','2021-11-19 14:53:48'),(207,'App\\Models\\Product',2,'4407e0fb-4bc3-4c73-b9a4-299d6e807e23','collection','WM1000002 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',175596,'[]','[]','[]','[]',178,'2021-11-19 14:53:49','2021-11-19 14:53:49'),(208,'App\\Models\\Product',2,'a2a1c0d0-507f-42c6-b12d-9450c8d92701','collection','WM1000002 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',174634,'[]','[]','[]','[]',179,'2021-11-19 14:53:49','2021-11-19 14:53:49'),(209,'App\\Models\\Product',2,'a97f0482-b744-46d8-9146-1fd92fc8e089','collection','WM1000002 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000002---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',240744,'[]','[]','[]','[]',180,'2021-11-19 14:53:49','2021-11-19 14:53:49'),(211,'App\\Models\\Product',3,'876a8368-cb28-4812-a4eb-8e49174be777','collection','WM1000003 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',173572,'[]','[]','[]','[]',182,'2021-11-19 14:56:29','2021-11-19 14:56:29'),(212,'App\\Models\\Product',3,'d4d409fc-8e4a-4e70-9fb1-d111fd642d22','collection','WM1000003 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',170153,'[]','[]','[]','[]',183,'2021-11-19 14:56:31','2021-11-19 14:56:31'),(213,'App\\Models\\Product',3,'06c2b3f9-aaf3-434e-b23c-9b03ccf580ef','collection','WM1000003 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',166187,'[]','[]','[]','[]',184,'2021-11-19 14:56:32','2021-11-19 14:56:32'),(214,'App\\Models\\Product',3,'31a1267c-c9a4-46d4-b1a6-3589173ce0d4','collection','WM1000003 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',163633,'[]','[]','[]','[]',185,'2021-11-19 14:56:32','2021-11-19 14:56:32'),(215,'App\\Models\\Product',3,'c330b5ac-3cbc-4842-a9f0-ce4390635e0d','collection','WM1000003 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',147309,'[]','[]','[]','[]',186,'2021-11-19 14:56:33','2021-11-19 14:56:33'),(216,'App\\Models\\Product',3,'c6faa0c0-e3d9-4f92-bb45-92318000e742','collection','WM1000003 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',144210,'[]','[]','[]','[]',187,'2021-11-19 14:56:33','2021-11-19 14:56:33'),(217,'App\\Models\\Product',3,'bbe379cd-5507-466b-9288-2898423e5f47','collection','WM1000003 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000003---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',181692,'[]','[]','[]','[]',188,'2021-11-19 14:56:34','2021-11-19 14:56:34'),(219,'App\\Models\\Product',1,'b5aa0b01-f376-49f3-ba7c-b3b8d5ed509b','thumbnail','Thumbnail - WM1000001 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000001---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',129392,'[]','[]','[]','[]',190,'2021-11-19 23:11:05','2021-11-19 23:11:05'),(220,'App\\Models\\Product',2,'17c12eac-b89a-46b0-bef8-9697732054fa','thumbnail','Thumbnail - WM1000002 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000002---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',202202,'[]','[]','[]','[]',191,'2021-11-19 23:12:06','2021-11-19 23:12:06'),(221,'App\\Models\\Product',3,'c3b7537b-e083-4c12-a71c-91a3c9e5ffe0','thumbnail','Thumbnail - WM1000003 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000003---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',171017,'[]','[]','[]','[]',192,'2021-11-19 23:12:47','2021-11-19 23:12:47'),(233,'App\\Models\\Product',5,'f09cf5b1-556f-4ace-8e60-8c9c3d0e55fa','collection','WM1000005 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',158580,'[]','[]','[]','[]',204,'2021-11-20 22:35:28','2021-11-20 22:35:28'),(234,'App\\Models\\Product',5,'ec878d6c-d764-4271-b518-7346ac548d91','collection','WM1000005 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',168570,'[]','[]','[]','[]',205,'2021-11-20 22:35:29','2021-11-20 22:35:29'),(235,'App\\Models\\Product',5,'e857e9ac-fd04-4e5c-bbed-e181709e6d2a','collection','WM1000005 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',160031,'[]','[]','[]','[]',206,'2021-11-20 22:35:30','2021-11-20 22:35:30'),(236,'App\\Models\\Product',5,'5b9dcdd2-b1c6-4e82-b3e3-0f4ed14c71f5','collection','WM1000005 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',151285,'[]','[]','[]','[]',207,'2021-11-20 22:35:30','2021-11-20 22:35:30'),(237,'App\\Models\\Product',5,'3f836adc-243a-42c4-ab5c-3cea55e0828a','collection','WM1000005 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',145298,'[]','[]','[]','[]',208,'2021-11-20 22:35:30','2021-11-20 22:35:30'),(238,'App\\Models\\Product',5,'57be6568-468d-4761-b13a-ca82d1a3d8f7','collection','WM1000005 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',144638,'[]','[]','[]','[]',209,'2021-11-20 22:35:31','2021-11-20 22:35:31'),(239,'App\\Models\\Product',5,'af972448-63c9-4294-a295-cc49489dd306','collection','WM1000005 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000005---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',173148,'[]','[]','[]','[]',210,'2021-11-20 22:35:31','2021-11-20 22:35:31'),(240,'App\\Models\\Product',5,'e12c3820-96ce-4d2a-94eb-15be04034639','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',211,'2021-11-20 22:35:32','2021-11-20 22:35:32'),(241,'App\\Models\\Product',5,'f931165e-2456-4464-bdc3-97d638e92d8d','thumbnail','Thumbnail - WM1000005 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000005---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',155124,'[]','[]','[]','[]',212,'2021-11-20 22:35:35','2021-11-20 22:35:35'),(242,'App\\Models\\Product',6,'5014a833-12c0-4c6f-a69e-d2896514f7ff','collection','WM1000006 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',173586,'[]','[]','[]','[]',213,'2021-11-20 22:39:27','2021-11-20 22:39:27'),(243,'App\\Models\\Product',6,'c189187f-b485-447b-93a3-c5c5928774ed','collection','WM1000006 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',168303,'[]','[]','[]','[]',214,'2021-11-20 22:39:29','2021-11-20 22:39:29'),(244,'App\\Models\\Product',6,'27dcc9ae-9bb3-4a8c-9f5d-80099f6b9ad8','collection','WM1000006 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',161725,'[]','[]','[]','[]',215,'2021-11-20 22:39:29','2021-11-20 22:39:29'),(245,'App\\Models\\Product',6,'5a60dd9e-f60c-4440-9b5b-f721fab391ce','collection','WM1000006 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',168527,'[]','[]','[]','[]',216,'2021-11-20 22:39:30','2021-11-20 22:39:30'),(246,'App\\Models\\Product',6,'c043b058-f93c-4ea0-bc4c-92bc9f83f3ce','collection','WM1000006 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',149101,'[]','[]','[]','[]',217,'2021-11-20 22:39:30','2021-11-20 22:39:30'),(247,'App\\Models\\Product',6,'14d49902-7258-4351-8549-db4d34df6f75','collection','WM1000006 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',149527,'[]','[]','[]','[]',218,'2021-11-20 22:39:31','2021-11-20 22:39:31'),(248,'App\\Models\\Product',6,'1025a775-2ff0-428e-a256-717275843516','collection','WM1000006 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000006---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',183948,'[]','[]','[]','[]',219,'2021-11-20 22:39:31','2021-11-20 22:39:31'),(249,'App\\Models\\Product',6,'0d11cec0-4047-43d7-86f4-81dd8506d582','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',220,'2021-11-20 22:39:32','2021-11-20 22:39:32'),(250,'App\\Models\\Product',6,'d6617d57-576e-4e66-a6c2-3c310aff0809','thumbnail','Thumbnail - WM1000006 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000006---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',171353,'[]','[]','[]','[]',221,'2021-11-20 22:39:35','2021-11-20 22:39:35'),(251,'App\\Models\\Product',7,'2710fa5b-36a5-45a1-b307-afb1d62bc007','collection','WM1000007 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',182329,'[]','[]','[]','[]',222,'2021-11-20 22:42:45','2021-11-20 22:42:45'),(252,'App\\Models\\Product',7,'c9bbf0ce-185c-40c0-989d-6fd68697e519','collection','WM1000007 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',184123,'[]','[]','[]','[]',223,'2021-11-20 22:42:46','2021-11-20 22:42:46'),(253,'App\\Models\\Product',7,'a1bee310-2897-48d4-b887-3aada57ac268','collection','WM1000007 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',177775,'[]','[]','[]','[]',224,'2021-11-20 22:42:47','2021-11-20 22:42:47'),(254,'App\\Models\\Product',7,'3e563f46-7052-4fd3-a4e6-a51627368354','collection','WM1000007 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',173243,'[]','[]','[]','[]',225,'2021-11-20 22:42:47','2021-11-20 22:42:47'),(255,'App\\Models\\Product',7,'051a573e-959d-49d8-96a1-bbe5453e9e0d','collection','WM1000007 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',167240,'[]','[]','[]','[]',226,'2021-11-20 22:42:47','2021-11-20 22:42:47'),(256,'App\\Models\\Product',7,'2261037c-5624-4c57-a334-0a3423776064','collection','WM1000007 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',163598,'[]','[]','[]','[]',227,'2021-11-20 22:42:48','2021-11-20 22:42:48'),(257,'App\\Models\\Product',7,'bc8cf379-9c60-479a-95d5-7d8585326eaf','collection','WM1000007 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000007---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',204552,'[]','[]','[]','[]',228,'2021-11-20 22:42:48','2021-11-20 22:42:48'),(258,'App\\Models\\Product',7,'bf30c445-4ce0-4058-bbe3-029451945ea4','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',229,'2021-11-20 22:42:49','2021-11-20 22:42:49'),(259,'App\\Models\\Product',7,'ed75d08a-d44a-4256-b31e-bd2497063e4d','thumbnail','Thumbnail - WM1000007 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000007---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',179853,'[]','[]','[]','[]',230,'2021-11-20 22:42:53','2021-11-20 22:42:53'),(260,'App\\Models\\Product',8,'3c60cce8-e469-4075-8861-ccbfb3f7ab04','collection','WM1000008 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',151356,'[]','[]','[]','[]',231,'2021-11-20 22:59:59','2021-11-20 22:59:59'),(261,'App\\Models\\Product',8,'139e1bad-c780-4aca-8714-b6f84472e3f1','collection','WM1000008 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',160780,'[]','[]','[]','[]',232,'2021-11-20 23:00:03','2021-11-20 23:00:03'),(262,'App\\Models\\Product',8,'1f62e861-5a1e-4ec4-8ed6-4b361183abbf','collection','WM1000008 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',168490,'[]','[]','[]','[]',233,'2021-11-20 23:00:03','2021-11-20 23:00:03'),(263,'App\\Models\\Product',8,'1a53a7f5-2bd3-4ff4-b943-71d76fb80066','collection','WM1000008 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',146666,'[]','[]','[]','[]',234,'2021-11-20 23:00:04','2021-11-20 23:00:04'),(264,'App\\Models\\Product',8,'e5355f78-4f96-499c-88d7-7e49c2054340','collection','WM1000008 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',142050,'[]','[]','[]','[]',235,'2021-11-20 23:00:04','2021-11-20 23:00:04'),(265,'App\\Models\\Product',8,'8abb1a75-aa21-439a-873e-6661f2262db5','collection','WM1000008 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',146803,'[]','[]','[]','[]',236,'2021-11-20 23:00:04','2021-11-20 23:00:04'),(266,'App\\Models\\Product',8,'ec412386-132c-408d-802a-7752d8233d26','collection','WM1000008 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000008---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',178776,'[]','[]','[]','[]',237,'2021-11-20 23:00:05','2021-11-20 23:00:05'),(267,'App\\Models\\Product',8,'dd176366-b17b-4809-ad83-0bdc10767c3d','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',238,'2021-11-20 23:00:05','2021-11-20 23:00:05'),(268,'App\\Models\\Product',8,'024654e8-6f3a-4f19-b7b7-a6bbd8a8e656','thumbnail','Thumbnail - WM1000008 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000008---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',147882,'[]','[]','[]','[]',239,'2021-11-20 23:00:08','2021-11-20 23:00:08'),(269,'App\\Models\\Product',9,'5de31cfb-64ce-4b0e-8dc1-b693f33491ac','collection','WM1000009 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',157996,'[]','[]','[]','[]',240,'2021-11-20 23:02:20','2021-11-20 23:02:20'),(270,'App\\Models\\Product',9,'31e09c03-b7d5-4146-97a3-0dde67ceb213','collection','WM1000009 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',150260,'[]','[]','[]','[]',241,'2021-11-20 23:02:22','2021-11-20 23:02:22'),(271,'App\\Models\\Product',9,'97b4ac4c-af3b-400d-9db0-0231df9962b3','collection','WM1000009 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',156101,'[]','[]','[]','[]',242,'2021-11-20 23:02:22','2021-11-20 23:02:22'),(272,'App\\Models\\Product',9,'9b7fd6ae-7ec1-4018-9cdf-0ac0e1d4f8da','collection','WM1000009 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',158847,'[]','[]','[]','[]',243,'2021-11-20 23:02:23','2021-11-20 23:02:23'),(273,'App\\Models\\Product',9,'6f5a4852-f3bc-4a2d-aff6-c0bfc9e1bd8e','collection','WM1000009 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',145148,'[]','[]','[]','[]',244,'2021-11-20 23:02:23','2021-11-20 23:02:23'),(274,'App\\Models\\Product',9,'b3ed98c3-d902-4679-9356-2ae99a6f8e9f','collection','WM1000009 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',144341,'[]','[]','[]','[]',245,'2021-11-20 23:02:23','2021-11-20 23:02:23'),(275,'App\\Models\\Product',9,'237e1fee-e65f-4392-a7ee-90396a60e0c9','collection','WM1000009 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000009---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',191197,'[]','[]','[]','[]',246,'2021-11-20 23:02:24','2021-11-20 23:02:24'),(276,'App\\Models\\Product',9,'034fcd85-6faf-43fe-8e17-c2c1f1a98378','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',247,'2021-11-20 23:02:24','2021-11-20 23:02:24'),(277,'App\\Models\\Product',9,'39d10ea4-1e1e-4ceb-8a49-771f9671597d','thumbnail','Thumbnail - WM1000009 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000009---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',154381,'[]','[]','[]','[]',248,'2021-11-20 23:02:28','2021-11-20 23:02:28'),(278,'App\\Models\\Product',10,'3918793a-9745-4ef3-b9e0-e76387db2c3b','collection','WM1000010 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',188044,'[]','[]','[]','[]',249,'2021-11-20 23:06:36','2021-11-20 23:06:36'),(279,'App\\Models\\Product',10,'d999ed42-cc19-4647-ad75-ed2c0268e794','collection','WM1000010 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',191311,'[]','[]','[]','[]',250,'2021-11-20 23:06:37','2021-11-20 23:06:37'),(280,'App\\Models\\Product',10,'eb46905b-638f-487f-b86b-7dfee30684da','collection','WM1000010 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',187205,'[]','[]','[]','[]',251,'2021-11-20 23:06:38','2021-11-20 23:06:38'),(281,'App\\Models\\Product',10,'90d3e07b-5e90-40f8-a905-a904718b4be6','collection','WM1000010 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',174385,'[]','[]','[]','[]',252,'2021-11-20 23:06:38','2021-11-20 23:06:38'),(282,'App\\Models\\Product',10,'c8172c70-7db3-4828-a748-2e6012226171','collection','WM1000010 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',167240,'[]','[]','[]','[]',253,'2021-11-20 23:06:38','2021-11-20 23:06:38'),(283,'App\\Models\\Product',10,'a683ee2f-46a9-4718-89e6-f089f5a186db','collection','WM1000010 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',168137,'[]','[]','[]','[]',254,'2021-11-20 23:06:39','2021-11-20 23:06:39'),(284,'App\\Models\\Product',10,'073bd24a-8954-4eb0-96ed-6853394eddf1','collection','WM1000010 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','WM1000010---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',219481,'[]','[]','[]','[]',255,'2021-11-20 23:06:39','2021-11-20 23:06:39'),(285,'App\\Models\\Product',10,'4ccf7afd-d2bd-4ccb-adba-57204a99db16','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',256,'2021-11-20 23:06:40','2021-11-20 23:06:40'),(294,'App\\Models\\Product',11,'9630a953-b11e-49e8-8510-a70857dfef46','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',265,'2021-11-20 23:09:05','2021-11-20 23:09:05'),(305,'App\\Models\\Slide',6,'e51b5170-d634-46a4-a3b1-33436970eb08','primary','3D_Changer_0557','3D_Changer_0557.png','image/png','s3','s3',2763319,'[]','[]','[]','[]',276,'2021-11-21 13:07:31','2021-11-21 13:07:31'),(306,'App\\Models\\Product',12,'d1c39399-82b6-4f6b-a198-a10cb23d1c34','downloadable','wrapstock-free-design','wrapstock-free-design.zip','application/zip','s3','s3',582169868,'[]','[]','[]','[]',277,'2021-11-23 07:42:36','2021-11-23 07:42:36'),(307,'App\\Models\\Product',1,'cc4c4847-3275-43ba-ac2d-a561a97ccbec','downloadable','wrapstock-free-design','wrapstock-free-design.zip','application/zip','s3','s3',582169868,'[]','[]','[]','[]',278,'2021-11-29 13:28:49','2021-11-29 13:28:49'),(309,'App\\Models\\Appearance',1,'fd81ef9f-b631-46e4-9df7-1ed0ac5aea45','secondary','3D_Changer_0962','3D_Changer_0962.png','image/png','s3','s3',2557717,'[]','[]','[]','[]',280,'2021-12-02 09:52:12','2021-12-02 09:52:12'),(310,'App\\Models\\DesignCharacter',1,'afd5d731-444a-48d6-a63f-d85ae294ec66','primary','Thumbnail - WM1000012 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000012---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',166566,'[]','[]','[]','[]',281,'2021-12-14 21:24:23','2021-12-14 21:24:23'),(321,'App\\Models\\Product',12,'5bbaec50-b53d-407e-8b4c-eb5a5b775259','collection','WM1000012 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',179858,'[]','[]','[]','[]',290,'2022-01-03 13:59:47','2022-01-03 13:59:47'),(322,'App\\Models\\Product',12,'6b9b44c7-ffd9-415d-8657-83104ed1da86','collection','WM1000012 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',148697,'[]','[]','[]','[]',291,'2022-01-03 13:59:48','2022-01-03 13:59:48'),(323,'App\\Models\\Product',12,'b80c488d-8c2b-4547-981b-b65d6400cea0','collection','WM1000012 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',155612,'[]','[]','[]','[]',292,'2022-01-03 13:59:49','2022-01-03 13:59:49'),(324,'App\\Models\\Product',12,'41e6167e-ffe2-4099-a5c1-164b57e92702','collection','WM1000012 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',185795,'[]','[]','[]','[]',293,'2022-01-03 13:59:49','2022-01-03 13:59:49'),(325,'App\\Models\\Product',12,'e79d67bc-4b9a-4169-85df-f86ddc87e7f0','collection','WM1000012 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',150738,'[]','[]','[]','[]',294,'2022-01-03 13:59:50','2022-01-03 13:59:50'),(326,'App\\Models\\Product',12,'93619f73-6bb5-4275-b1c8-19d93c7a4f76','collection','WM1000012 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',143368,'[]','[]','[]','[]',295,'2022-01-03 13:59:50','2022-01-03 13:59:50'),(327,'App\\Models\\Product',12,'80c9a1f1-4085-4e68-b7a9-577f21ab79b7','collection','WM1000012 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000012---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',149052,'[]','[]','[]','[]',296,'2022-01-03 13:59:50','2022-01-03 13:59:50'),(328,'App\\Models\\Product',12,'d7b2b93e-2269-4167-b5ac-2fa419600cef','thumbnail','Thumbnail WM1000012 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Thumbnail-WM1000012---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',177655,'[]','[]','[]','[]',297,'2022-01-03 13:59:51','2022-01-03 13:59:51'),(329,'App\\Models\\Product',4,'800d381f-f897-4341-acfa-c1c540040207','collection','WM1000004 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',231325,'[]','[]','[]','[]',298,'2022-01-03 14:26:24','2022-01-03 14:26:24'),(330,'App\\Models\\Product',4,'b5b3fdfa-fb69-4ae9-b1c9-b74866d4c855','collection','WM1000004 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',239396,'[]','[]','[]','[]',299,'2022-01-03 14:26:26','2022-01-03 14:26:26'),(331,'App\\Models\\Product',4,'5549afaa-0f71-46c2-bccd-547d0e02ee95','collection','WM1000004 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',246436,'[]','[]','[]','[]',300,'2022-01-03 14:26:26','2022-01-03 14:26:26'),(332,'App\\Models\\Product',4,'52006bd6-66e6-4222-9ac8-073a024840c1','collection','WM1000004 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',232970,'[]','[]','[]','[]',301,'2022-01-03 14:26:27','2022-01-03 14:26:27'),(333,'App\\Models\\Product',4,'38c05130-084b-4145-9080-96316b7d47fb','collection','WM1000004 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',210439,'[]','[]','[]','[]',302,'2022-01-03 14:26:27','2022-01-03 14:26:27'),(334,'App\\Models\\Product',4,'fed9fac5-4c11-4065-9e81-81db1a07e87a','collection','WM1000004 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',207713,'[]','[]','[]','[]',303,'2022-01-03 14:26:28','2022-01-03 14:26:28'),(335,'App\\Models\\Product',4,'b6d2fb08-8fce-41c0-83fb-9f635b014fcf','collection','WM1000004 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000004---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',257248,'[]','[]','[]','[]',304,'2022-01-03 14:26:28','2022-01-03 14:26:28'),(336,'App\\Models\\Product',4,'4d3ae525-422f-4f84-9a84-889d2eebc59b','thumbnail','Thumbnail WM1000004 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Thumbnail-WM1000004---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',230136,'[]','[]','[]','[]',305,'2022-01-03 14:26:29','2022-01-03 14:26:29'),(344,'App\\Models\\Product',13,'4ff8732e-f875-4728-a408-98ae3231cc1c','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',313,'2022-01-07 13:49:28','2022-01-07 13:49:28'),(353,'App\\Models\\Product',14,'d5894ccd-ae58-4173-9eb9-a6771420ac1c','downloadable','1 design camouflage','1-design-camouflage.zip','application/zip','s3','s3',19939927,'[]','[]','[]','[]',322,'2022-01-07 13:53:27','2022-01-07 13:53:27'),(367,'App\\Models\\Slide',5,'124cc8c9-f341-452a-8e09-d45534f3a7f8','primary','Render 1 - WM1000011 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Render-1---WM1000011---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',318083,'[]','[]','[]','[]',335,'2022-01-08 13:35:47','2022-01-08 13:35:47'),(370,'App\\Models\\Slide',7,'72dd6fac-5129-4540-a809-cd0e75f9c667','primary','Render 1 - WM1000014 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Render-1---WM1000014---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',342605,'[]','[]','[]','[]',338,'2022-01-08 13:53:40','2022-01-08 13:53:40'),(371,'App\\Models\\Product',14,'3fc319ee-e041-4740-a421-68388a53b01d','collection','WM1000014 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',158426,'[]','[]','[]','[]',339,'2022-01-09 13:02:41','2022-01-09 13:02:41'),(372,'App\\Models\\Product',14,'40fe1927-cb4f-4971-8220-d2dd7aae9f80','collection','WM1000014 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',175964,'[]','[]','[]','[]',340,'2022-01-09 13:02:42','2022-01-09 13:02:42'),(373,'App\\Models\\Product',14,'e1d0071c-11fd-4116-9ef8-4e3ad4e72179','collection','WM1000014 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',184051,'[]','[]','[]','[]',341,'2022-01-09 13:02:43','2022-01-09 13:02:43'),(374,'App\\Models\\Product',14,'103b1052-e980-4d9f-b71e-2b6bdd508567','collection','WM1000014 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',159606,'[]','[]','[]','[]',342,'2022-01-09 13:02:43','2022-01-09 13:02:43'),(375,'App\\Models\\Product',14,'e1b5500a-8010-49a3-bb60-92e01119d109','collection','WM1000014 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',163993,'[]','[]','[]','[]',343,'2022-01-09 13:02:44','2022-01-09 13:02:44'),(376,'App\\Models\\Product',14,'afadf351-73ba-4bbf-aad8-2aac20779ba6','collection','WM1000014 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',156644,'[]','[]','[]','[]',344,'2022-01-09 13:02:44','2022-01-09 13:02:44'),(377,'App\\Models\\Product',14,'7e6aa178-2130-4325-8435-1e59b444c797','collection','WM1000014 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000014---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',222891,'[]','[]','[]','[]',345,'2022-01-09 13:02:44','2022-01-09 13:02:44'),(386,'App\\Models\\Product',14,'d4ca9aeb-abd8-4285-b7e9-a760c7455cfc','thumbnail','Thumbnail WM1000014 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Thumbnail-WM1000014---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',155550,'[]','[]','[]','[]',354,'2022-01-09 13:03:09','2022-01-09 13:03:09'),(394,'App\\Models\\Product',11,'03677101-3a71-42cc-bc2c-34c8cbf4099d','collection','WM1000011 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',145269,'[]','[]','[]','[]',362,'2022-01-09 13:06:01','2022-01-09 13:06:01'),(395,'App\\Models\\Product',11,'4690cf71-c155-4071-8138-f618e866d470','collection','WM1000011 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',171964,'[]','[]','[]','[]',363,'2022-01-09 13:06:03','2022-01-09 13:06:03'),(396,'App\\Models\\Product',11,'09a6d650-8995-4d77-9372-9cc2244bd113','collection','WM1000011 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',177154,'[]','[]','[]','[]',364,'2022-01-09 13:06:03','2022-01-09 13:06:03'),(397,'App\\Models\\Product',11,'b243a633-4101-4c67-b55e-56e922355c1d','collection','WM1000011 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',150157,'[]','[]','[]','[]',365,'2022-01-09 13:06:04','2022-01-09 13:06:04'),(398,'App\\Models\\Product',11,'07e320d3-f585-46f6-906b-b2cfc1c83df9','collection','WM1000011 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',160003,'[]','[]','[]','[]',366,'2022-01-09 13:06:04','2022-01-09 13:06:04'),(399,'App\\Models\\Product',11,'18390a26-a872-42c3-a91f-7381c563470e','collection','WM1000011 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',154301,'[]','[]','[]','[]',367,'2022-01-09 13:06:04','2022-01-09 13:06:04'),(400,'App\\Models\\Product',11,'2f48db31-5f68-41ad-bf4b-802b58514b0d','collection','WM1000011 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000011---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',180259,'[]','[]','[]','[]',368,'2022-01-09 13:06:05','2022-01-09 13:06:05'),(401,'App\\Models\\Product',11,'457a4893-e2a8-49f9-a753-07b97d17b684','thumbnail','Thumbnail WM1000011 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Thumbnail-WM1000011---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',141443,'[]','[]','[]','[]',369,'2022-01-09 13:06:05','2022-01-09 13:06:05'),(402,'App\\Models\\Product',13,'356547f0-e3cd-4c66-9e8c-62f9905972db','collection','WM1000013 - 01 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---01-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',145495,'[]','[]','[]','[]',370,'2022-01-09 13:29:50','2022-01-09 13:29:50'),(403,'App\\Models\\Product',13,'bfd88257-b348-4594-9d94-d6e01baa3b8e','collection','WM1000013 - 02 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---02-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',136233,'[]','[]','[]','[]',371,'2022-01-09 13:29:52','2022-01-09 13:29:52'),(404,'App\\Models\\Product',13,'d161e94d-0739-41ce-9350-fbad64f9931d','collection','WM1000013 - 03 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---03-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',137851,'[]','[]','[]','[]',372,'2022-01-09 13:29:52','2022-01-09 13:29:52'),(405,'App\\Models\\Product',13,'555f8f5a-bc4e-45cc-a729-52298e244225','collection','WM1000013 - 04 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---04-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',147104,'[]','[]','[]','[]',373,'2022-01-09 13:29:52','2022-01-09 13:29:52'),(406,'App\\Models\\Product',13,'764bf40e-8c45-466e-8ac8-196ae11b2132','collection','WM1000013 - 05 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---05-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',121650,'[]','[]','[]','[]',374,'2022-01-09 13:29:53','2022-01-09 13:29:53'),(407,'App\\Models\\Product',13,'bc6eef64-5614-40d0-983a-ec1137878234','collection','WM1000013 - 06 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---06-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',120871,'[]','[]','[]','[]',375,'2022-01-09 13:29:53','2022-01-09 13:29:53'),(408,'App\\Models\\Product',13,'7f578784-0653-4548-949b-e1ca3772d2ea','collection','WM1000013 - 07 WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','WM1000013---07-WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',140042,'[]','[]','[]','[]',376,'2022-01-09 13:29:54','2022-01-09 13:29:54'),(409,'App\\Models\\Product',13,'c5ca77c2-ee74-461c-9d77-19bf02b1c1ff','thumbnail','Thumbnail WM1000013 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas - vinyl wrap','Thumbnail-WM1000013---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas---vinyl-wrap.jpg','image/jpeg','s3','s3',142538,'[]','[]','[]','[]',377,'2022-01-09 13:29:54','2022-01-09 13:29:54'),(425,'App\\Models\\Product',10,'7b7d38f6-75b6-4925-a351-65124e960d4a','thumbnail','Thumbnail - WM1000010 - WRAPMOTIF - car wrap designs - custom designs - vehicle vinyl foil ideas','Thumbnail---WM1000010---WRAPMOTIF---car-wrap-designs---custom-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',185200,'[]','[]','[]','[]',393,'2022-02-03 12:20:33','2022-02-03 12:20:33'),(429,'App\\Models\\Appearance',5,'46d2f4ef-9097-4b77-bf2e-546494eae4b4','primary','Home page - Partners - car wrap designs - custom wrap designs - vehicle vinyl foil ideas','Home-page---Partners---car-wrap-designs---custom-wrap-designs---vehicle-vinyl-foil-ideas.jpg','image/jpeg','s3','s3',146212,'[]','[]','[]','[]',397,'2022-02-13 13:36:02','2022-02-13 13:36:02'),(434,'App\\Models\\Appearance',10,'ef360e85-1469-44c1-a755-465e598a66ba','primary','Wrapmotif Banner tryout 2','Wrapmotif-Banner-tryout-2.jpg','image/jpeg','s3','s3',584555,'[]','[]','[]','[]',402,'2022-02-18 14:13:13','2022-02-18 14:13:13'),(447,'App\\Models\\Slide',1,'f7708381-5272-41eb-b763-4097c683f7e0','primary','3D_Changer_0422','3D_Changer_0422.png','image/png','s3','s3',3217596,'[]','[]','[]','[]',405,'2022-03-23 19:45:30','2022-03-23 19:45:30'),(463,'App\\Models\\Category',1,'53918226-fdc8-45af-8b13-db673b02f0ba','collection','INSTUCTIONS 1 STRIPE','INSTUCTIONS-1-STRIPE.pdf','application/pdf','s3','s3',9476560,'[]','[]','[]','[]',417,'2022-03-24 23:17:54','2022-03-24 23:17:54'),(464,'App\\Models\\Category',1,'07569c2e-5c36-4979-864c-3bcc60871d91','collection','INSTRUCTIONS 5 STRIPES','INSTRUCTIONS-5-STRIPES.pdf','application/pdf','s3','s3',9778053,'[]','[]','[]','[]',418,'2022-03-24 23:17:57','2022-03-24 23:17:57'),(465,'App\\Models\\Category',1,'06f1d063-cb97-44f6-a77c-b149d15d0bab','collection','INSTRUCTIONS 7 STRIPES','INSTRUCTIONS-7-STRIPES.pdf','application/pdf','s3','s3',9868657,'[]','[]','[]','[]',419,'2022-03-24 23:17:58','2022-03-24 23:17:58'),(480,'App\\Models\\Appearance',6,'10ae56a4-7e52-4cef-8b84-677f44fc062f','primary','gears_icons_gradient','gears_icons_gradient.png','image/png','s3','s3',658723,'[]','[]','[]','[]',434,'2022-04-08 17:19:32','2022-04-08 17:19:32'),(481,'App\\Models\\Feature',36,'58c24f03-7da0-4fdd-aaf0-78902be4d44f','primary','WRAPMOTIF ICON 1 _ car wrap design custom customized vehicle wrapping graphic vinyl foil idea customization 3M Avery Dennison Oracal Arlon Inozetek Cheetah race logo company shop studio near me best auto specialist cost price matte professional film','WRAPMOTIF-ICON-1-_-car-wrap-design-custom-customized-vehicle-wrapping-graphic-vinyl-foil-idea-customization-3M-Avery-Dennison-Oracal-Arlon-Inozetek-Cheetah-race-logo-company-shop-studio-near-me-best-auto-specialist-cost-price-matte-professional-film.png','image/png','s3','s3',11620,'[]','[]','[]','[]',435,'2022-04-12 09:42:16','2022-04-12 09:42:16'),(482,'App\\Models\\Feature',37,'28a04b8e-0b1d-4bb1-9611-95d0d77e2dca','primary','WRAPMOTIF ICON 2 _ car wrap design custom customized vehicle wrapping graphic vinyl foil idea customization 3M Avery Dennison Oracal Arlon Inozetek Cheetah race logo company shop studio near me best auto specialist cost price matte professional film','WRAPMOTIF-ICON-2-_-car-wrap-design-custom-customized-vehicle-wrapping-graphic-vinyl-foil-idea-customization-3M-Avery-Dennison-Oracal-Arlon-Inozetek-Cheetah-race-logo-company-shop-studio-near-me-best-auto-specialist-cost-price-matte-professional-film.png','image/png','s3','s3',28534,'[]','[]','[]','[]',436,'2022-04-12 09:42:45','2022-04-12 09:42:45'),(483,'App\\Models\\Feature',38,'56101c2d-4b0e-471a-b1c8-baf482c8f69c','primary','WRAPMOTIF ICON 3 _ car wrap design custom customized vehicle wrapping graphic vinyl foil idea customization 3M Avery Dennison Oracal Arlon Inozetek Cheetah race logo company shop studio near me best auto specialist cost price matte professional film','WRAPMOTIF-ICON-3-_-car-wrap-design-custom-customized-vehicle-wrapping-graphic-vinyl-foil-idea-customization-3M-Avery-Dennison-Oracal-Arlon-Inozetek-Cheetah-race-logo-company-shop-studio-near-me-best-auto-specialist-cost-price-matte-professional-film.png','image/png','s3','s3',34794,'[]','[]','[]','[]',437,'2022-04-12 09:43:16','2022-04-12 09:43:16'),(484,'App\\Models\\Feature',39,'473f9110-4ebc-4eab-bbb5-5f1463c65b91','primary','WRAPMOTIF ICON 4 _ car wrap design custom customized vehicle wrapping graphic vinyl foil idea customization 3M Avery Dennison Oracal Arlon Inozetek Cheetah race logo company shop studio near me best auto specialist cost price matte professional film','WRAPMOTIF-ICON-4-_-car-wrap-design-custom-customized-vehicle-wrapping-graphic-vinyl-foil-idea-customization-3M-Avery-Dennison-Oracal-Arlon-Inozetek-Cheetah-race-logo-company-shop-studio-near-me-best-auto-specialist-cost-price-matte-professional-film.png','image/png','s3','s3',31061,'[]','[]','[]','[]',438,'2022-04-12 09:43:39','2022-04-12 09:43:39'),(485,'App\\Models\\Appearance',7,'7b110c3e-b8e9-4375-8822-72b665ef64bc','primary','gears_icons_gradient_2-1','gears_icons_gradient_2-1.png','image/png','s3','s3',916405,'[]','[]','[]','[]',439,'2022-04-13 21:23:13','2022-04-13 21:23:13');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2021_05_31_154251_create_sessions_table',1),(7,'2021_06_01_130705_create_customers_table',1),(8,'2021_06_01_132125_create_addresses_table',1),(9,'2021_06_04_061303_create_countries_table',1),(10,'2021_06_07_083341_create_appearances_table',1),(11,'2021_06_07_095033_create_media_table',1),(12,'2021_06_09_091428_create_settings_table',1),(13,'2021_06_10_121604_create_features_table',1),(14,'2021_06_15_134450_create_colors_table',1),(15,'2021_06_16_091518_create_categories_table',1),(16,'2021_06_16_112846_create_tags_table',1),(17,'2021_06_17_094742_create_products_table',1),(18,'2021_06_19_114542_create_custom_orders_table',1),(19,'2021_06_19_115831_create_custom_order_tags_table',1),(20,'2021_06_19_115848_create_custom_order_colors_table',1),(21,'2021_06_20_122608_create_custom_order_products_table',1),(22,'2021_06_21_092210_create_product_tag_table',1),(23,'2021_06_24_060514_create_orders_table',1),(24,'2021_06_24_061125_create_order_items_table',1),(25,'2021_06_24_160924_create_sliders_table',1),(26,'2021_06_24_163044_create_slides_table',1),(27,'2021_06_29_125657_create_vehicles_table',1),(28,'2021_06_30_114117_create_vehicle_models_table',1),(29,'2021_07_02_051855_add_customer_currency_to_orders_table',1),(30,'2021_07_04_082703_add_note_column_to_orders_table',1),(31,'2021_07_04_120824_create_design_characters_table',1),(32,'2021_07_06_115905_add_columns_to_custom_orders_table',1),(33,'2021_07_06_121412_add_customer_amount_to_orders_table',1),(34,'2021_07_06_124118_add_customer_amount_to_order_items_table',1),(35,'2021_07_06_153012_add_status_column_to_customers_table',1),(36,'2021_07_07_054907_create_companies_table',1),(37,'2021_07_07_114315_create_favorites_table',1),(38,'2021_07_07_133044_add_vehicle_columns_to_custom_orders_table',1),(39,'2021_07_07_135232_create_comments_table',1),(40,'2021_07_08_093624_create_jobs_table',1),(41,'2021_07_08_110152_create_color_changes_table',1),(42,'2021_07_10_154131_add_vat_column_to_orders_table',1),(43,'2021_07_11_101720_add_vat_columns_to_custom_order_table',1),(44,'2021_07_11_103557_create_faqs_table',1),(45,'2021_07_13_051116_add_vat_columns_to_color_changes',1),(46,'2021_07_13_065652_create_preview_designs_table',1),(47,'2021_07_13_114637_add_color_change_id_to_order_items_table',1),(48,'2021_07_13_133723_add_feedback_column_to_color_changes_table',1),(49,'2021_07_14_072956_add_feedback_column_to_preview_designs',1),(50,'2021_07_16_100126_create_contacts_table',1),(51,'2021_07_16_113038_add_reply_column_to_contacts_table',1),(52,'2021_07_18_104544_add_status_column_to_companies_table',1),(53,'2021_07_26_113914_add_position_column_to_addresses_table',1),(54,'2021_08_04_105433_create_vats_table',1),(55,'2021_08_16_075315_add_total_view_column_to_products_table',2),(56,'2021_09_16_111918_create_coupons_table',3),(57,'2021_09_16_133055_add_deposite_amount_to_design_characters_table',3),(58,'2021_09_17_041600_add_columns_to_coupons_table',4),(59,'2021_09_17_100219_add_columns_to_orders_table',4),(60,'2021_09_28_125354_add_columns_to_color_changes_table',5),(61,'2021_09_29_050125_add_column_to_products_table',6),(62,'2021_09_29_124728_add_feedback_columns_to_custom_orders_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `color_change_id` bigint unsigned DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `customer_amount` double NOT NULL DEFAULT '0',
  `total_download` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_color_change_id_foreign` (`color_change_id`),
  CONSTRAINT `order_items_color_change_id_foreign` FOREIGN KEY (`color_change_id`) REFERENCES `color_changes` (`id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,NULL,134,134,2,'2021-08-19 13:02:50','2021-10-06 10:29:31',NULL),(2,2,1,NULL,134,134,0,'2021-09-18 04:25:57','2021-09-18 04:25:57',NULL),(3,3,3,NULL,300,349,0,'2021-09-30 13:20:07','2021-09-30 13:20:07',NULL),(4,4,1,1,134,134,0,'2021-10-17 11:03:53','2021-10-17 11:03:53',NULL),(5,5,1,1,134,134,0,'2021-10-17 11:05:25','2021-10-17 11:05:25',NULL),(6,6,4,NULL,433,433,0,'2021-10-17 11:07:00','2021-10-17 11:07:00',NULL),(7,7,12,NULL,134,151,0,'2021-11-23 05:11:17','2021-11-23 05:11:17',NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `customer_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` bigint unsigned DEFAULT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `customer_amount` double NOT NULL DEFAULT '0',
  `vat` double NOT NULL DEFAULT '0',
  `vat_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '%',
  `vat_amount` double NOT NULL DEFAULT '0',
  `customer_vat_amount` double NOT NULL DEFAULT '0',
  `total_discount` double NOT NULL DEFAULT '0',
  `customer_total_discount` double NOT NULL DEFAULT '0',
  `grand_total` double NOT NULL DEFAULT '0',
  `customer_grand_total` double NOT NULL DEFAULT '0',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_coupon_id_foreign` (`coupon_id`),
  CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-08-19',2,'EUR',NULL,134,134,0,'%',0,0,0,0,134,0,NULL,'2021-08-19 13:02:50','2021-10-06 10:29:07',NULL),(2,'2021-09-18',3,'EUR',2,134,134,0,'%',0,0,50,50,84,84,'This is a coupon tet','2021-09-18 04:25:57','2021-09-18 04:25:57',NULL),(3,'2021-09-30',3,'USD',NULL,300,349,0,'%',0,0,0,0,300,349,NULL,'2021-09-30 13:20:07','2021-09-30 13:20:07',NULL),(4,'2021-10-17',2,'EUR',NULL,134,134,20,'%',27,27,0,0,161,161,NULL,'2021-10-17 11:03:53','2021-10-17 11:03:53',NULL),(5,'2021-10-17',2,'EUR',NULL,134,134,20,'%',27,27,0,0,161,161,NULL,'2021-10-17 11:05:25','2021-10-17 11:05:25',NULL),(6,'2021-10-17',2,'EUR',NULL,433,433,20,'%',87,87,0,0,520,520,NULL,'2021-10-17 11:07:00','2021-10-17 11:07:00',NULL),(7,'2021-11-23',8,'USD',NULL,134,151,0,'%',0,0,0,0,134,151,NULL,'2021-11-23 05:11:17','2021-11-23 05:11:17',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('easolaiman@gmail.com','$2y$10$NQiUZ6L42ceRLja.Eu0qaOlS.pJiCwG/qAr9ADwLci.KzqkQmv8MW','2021-12-06 11:11:31'),('solaimanelakraa@gmail.com','$2y$10$qke0Kj7R1rXUq9/.0I4mHuRnZgRvJFkt/SFrJ9D8RVDZ0n4aGQM9q','2022-03-20 12:17:01');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preview_designs`
--

DROP TABLE IF EXISTS `preview_designs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preview_designs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `vehicle_id` bigint unsigned NOT NULL,
  `vehicle_model_id` bigint unsigned DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deposit_amount` double NOT NULL DEFAULT '0',
  `customer_amount` double NOT NULL DEFAULT '0',
  `customer_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EUR',
  `vat` double NOT NULL DEFAULT '0',
  `vat_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '%',
  `vat_amount` double NOT NULL DEFAULT '0',
  `customer_vat_amount` double NOT NULL DEFAULT '0',
  `grand_total` double NOT NULL DEFAULT '0',
  `customer_grand_total` double NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preview_designs_customer_id_foreign` (`customer_id`),
  KEY `preview_designs_product_id_foreign` (`product_id`),
  KEY `preview_designs_vehicle_id_foreign` (`vehicle_id`),
  KEY `preview_designs_vehicle_model_id_foreign` (`vehicle_model_id`),
  CONSTRAINT `preview_designs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `preview_designs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `preview_designs_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`),
  CONSTRAINT `preview_designs_vehicle_model_id_foreign` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preview_designs`
--

LOCK TABLES `preview_designs` WRITE;
/*!40000 ALTER TABLE `preview_designs` DISABLE KEYS */;
INSERT INTO `preview_designs` VALUES (1,'2021-09-16',2,1,11,9,NULL,30,30,'EUR',0,'%',0,0,30,30,'this is a preview','completed','2021-09-16 11:27:09','2021-09-23 10:43:24',NULL);
/*!40000 ALTER TABLE `preview_designs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  KEY `product_tag_product_id_foreign` (`product_id`),
  KEY `product_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (1,11),(1,9),(1,8),(1,7),(2,13),(2,10),(2,11),(2,8),(2,7),(2,4),(3,11),(3,15),(3,8),(4,6),(4,15),(5,6),(5,11),(6,11),(7,11),(8,6),(8,15),(8,7),(9,15),(9,7),(9,6),(10,15),(10,11),(10,4),(11,11),(11,15),(11,4),(12,10),(5,9),(1,4),(13,14),(13,13),(13,11),(13,2),(14,14),(14,13),(14,11),(14,2);
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `color_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `print_data_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended_material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_view` int NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublished',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_color_id_foreign` (`color_id`),
  KEY `product_name_index` (`name`),
  KEY `sku_name_index` (`sku`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,15,'50 shades of pink','WM1000001',15,'Shades of rose','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',7,'published','2021-08-17 17:37:12','2022-04-26 14:33:58',NULL),(2,1,16,'Multicolor puzzle','WM1000002',15,'Puzzled multicolor design','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',12,'published','2021-09-23 12:37:39','2022-04-26 14:33:49',NULL),(3,1,4,'Vintage puzzle','WM1000003',15,'Black and gray puzzle','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',9,'published','2021-09-30 13:19:24','2022-04-26 14:33:32',NULL),(4,1,12,'Tropical vibe','WM1000004',15,'A walk in the tropical rainforest between Monstera leaves.','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',9,'published','2021-10-14 12:30:15','2022-04-26 14:33:18',NULL),(5,1,9,'Siberian Ice','WM1000005',15,'When the Siberian sea meets winter.','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',9,'published','2021-11-20 22:35:28','2022-04-26 14:32:53',NULL),(6,1,9,'Marine','WM1000006',15,'Marine style','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',10,'published','2021-11-20 22:39:27','2022-04-26 14:32:45',NULL),(7,1,7,'Army','WM1000007',15,'Army style','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',8,'published','2021-11-20 22:42:45','2022-04-26 14:31:04',NULL),(8,1,6,'White Marble','WM1000008',15,'White Marble','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',8,'published','2021-11-20 22:59:59','2022-04-26 14:31:41',NULL),(9,1,4,'Black Marble','WM1000009',15,'Black Marble','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',10,'published','2021-11-20 23:02:20','2022-04-26 14:31:52',NULL),(10,1,4,'HipHop Style','WM1000010',15,'HipHop Style','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',14,'published','2021-11-20 23:06:36','2022-04-26 14:32:01',NULL),(11,1,4,'Abstract Camo','WM1000011',15,'Abstract Camo','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',12,'published','2021-11-20 23:09:01','2022-04-26 14:32:09',NULL),(12,1,12,'J*ker','WM1000012',15,'When J*oker meets Hayley, it\'s game over!','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',10,'published','2021-11-20 23:14:34','2022-04-13 07:33:53',NULL),(13,1,4,'Red Cobra','WM1000013',15,'Watch out for this dangerous snake!','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal',18,'published','2022-01-07 13:49:24','2022-04-19 16:29:02',NULL),(14,1,12,'Kaki Snake','WM1000014',15,'Watch out for this dangerous snake!','Purchasing a design includes the ready-to-print file and a one-time-apply license. All pictures shown are for illustration purposes only. The actual color of the vinyl wrap may vary due to screen differences.','TIFF','3M, Avery Denisson, Oracal, Arlon',18,'published','2022-01-07 13:53:23','2022-05-01 07:48:31',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'website','{\"zip\": \"5138\", \"city\": \"Veliko Tarnovo\", \"name\": \"WRAPMOTIF\", \"email\": \"info@wrapmotif.com\", \"phone\": \"undefined\", \"vatNo\": \"BG202091716\", \"street\": \"ul. Musala 8\", \"country\": \"Bulgaria\", \"description\": \"It\'s simple, just choose a design you love, download it and contact a professional car wrapper.\"}','2021-08-11 10:45:09','2021-09-07 11:49:53');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'designs_page_slider','2021-08-11 12:17:49','2021-08-11 12:17:49'),(2,'custom_page_slider','2021-08-11 13:15:08','2021-08-11 13:15:08');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slides` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slides_slider_id_foreign` (`slider_id`),
  CONSTRAINT `slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,1,'White marble','UNIVERSAL DESIGN','BUY','https://wrapmotif.com/partner','2021-08-11 12:17:49','2022-03-19 13:17:25'),(2,2,'J*KER','Custom design',NULL,NULL,'2021-08-11 13:15:08','2022-03-19 13:16:14'),(3,2,'Green Marble','Color change',NULL,NULL,'2021-11-01 12:26:36','2022-03-19 13:16:35'),(4,2,'50 Shades of Gray','Color change',NULL,NULL,'2021-11-17 16:52:57','2022-03-19 13:16:29'),(5,1,'Abstract Camo','UNIVERSAL DESIGN','BUY','https://wrapmotif.com/designs/11','2021-11-19 23:17:38','2022-03-19 13:17:51'),(6,1,'HipHop Style','UNIVERSAL DESIGN','BUY','https://www.wrapmotif.com/designs/10','2021-11-21 13:07:31','2022-03-19 13:18:01'),(7,1,'Kaki Green Snake','UNIVERSAL DESIGN','BUY','https://wrapmotif.com/designs/14','2022-01-08 13:50:45','2022-03-19 13:18:11');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Other','2021-08-11 12:57:21','2021-08-11 12:58:09'),(2,'Stripes','2021-08-11 12:57:27','2021-08-11 12:58:41'),(3,'Vintage','2021-08-11 12:57:32','2021-08-11 12:58:33'),(4,'Urban','2021-08-11 12:58:57','2021-08-11 12:58:57'),(5,'Racing','2021-08-11 12:59:34','2021-08-11 12:59:34'),(6,'Nature','2021-08-11 12:59:40','2021-08-11 12:59:40'),(7,'Luxury','2021-08-11 12:59:59','2021-08-11 12:59:59'),(8,'Gradient','2021-08-11 13:00:33','2021-08-11 13:01:52'),(9,'Female','2021-08-11 13:00:40','2021-08-11 13:00:40'),(10,'Characters','2021-08-11 13:00:58','2021-08-11 13:00:58'),(11,'Camouflage','2021-08-11 13:01:06','2021-08-11 13:01:06'),(12,'Brand','2021-08-11 13:01:11','2021-08-11 13:01:11'),(13,'Art','2021-08-11 13:01:23','2021-08-11 13:01:23'),(14,'Animal','2021-08-11 13:01:29','2021-08-11 13:01:29'),(15,'Abstract','2021-08-11 13:01:35','2021-08-11 13:01:35');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@example.com',NULL,'$2y$10$y6N6cHuoAfguWRBBVqysI.BMoTu1dmuMtrmuIsJMkZ11frcGgeMqK',NULL,NULL,'fNpu1xteZo5GaySZHJjl7TNIRdmLNpJxiN34bOEcBQnX1ss8YNBKkl3JgVou',NULL,NULL,'2021-08-11 06:51:59','2021-08-11 06:51:59'),(2,'Solaiman','solaimanelakraa@gmail.com',NULL,'$2y$10$Vp7MMw6dkgSgvXUD5VBz2.j2JSZgHTAFe7hA2CC7zDa38X7326oJq',NULL,NULL,'FwGjG9rrZRfkpkFMjCyKzx6GZ3BZwIr0AF41ezKDGx4my8GDFG0Og8XlXsmr',NULL,NULL,'2021-08-11 10:43:06','2022-05-03 09:42:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vats`
--

DROP TABLE IF EXISTS `vats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint unsigned DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '%',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vats_country_id_foreign` (`country_id`),
  CONSTRAINT `vats_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vats`
--

LOCK TABLES `vats` WRITE;
/*!40000 ALTER TABLE `vats` DISABLE KEYS */;
INSERT INTO `vats` VALUES (2,21,20,'%','2021-12-01 10:51:13','2021-12-01 10:51:13',NULL),(3,33,20,'%','2021-12-01 10:51:34','2021-12-01 10:51:34',NULL),(4,54,20,'%','2021-12-01 10:51:51','2021-12-01 10:51:51',NULL),(5,57,20,'%','2021-12-01 10:52:05','2021-12-01 10:52:05',NULL),(6,81,20,'%','2021-12-01 10:52:23','2021-12-01 10:52:23',NULL),(7,67,20,'%','2021-12-01 10:52:49','2021-12-01 10:52:49',NULL),(8,72,20,'%','2021-12-01 10:53:11','2021-12-01 10:53:11',NULL),(9,73,20,'%','2021-12-01 10:53:28','2021-12-01 10:53:28',NULL),(10,84,20,'%','2021-12-01 10:53:46','2021-12-01 10:53:46',NULL),(11,97,20,'%','2021-12-01 10:54:08','2021-12-01 10:54:08',NULL),(12,103,20,'%','2021-12-01 10:54:22','2021-12-01 10:54:22',NULL),(13,105,20,'%','2021-12-01 10:54:54','2021-12-01 10:54:54',NULL),(14,52,20,'%','2021-12-01 10:55:11','2021-12-01 10:55:11',NULL),(15,118,20,'%','2021-12-01 10:55:42','2021-12-01 10:55:42',NULL),(16,124,20,'%','2021-12-01 10:55:57','2021-12-01 10:55:57',NULL),(17,125,20,'%','2021-12-01 10:56:12','2021-12-01 10:56:12',NULL),(18,133,20,'%','2021-12-01 10:56:26','2021-12-01 10:56:26',NULL),(19,151,20,'%','2021-12-01 10:56:38','2021-12-01 10:56:38',NULL),(20,14,20,'%','2021-12-01 10:56:56','2021-12-01 10:56:56',NULL),(21,171,20,'%','2021-12-01 10:57:14','2021-12-01 10:57:14',NULL),(22,172,20,'%','2021-12-01 10:57:26','2021-12-01 10:57:26',NULL),(23,177,20,'%','2021-12-01 10:57:44','2021-12-01 10:57:44',NULL),(24,193,20,'%','2021-12-01 10:58:02','2021-12-01 10:58:02',NULL),(25,192,20,'%','2021-12-01 10:58:21','2021-12-01 10:58:21',NULL),(26,198,20,'%','2021-12-01 10:58:36','2021-12-01 10:58:36',NULL),(27,55,20,'%','2021-12-01 10:58:53','2021-12-01 10:58:53',NULL),(28,206,20,'%','2021-12-01 10:59:17','2021-12-01 10:59:17',NULL);
/*!40000 ALTER TABLE `vats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_models`
--

DROP TABLE IF EXISTS `vehicle_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_models` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicle_models_vehicle_id_foreign` (`vehicle_id`),
  CONSTRAINT `vehicle_models_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_models`
--

LOCK TABLES `vehicle_models` WRITE;
/*!40000 ALTER TABLE `vehicle_models` DISABLE KEYS */;
INSERT INTO `vehicle_models` VALUES (2,8,'Giulia	2016',NULL,'2021-09-16 11:18:16','2021-09-16 11:18:16'),(4,10,'DBS 2012',NULL,'2021-09-16 11:21:53','2021-09-16 11:21:53'),(9,11,'Q8 2020',NULL,'2021-09-16 11:24:14','2021-09-16 11:24:14'),(10,11,'R8 2016',NULL,'2021-09-16 11:24:37','2021-09-16 11:24:37'),(204,51,'V90 2017',NULL,'2021-10-22 10:55:11','2021-10-22 10:55:11'),(205,51,'XC90 2017',NULL,'2021-10-22 10:58:33','2021-10-22 10:58:33'),(206,52,'Amarok 2011',NULL,'2021-10-22 10:59:24','2021-10-22 10:59:24'),(207,52,'Arteon R 2018',NULL,'2021-10-22 10:59:41','2021-10-22 10:59:41'),(208,52,'Beetle 2012',NULL,'2021-10-22 11:00:00','2021-10-22 11:00:00'),(209,52,'Caddy Maxi 2018',NULL,'2021-10-22 11:00:19','2021-10-22 11:00:19'),(210,52,'Crafter L1H2 2017',NULL,'2021-10-22 11:00:41','2021-10-22 11:00:41'),(211,52,'Cross Up 2016',NULL,'2021-10-22 11:00:59','2021-10-22 11:00:59'),(212,52,'Golf Mk8 2020',NULL,'2021-10-22 11:01:25','2021-10-22 11:01:25'),(213,52,'Golf Mk7 2015',NULL,'2021-10-22 11:01:45','2021-10-22 11:01:45'),(214,52,'Golf Variant 2015',NULL,'2021-10-22 11:02:08','2021-10-22 11:02:08'),(215,52,'Passat Variant R 2015',NULL,'2021-10-22 11:02:34','2021-10-22 11:02:34'),(216,52,'Scirocco R 2015',NULL,'2021-10-22 11:02:51','2021-10-22 11:02:51'),(217,52,'Transporter T5 Caravelle 2011',NULL,'2021-10-22 11:03:12','2021-10-22 11:03:12'),(218,53,'Battle Approved',NULL,'2021-10-22 11:03:42','2021-10-22 11:03:42'),(219,54,'4Runner 2009',NULL,'2021-10-22 11:04:10','2021-10-22 11:04:21'),(220,54,'Camry SE 2018',NULL,'2021-10-22 11:04:38','2021-10-22 11:04:38'),(221,54,'Corolla Sedan 2019',NULL,'2021-10-22 11:04:55','2021-10-22 11:04:55'),(222,54,'GR Supra 2020',NULL,'2021-10-22 11:05:14','2021-10-22 11:05:14'),(223,54,'Hiace Passenger 2013',NULL,'2021-10-22 11:05:32','2021-10-22 11:05:32'),(224,54,'Highlander 2011',NULL,'2021-10-22 11:05:51','2021-10-22 11:05:51'),(225,54,'Hilux Double Cab 2016',NULL,'2021-10-22 11:06:03','2021-10-22 11:06:14'),(226,54,'Land Cruiser Prado 2014',NULL,'2021-10-22 11:06:33','2021-10-22 11:06:33'),(227,54,'RAV4 LE 2019',NULL,'2021-10-22 11:06:50','2021-10-22 11:06:50'),(228,54,'Tacoma 2016',NULL,'2021-10-22 11:07:09','2021-10-22 11:07:09'),(229,55,'Model 3 2019',NULL,'2021-10-22 11:08:20','2021-10-22 11:08:20'),(230,55,'Model S 2015',NULL,'2021-10-22 11:08:50','2021-10-22 11:08:50'),(231,55,'Model S 2018',NULL,'2021-10-22 11:09:20','2021-10-22 11:09:20'),(232,55,'Model X 2019',NULL,'2021-10-22 11:09:40','2021-10-22 11:09:40'),(233,55,'Model Y 2021',NULL,'2021-10-22 11:09:59','2021-10-22 11:09:59'),(234,56,'Forester 2019',NULL,'2021-10-22 11:12:02','2021-10-22 11:12:02'),(235,56,'Impreza WRC 2006',NULL,'2021-10-22 11:12:23','2021-10-22 11:12:23'),(236,56,'Impreza WRX Sti 2015',NULL,'2021-10-22 11:12:51','2021-10-22 11:12:51'),(237,56,'Outback 2020',NULL,'2021-10-22 11:13:13','2021-10-22 11:13:13'),(238,57,'Enyaq 2021',NULL,'2021-10-22 11:14:50','2021-10-22 11:14:50'),(239,57,'Fabia R5 2015',NULL,'2021-10-22 11:15:15','2021-10-22 11:15:15'),(240,57,'Karoq 2018',NULL,'2021-10-22 11:15:37','2021-10-22 11:15:37'),(241,57,'Kodiaq 2017',NULL,'2021-10-22 11:16:03','2021-10-22 11:16:03'),(242,57,'Octavia Combi 2013',NULL,'2021-10-22 11:16:23','2021-10-22 11:16:23'),(243,57,'Superb 2018',NULL,'2021-10-22 11:16:40','2021-10-22 11:16:40'),(244,58,'Ateca 2017',NULL,'2021-10-22 11:17:26','2021-10-22 11:17:26'),(245,58,'Leon FR 2017',NULL,'2021-10-22 11:17:43','2021-10-22 11:17:43'),(246,59,'Ghost 2015',NULL,'2021-10-22 11:18:31','2021-10-22 11:18:31'),(247,60,'Alpine A110 2019',NULL,'2021-10-22 11:19:04','2021-10-22 11:19:04'),(248,60,'Master L1H1 2020',NULL,'2021-10-22 11:19:24','2021-10-22 11:19:24'),(249,60,'Master Panel Van 2010',NULL,'2021-10-22 11:19:51','2021-10-22 11:19:51'),(250,60,'Megane RS 2016',NULL,'2021-10-22 11:20:09','2021-10-22 11:20:09'),(251,61,'Sport SVR 2015',NULL,'2021-10-22 11:25:39','2021-10-22 11:25:39'),(252,61,'Velar 2018',NULL,'2021-10-22 11:26:00','2021-10-22 11:26:00'),(253,62,'911 Carrera 2015',NULL,'2021-10-22 11:30:17','2021-10-22 11:30:17'),(254,62,'911 GT2 RS 2018',NULL,'2021-10-22 11:30:42','2021-10-22 11:30:42'),(255,62,'911 GT3 Cup 2021',NULL,'2021-10-22 11:31:02','2021-10-22 11:31:02'),(256,62,'911 GT3 RS 2016',NULL,'2021-10-22 11:31:22','2021-10-22 11:31:22'),(257,62,'911 Turbo S 2016',NULL,'2021-10-22 11:31:41','2021-10-22 11:31:41'),(258,62,'Cayenne 2018',NULL,'2021-10-22 11:31:59','2021-10-22 11:31:59'),(259,62,'Cayman GT4 2020',NULL,'2021-10-22 11:32:16','2021-10-22 11:32:16'),(260,62,'Panamera 2017',NULL,'2021-10-22 11:32:37','2021-10-22 11:32:37'),(261,62,'Taycan Turbo S 2020',NULL,'2021-10-22 11:32:59','2021-10-22 11:32:59'),(262,63,'Boxer 2020',NULL,'2021-10-22 11:33:38','2021-10-22 11:33:38'),(263,64,'Adam 2013',NULL,'2021-10-22 11:34:10','2021-10-22 11:34:10'),(264,64,'Corsa 3-door 2011',NULL,'2021-10-22 11:34:28','2021-10-22 11:34:28'),(265,64,'Vivaro Cargo 2015',NULL,'2021-10-22 11:34:47','2021-10-22 11:34:47'),(266,65,'350Z Drift',NULL,'2021-10-22 11:40:22','2021-10-22 11:40:22'),(267,65,'370Z Nismo 2015',NULL,'2021-10-22 11:40:49','2021-10-22 11:40:49'),(268,65,'Altima 2019',NULL,'2021-10-22 11:41:07','2021-10-22 11:41:07'),(269,65,'GT-R Nismo 2015',NULL,'2021-10-22 11:41:26','2021-10-22 11:41:26'),(270,65,'GT-R 2012',NULL,'2021-10-22 11:41:41','2021-10-22 11:41:41'),(271,65,'NV200 2010',NULL,'2021-10-22 11:42:00','2021-10-22 11:42:00'),(272,65,'NV300 Cargo 2018',NULL,'2021-10-22 11:42:23','2021-10-22 11:42:23'),(273,65,'Rogue Sport 2020',NULL,'2021-10-22 11:42:40','2021-10-22 11:42:40'),(274,65,'Skyline R32 GT-R Coupe 1989',NULL,'2021-10-22 11:43:56','2021-10-22 11:43:56'),(275,65,'Skyline R34 GT-R',NULL,'2021-10-22 11:44:13','2021-10-22 11:44:13'),(276,66,'Lancer Evo X 2010',NULL,'2021-10-22 11:44:49','2021-10-22 11:44:49'),(277,67,'Works 2011',NULL,'2021-10-22 11:45:26','2021-10-22 11:45:26'),(278,68,'A-Class 2010',NULL,'2021-10-22 12:54:30','2021-10-22 12:54:30'),(279,68,'A45 AMG 2017',NULL,'2021-10-22 12:54:52','2021-10-22 12:54:52'),(280,68,'C-Class W205 sedan AMG 2018',NULL,'2021-10-22 12:55:12','2021-10-22 12:55:12'),(281,68,'C-Class W203 sedan 2005',NULL,'2021-10-22 12:55:33','2021-10-22 12:55:33'),(282,68,'C63 AMG 2017',NULL,'2021-10-22 12:55:55','2021-10-22 12:55:55'),(283,68,'E-Class Sedan 2010',NULL,'2021-10-22 12:56:16','2021-10-22 12:56:16'),(284,68,'E63 AMG Estate 2014',NULL,'2021-10-22 12:56:34','2021-10-22 12:56:34'),(285,68,'EQC AMG 2018',NULL,'2021-10-22 12:56:53','2021-10-22 12:56:53'),(286,68,'G-Class 4x4 2015',NULL,'2021-10-22 12:57:13','2021-10-22 12:57:13'),(287,68,'AMG G 63 2018',NULL,'2021-10-22 12:57:53','2021-10-22 12:57:53'),(288,68,'AMG GLB 2019',NULL,'2021-10-22 12:58:14','2021-10-22 12:58:14'),(289,68,'GLE 2019',NULL,'2021-10-22 12:58:39','2021-10-22 12:58:39'),(290,68,'AMG GT 2015',NULL,'2021-10-22 12:59:06','2021-10-22 12:59:06'),(291,68,'M-Class 2012',NULL,'2021-10-22 12:59:47','2021-10-22 12:59:47'),(292,68,'R-Class 2011',NULL,'2021-10-22 13:00:07','2021-10-22 13:00:07'),(293,68,'S-Class 2003',NULL,'2021-10-22 13:00:30','2021-10-22 13:00:30'),(294,68,'S-Class 2010',NULL,'2021-10-22 13:00:54','2021-10-22 13:00:54'),(295,68,'Sprinter Cargo Box 2003',NULL,'2021-10-22 13:01:15','2021-10-22 13:01:15'),(296,68,'Sprinter Long 2019',NULL,'2021-10-22 13:01:34','2021-10-22 13:01:34'),(297,68,'Sprinter Long High 2014',NULL,'2021-10-22 13:01:58','2021-10-22 13:01:58'),(298,68,'Sprinter Short 2019',NULL,'2021-10-22 13:02:16','2021-10-22 13:02:16'),(299,68,'Sprinter Standard 2019',NULL,'2021-10-22 13:02:34','2021-10-22 13:02:34'),(300,68,'Viano Extralong 2011',NULL,'2021-10-22 13:02:54','2021-10-22 13:02:54'),(301,68,'Vito Short 2011',NULL,'2021-10-22 13:03:13','2021-10-22 13:03:13'),(302,68,'Vito Short 2018',NULL,'2021-10-22 13:03:31','2021-10-22 13:03:31'),(303,68,'X-Class 2018',NULL,'2021-10-22 13:03:51','2021-10-22 13:03:51'),(304,69,'650S Coupe 2015',NULL,'2021-10-22 13:05:03','2021-10-22 13:05:03'),(305,70,'3 2019',NULL,'2021-10-22 13:05:37','2021-10-22 13:05:37'),(306,70,'CX5 2018',NULL,'2021-10-22 13:06:00','2021-10-22 13:06:00'),(307,71,'LS XF50 2018',NULL,'2021-10-22 13:07:25','2021-10-22 13:07:25'),(308,72,'Aventador LP 700 2017',NULL,'2021-10-22 13:08:05','2021-10-22 13:08:05'),(309,72,'Huracan Performante 2014',NULL,'2021-10-22 13:08:26','2021-10-22 13:08:26'),(310,72,'Urus 2019',NULL,'2021-10-22 13:09:07','2021-10-22 13:09:07'),(311,73,'X-Bow',NULL,'2021-10-22 13:09:56','2021-10-22 13:09:56'),(312,74,'Grand Cherokee 2018',NULL,'2021-10-22 13:11:00','2021-10-22 13:11:00'),(313,74,'Wrangler Rubicon 2018',NULL,'2021-10-22 13:11:20','2021-10-22 13:11:20'),(314,75,'F Pace 2017',NULL,'2021-10-22 13:17:07','2021-10-22 13:17:07'),(315,75,'F Type Coupe 2015',NULL,'2021-10-22 13:17:27','2021-10-22 13:17:27'),(316,75,'XFR-S 2014',NULL,'2021-10-22 13:17:49','2021-10-22 13:17:49'),(317,76,'Q60 2017',NULL,'2021-11-15 12:14:15','2021-11-15 12:14:15'),(318,77,'i30 N Line 2019',NULL,'2021-11-15 12:14:58','2021-11-15 12:15:27'),(319,77,'Tucson 2016',NULL,'2021-11-15 12:15:14','2021-11-15 12:15:33'),(320,78,'Accord Sedan 2011',NULL,'2021-11-15 12:16:16','2021-11-15 12:16:16'),(321,78,'Civic Type R 2016',NULL,'2021-11-15 12:16:36','2021-11-15 12:16:36'),(322,78,'CR-V Touring 2017',NULL,'2021-11-15 12:16:58','2021-11-15 12:17:14'),(323,78,'NSX 2017',NULL,'2021-11-15 12:17:37','2021-11-15 12:17:37'),(324,79,'VF Sportwagon 2013',NULL,'2021-11-15 12:18:20','2021-11-15 12:18:20'),(325,79,'Commodore VE Sedan 2012',NULL,'2021-11-15 12:18:40','2021-11-15 12:18:40'),(326,79,'Commodore Evoke UTE 2013',NULL,'2021-11-15 12:19:01','2021-11-15 12:19:01'),(327,80,'Sierra 1500 Crew Cab Short Box 2019',NULL,'2021-11-15 12:19:39','2021-11-15 12:19:39'),(328,81,'Escape 2020',NULL,'2021-11-15 12:20:21','2021-11-15 12:20:21'),(329,81,'Explorer ST 2020',NULL,'2021-11-15 12:20:39','2021-11-15 12:20:39'),(330,81,'F150 Lariat Crew Cab	2015',NULL,'2021-11-15 12:21:01','2021-11-15 12:21:01'),(331,81,'F250 Super Cab XLT 2015',NULL,'2021-11-15 12:21:48','2021-11-15 12:21:48'),(332,81,'F350 SuperDuty 2020',NULL,'2021-11-15 12:22:24','2021-11-15 12:22:24'),(333,81,'FG Falcon XR6 Sedan	2011',NULL,'2021-11-15 12:24:14','2021-11-15 12:24:14'),(334,81,'Fiesta ST-Line 3-door 2017',NULL,'2021-11-15 12:24:56','2021-11-15 12:24:56'),(335,81,'Focus RS 2016',NULL,'2021-11-15 12:25:14','2021-11-15 12:25:14'),(336,81,'Focus Sedan 2011',NULL,'2021-11-15 12:25:30','2021-11-15 12:25:30'),(337,81,'Fusion Titanium 2017',NULL,'2021-11-15 12:25:50','2021-11-15 12:25:50'),(338,81,'Mustang Shelby Super Snake Coupe 2018',NULL,'2021-11-15 12:26:09','2021-11-15 12:26:09'),(339,81,'Mustang Shelby GT350 2016',NULL,'2021-11-15 12:26:30','2021-11-15 12:26:30'),(340,81,'Mustang Shelby GT500 2020',NULL,'2021-11-15 12:27:01','2021-11-15 12:27:01'),(341,81,'Mustang Mach-E	2021',NULL,'2021-11-15 12:27:24','2021-11-15 12:27:24'),(342,81,'Ranger Double Cab 2011',NULL,'2021-11-15 12:27:43','2021-11-15 12:27:43'),(343,81,'Ranger Double Cab Raptor 2018',NULL,'2021-11-15 12:28:00','2021-11-15 12:28:00'),(344,81,'Ranger Double Cab Wildtrak 2016',NULL,'2021-11-15 12:28:18','2021-11-15 12:28:18'),(345,81,'Taurus CN-spec 2016',NULL,'2021-11-15 12:28:32','2021-11-15 12:28:32'),(346,81,'Transit Connect Wagon 2019',NULL,'2021-11-15 12:28:55','2021-11-15 12:28:55'),(347,81,'Transit Custom Van 2018',NULL,'2021-11-15 12:29:17','2021-11-15 12:29:17'),(348,81,'Transit High Van 2014',NULL,'2021-11-15 12:29:32','2021-11-15 12:29:32'),(349,81,'Transit L2H2	2012',NULL,'2021-11-15 12:29:48','2021-11-15 12:29:48'),(350,81,'Transit Low Roof LWB 2020 (long)',NULL,'2021-11-15 12:30:16','2021-11-15 12:30:16'),(351,82,'458 Italia 2013',NULL,'2021-11-15 12:30:56','2021-11-15 12:30:56'),(352,82,'488 GTB 2016',NULL,'2021-11-15 12:49:45','2021-11-15 12:49:45'),(353,82,'F12 2014',NULL,'2021-11-15 12:50:07','2021-11-15 12:50:07'),(354,83,'Challenger SRT	2011',NULL,'2021-11-15 12:50:39','2021-11-15 12:50:39'),(355,83,'Challenger SRT Demon 2018',NULL,'2021-11-15 12:50:56','2021-11-15 12:50:56'),(356,83,'Challenger SRT Hellcat 2018',NULL,'2021-11-15 12:51:14','2021-11-15 12:51:14'),(357,83,'Charger SRT Hellcat 2019',NULL,'2021-11-15 12:51:32','2021-11-15 12:51:32'),(358,83,'RAM 1500 limited 2019',NULL,'2021-11-15 12:51:48','2021-11-15 12:51:48'),(359,83,'Ram ProMaster City Wagon 2019',NULL,'2021-11-15 12:52:06','2021-11-15 12:52:06'),(360,83,'RAM Rebel 2015',NULL,'2021-11-15 12:52:22','2021-11-15 12:52:22'),(361,83,'Viper ACR 2016',NULL,'2021-11-15 12:52:37','2021-11-15 12:52:37'),(362,84,'Camaro 2020',NULL,'2021-11-15 12:53:19','2021-11-15 12:53:19'),(363,84,'Corvette C8 Stingray 2020',NULL,'2021-11-15 12:53:35','2021-11-15 12:53:35'),(364,84,'Corvette C7 Z06 2014',NULL,'2021-11-15 12:53:52','2021-11-15 12:53:52'),(365,84,'Equinox 2010',NULL,'2021-11-15 12:54:06','2021-11-15 12:54:06'),(366,84,'Express 2011',NULL,'2021-11-15 12:54:26','2021-11-15 12:54:26'),(367,84,'Malibu 2013',NULL,'2021-11-15 12:54:41','2021-11-15 12:54:41'),(368,84,'Silverado 1500 LT 2018',NULL,'2021-11-15 12:55:01','2021-11-15 12:55:01'),(369,85,'Berlingo 2015',NULL,'2021-11-15 12:55:35','2021-11-15 12:55:35'),(370,86,'ATSV 2016',NULL,'2021-11-15 12:56:13','2021-11-15 12:56:13'),(371,86,'Escalade	2015',NULL,'2021-11-15 12:56:30','2021-11-15 12:56:30'),(372,87,'Veyron 2015',NULL,'2021-11-15 12:57:02','2021-11-15 12:57:02'),(373,88,'1 Series 2016',NULL,'2021-11-15 12:57:45','2021-11-15 12:57:45'),(374,88,'3 Series 2019',NULL,'2021-11-15 12:58:03','2021-11-15 12:58:03'),(375,88,'6 Series Gran Coupe 2015',NULL,'2021-11-15 12:58:18','2021-11-15 12:58:18'),(376,88,'7 Series LE 2015',NULL,'2021-11-15 12:58:34','2021-11-15 12:58:34'),(377,88,'850i Coupe 2019',NULL,'2021-11-15 12:58:48','2021-11-15 12:58:48'),(378,88,'i8 Coupe	2019',NULL,'2021-11-15 12:59:08','2021-11-15 12:59:08'),(379,88,'M2 Coupe 2016',NULL,'2021-11-15 12:59:25','2021-11-15 12:59:25'),(380,88,'M3 F30 2015',NULL,'2021-11-15 12:59:39','2021-11-15 12:59:39'),(381,88,'M4 Coupe 2016',NULL,'2021-11-15 12:59:53','2021-11-15 12:59:53'),(382,88,'M5 F10 2011',NULL,'2021-11-15 13:00:09','2021-11-15 13:00:09'),(383,88,'X1 2013',NULL,'2021-11-15 13:00:25','2021-11-15 13:00:25'),(384,88,'X3 2003',NULL,'2021-11-15 13:00:41','2021-11-15 13:00:41'),(385,88,'X5 2011',NULL,'2021-11-15 13:00:55','2021-11-15 13:00:55'),(386,88,'X5 M Sport 2019',NULL,'2021-11-15 13:01:10','2021-11-15 13:01:10'),(387,88,'X6 2020',NULL,'2021-11-15 13:01:26','2021-11-15 13:01:26'),(388,88,'X7 2019',NULL,'2021-11-15 13:01:40','2021-11-15 13:01:40'),(389,88,'Z4 M40i First Edition Roadster 2019',NULL,'2021-11-15 13:01:56','2021-11-15 13:01:56'),(390,89,'Continental GT 2018',NULL,'2021-11-15 13:02:26','2021-11-15 13:02:26'),(391,91,'A5 Sportback 2011',NULL,'2021-11-15 13:05:20','2021-11-15 13:05:20'),(392,91,'A6 Allroad 2012',NULL,'2021-11-15 13:05:36','2021-11-15 13:05:36'),(393,91,'A7 Sportback 2018',NULL,'2021-11-15 13:05:52','2021-11-15 13:05:52'),(394,91,'Q8 2020',NULL,'2021-11-15 13:06:06','2021-11-15 13:06:06'),(395,91,'R8 2016',NULL,'2021-11-15 13:06:21','2021-11-15 13:06:21'),(396,91,'RS3 Sportback 2018',NULL,'2021-11-15 13:06:35','2021-11-15 13:06:35'),(397,91,'RS4 Avant 2017',NULL,'2021-11-15 13:06:50','2021-11-15 13:06:50'),(398,91,'RS6 Avant 2020',NULL,'2021-11-15 13:07:03','2021-11-15 13:07:03'),(399,91,'S5 2017',NULL,'2021-11-15 13:07:18','2021-11-15 13:07:18'),(400,91,'TT Coupe 2018',NULL,'2021-11-15 13:07:34','2021-11-15 13:07:34'),(401,92,'DBS 2012',NULL,'2021-11-15 13:08:05','2021-11-15 13:08:05'),(402,92,'Vantage 2019',NULL,'2021-11-15 13:08:21','2021-11-15 13:08:21'),(403,93,'Giulia 2016',NULL,'2021-11-15 13:08:58','2021-11-15 13:08:58'),(404,93,'Stelvio 2019',NULL,'2021-11-15 13:09:13','2021-11-15 13:09:13');
/*!40000 ALTER TABLE `vehicle_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (8,'Delete Alfa Romeo',NULL,'2021-09-16 11:18:00','2021-11-15 13:04:45'),(10,'Delete Aston Martin',NULL,'2021-09-16 11:21:41','2021-11-15 13:04:27'),(11,'Delete Audi',NULL,'2021-09-16 11:22:46','2021-11-15 13:04:03'),(51,'Volvo',NULL,'2021-10-22 10:54:31','2021-10-22 10:54:31'),(52,'Volkswagen',NULL,'2021-10-22 10:59:06','2021-10-22 10:59:06'),(53,'UTV',NULL,'2021-10-22 11:03:29','2021-10-22 11:03:29'),(54,'Toyota',NULL,'2021-10-22 11:04:00','2021-10-22 11:04:00'),(55,'Tesla',NULL,'2021-10-22 11:07:27','2021-10-22 11:07:27'),(56,'Subaru',NULL,'2021-10-22 11:11:41','2021-10-22 11:11:41'),(57,'Skoda',NULL,'2021-10-22 11:14:34','2021-10-22 11:14:34'),(58,'Seat',NULL,'2021-10-22 11:17:08','2021-10-22 11:17:08'),(59,'Rolls Royce',NULL,'2021-10-22 11:18:15','2021-10-22 11:18:15'),(60,'Renault',NULL,'2021-10-22 11:18:48','2021-10-22 11:18:48'),(61,'Range Rover',NULL,'2021-10-22 11:25:18','2021-10-22 11:25:18'),(62,'Porsche',NULL,'2021-10-22 11:29:58','2021-10-22 11:29:58'),(63,'Peugeot',NULL,'2021-10-22 11:33:21','2021-10-22 11:33:21'),(64,'Opel',NULL,'2021-10-22 11:33:53','2021-10-22 11:33:53'),(65,'Nissan',NULL,'2021-10-22 11:40:06','2021-10-22 11:40:06'),(66,'Mitsubishi',NULL,'2021-10-22 11:44:32','2021-10-22 11:44:32'),(67,'Mini John Cooper',NULL,'2021-10-22 11:45:08','2021-10-22 11:45:08'),(68,'Mercedes-Benz',NULL,'2021-10-22 11:45:52','2021-10-22 11:45:52'),(69,'Mclaren',NULL,'2021-10-22 13:04:46','2021-10-22 13:04:46'),(70,'Mazda',NULL,'2021-10-22 13:05:19','2021-10-22 13:05:19'),(71,'Lexus',NULL,'2021-10-22 13:07:08','2021-10-22 13:07:08'),(72,'Lamborghini',NULL,'2021-10-22 13:07:45','2021-10-22 13:07:45'),(73,'KTM',NULL,'2021-10-22 13:09:32','2021-10-22 13:09:32'),(74,'Jeep',NULL,'2021-10-22 13:10:43','2021-10-22 13:10:43'),(75,'Jaguar',NULL,'2021-10-22 13:16:45','2021-10-22 13:16:45'),(76,'Infiniti',NULL,'2021-11-15 12:13:52','2021-11-15 12:13:52'),(77,'Hyundai',NULL,'2021-11-15 12:14:33','2021-11-15 12:14:33'),(78,'Honda',NULL,'2021-11-15 12:16:01','2021-11-15 12:16:01'),(79,'Holden',NULL,'2021-11-15 12:17:56','2021-11-15 12:17:56'),(80,'GMC',NULL,'2021-11-15 12:19:24','2021-11-15 12:19:24'),(81,'Ford',NULL,'2021-11-15 12:20:03','2021-11-15 12:20:03'),(82,'Ferrari',NULL,'2021-11-15 12:30:44','2021-11-15 12:30:44'),(83,'Dodge',NULL,'2021-11-15 12:50:27','2021-11-15 12:50:27'),(84,'Chevrolet',NULL,'2021-11-15 12:53:04','2021-11-15 12:53:04'),(85,'Citroen',NULL,'2021-11-15 12:55:19','2021-11-15 12:55:19'),(86,'Cadillac',NULL,'2021-11-15 12:55:59','2021-11-15 12:55:59'),(87,'Bugatti',NULL,'2021-11-15 12:56:50','2021-11-15 12:56:50'),(88,'BMW',NULL,'2021-11-15 12:57:30','2021-11-15 12:57:30'),(89,'Bentley',NULL,'2021-11-15 13:02:17','2021-11-15 13:02:17'),(91,'Audi',NULL,'2021-11-15 13:05:14','2021-11-15 13:05:14'),(92,'Aston Martin',NULL,'2021-11-15 13:07:53','2021-11-15 13:07:53'),(93,'Alfa Romeo',NULL,'2021-11-15 13:08:44','2021-11-15 13:08:44');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 17:46:22
