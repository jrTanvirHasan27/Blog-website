-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 06:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`id`, `created_at`, `updated_at`, `blog_title`, `blog_desc`, `category_id`, `blog_image`, `poster_id`) VALUES
(3, '2022-12-24 05:13:44', '2022-12-24 12:58:51', 'Messi wins World Cup, Argentina beats France on penalties', 'Lionel Messi won the biggest prize in soccer as Argentina beat France 4-2 in a penalty shootout to claim a third World Cup title despite Kylian Mbapp scoring the first hat trick in a final in 56 years. Lionel Messi\'s once-in-a-generation career is complete. The Argentina superstar is finally a World Cup champion.\r\nMessi scored two goals and then another in a shootout as Argentina beat France 4-2 on penalties Sunday to claim a third World Cup title despite Kylian Mbappé scoring the first hat trick in a final in 56 years.\r\nNow there\'s no debate. Messi is definitively in the pantheon of soccer\'s greatest ever players, alongside Pelé — a record three-time World Cup champion from Brazil — and Diego Maradona, the late Argentina great with whom Messi was so often compared.\r\nMessi achieved what Maradona did in 1986 and dominated a World Cup for Argentina. The torch will one day pass to Mbappé, whose late goals lit up one of the most dramatic finals in the tournament\'s 92-year history and made him the first scorer of a hat trick in a final since 1966, but not just yet.\r\n“Let\'s go, Argentina!” Messi roared into a microphone on the field in the post-match celebrations.\r\nMessi put Argentina ahead from the penalty spot and played a part in Angel Di Maria\'s goal that made it 2-0 after 36 minutes.\r\n\r\nMbappé scored two goals in a 97-second span to take the game to extra time, and then Messi tapped in his second goal in the 109th minute. But there was still time for another penalty from Mbappé to take the thrilling game to a shootout.\r\nGonzalo Montiel scored the clinching penalty kick after Kingsley Coman had an attempt saved by Argentina goalkeeper Emi Martinez and Aurelien Tchouameni missed for France.', 1, '1671908331MessiWinsWorldCup.png', 1),
(4, '2022-12-25 12:33:39', '2022-12-25 12:33:39', 'Bangladesh is the new Asian Tiger', 'I find most people’s thinking about global growth to be remarkably parochial, status-quo biased, and stereotype-driven. By now it’s generally taken as given that countries in East Asia are able to ascend rapidly to developed-country status, using a more-or-less traditional approach of export-oriented manufacturing and climbing up the value chain. After all, we’ve seen Japan do it, then Korea and Taiwan, then China, so few doubt Vietnam’s ability to do the same.\r\n\r\nBut when it comes to developing countries outside East Asia or the periphery of Europe, I find that discussions of their growth prospects suddenly turn gloomy. Top economists like Joe Stiglitz and Dani Rodrik express deep skepticism about the ability of countries outside East Asia to get rich using the manufacturing-centric model. Stiglitz glumly encourages non-East-Asian developing countries to find some entirely new and different path.\r\n\r\nThe official reason for pessimism is “premature deindustrialization”, and there’s some concern that labor-intensive manufacturing will be automated away. But really I think the reason is much simpler and more intuitive — we haven’t seen many countries outside of Europe or East Asia industrialize yet (the main exceptions being Malaysia, Turkey, and Israel), so it’s just not a thing people expect to happen.\r\n\r\nAll those skeptics should take a look at Bangladesh. The compact but populous South Asian country has quietly been powering ahead using a very traditional-looking growth model. A Bloomberg article recently reported that Bangladesh has now surpassed both India and Pakistan in terms of GDP per capita. That’s an astonishing milestone. In purchasing power parity terms, India is still ahead, but the gap is closing.\r\n\r\nMeanwhile, a quick glance at Bangladesh’s GDP shows an astonishingly smooth and even growth path:', 2, '1671993219bangladeshEconomy.png', 1),
(5, '2022-12-26 10:14:45', '2022-12-26 10:14:45', 'How Many Times Has Argentina Won The World Cup?', 'Argentina is persistently ranked as the second-best team in South America. They have topped the FIFA World Rankings on many occasions, including as recently as 2017. Argentina are winners of the  2022 FIFA World Cup Finals. But after a initial shaky campaign, many have written them off after their shock loss in their first group match to Saudi Arabia.\r\nBut that could be a massive mistake because history has proved that Argentina is not a football team you should write off when the World Cup tournaments are concerned.\r\nThe Argentina national football team has won three FIFA World Cups, one in 1978 and one in 1986, and now in 2022, making them one of the most successful national teams in the world. Argentina was runner-up three times, in 1930, 1990, and 2014.\r\n1978 World Cup\r\nMighty Argentina hosted the FIFA World Cup final for the first time in 1978, and it was two years after a military coup that led to a somewhat controversial tournament.\r\n\r\nArgentina was on the brink of exiting this tournament in the second round. They needed to beat Peru by at least four clear goals to get through, but in the end, they beat their fellow South Americans by a total of 6 goals before beating the Netherlands in the final match.\r\nDuring the final game, Argentina took the lead toward the end of the first half and held onto that lead throughout, only to lose control of the World Cup match with just 8 minutes to go. With both teams deadlocked, the game went into extra time, and Argentina scored twice, winning the World Cup final 3-1.', 1, '16720712851978-fifa-world-cup-winners-argentina.png', 1),
(6, '2022-12-26 10:24:29', '2022-12-26 10:26:30', 'Bangladesh: a case study of economic development with challenges', 'Bangladesh has a strong track record of growth and development, even in times of elevated global uncertainty.  A robust demographic dividend, strong ready-made garment (RMG) exports, resilient remittance inflows, and stable macroeconomic conditions have supported rapid economic growth over the past two decades. A strong recovery from the COVID-19 pandemic continued in FY22, although a recent surge in commodity prices has presented new headwinds.\r\n\r\nBangladesh is also a remarkable story of poverty reduction and development. From being one of the poorest nations at birth in 1971, Bangladesh reached lower-middle income status in 2015. It is on track to graduate from the UN’s Least Developed Countries (LDC) list in 2026. Poverty declined from 43.5 percent in 1991 to 14.3 percent in 2016, based on the international poverty line of $1.90 a day (using 2011 Purchasing Power Parity exchange rate). Moreover, human development outcomes improved along many dimensions.\r\nChallenges\r\n\r\nBangladesh, like many other countries, faces global economic challenges. Rising commodity prices and a surge in imports in the second half of FY22 resulted in a widening Balance of Payments (BoP) deficit and accelerating inflation. Foreign exchange reserves declined as a result, reaching US$ 38.9 billion by the end of August 2022. Real GDP growth is expected to slow in FY23 as import suppression measures disrupt economic activity.\r\n\r\nOver the medium term, the balance of payments is projected to return to surplus as import growth moderates.\r\n\r\nTo achieve its vision of attaining upper middle-income status by 2031, Bangladesh needs to create jobs and employment opportunities through a competitive business environment, increase human capital and build a skilled labor force, build efficient infrastructure, and establish a policy environment that attracts private investment.\r\n\r\nDevelopment priorities include diversifying exports beyond the RMG sector; deepening the financial sector; making urbanization more sustainable and strengthening public institutions, including fiscal reforms to generate more domestic revenue for development. Addressing infrastructure gaps would accelerate growth. Addressing vulnerability to climate change and natural disasters will help Bangladesh to continue to build resilience to future shocks. Pivoting towards green growth would support the sustainability of development outcomes for the next generation.', 2, '16720719900_GettyImages-.png', 1),
(7, '2022-12-26 10:37:19', '2022-12-26 10:37:19', 'Russia-Ukraine updates: Russian envoy says US ties in ‘ice age’', 'Russia’s ambassador to Washington has compared the state of US-Russia relations to an “ice age” and warned of a “high” risk of a direct clash between the pair.\r\nA Russian official has warned Moscow may cut oil output next year in response to price caps on its crude and oil products introduced by the European Union and G7.\r\nShelling of the Zaporizhzhia Nuclear Power Plant has “almost stopped”, according to a Russian-installed official in the region.\r\nUkrainian President Volodymyr Zelenskyy returns to his Kyiv office after a trip to the United States, his first overseas venture since the war began.', 3, '1672072639UkraineWar.png', 1),
(8, '2022-12-26 11:06:05', '2022-12-26 11:06:05', 'FIFA World Cup Qatar 2022: What it means to win a World Cup', 'The best moment of Qatar\'s month-long feast of football were saved for Sunday\'s final game at Lusail Iconic Stadium.\r\nArgentina and France reached football\'s ultimate game, with their eyes on lifting a possible third World Cup for their nation. These two were among the most exciting teams to watch at the tournament. The final lived up to the high expectations from around the world. 2-2 after 90 minutes, 3-3 after extra-time. It came down to penalties to decide the match. France\'s star player Kylian Mbappe scored a hattrick, but it wasn\'t enough. It was Messi\'s time to finally lift the trophy he had craved for so long after Argentina triumphed in the shootout.\r\nIt\'s Argentina\'s first World Cup victory since 1986, the first for a South American side in 20 years. It sent the country into raptures, with amazing celebration scenes being shared for days from its capital city, Buenos Aires.\r\n\"Football is not just a game. Football is the life. It represents the life. And when the South American teams go to the pitch, all countries come together, you know?\" explained Pedro Araujo, South American football journalist.\r\n\r\n\"We have the same behaviour, with this heart behaviour, to scream, cry, and touch. We need this, and Argentina represents these feelings with soul. Not just a game, not just a competition. For us, this is the soul. The soul is on the pitch.\"\r\n\r\nThis win means so much to the people of Argentina that there are many stories to tell. One of the most prominent is finally seeing one of the greatest players of all time, Lionel Messi, lift the trophy he wanted the most. At club level, Messi has been the master of Europe, winning ten La Liga titles and four European Cups with Barcelona. It\'s been more challenging for him at the international level. Many feared he would go his entire career without winning a medal for his country.\r\n\r\nLast year, he broke that duck, beating Brazil in the final of the Copa America to win that cup. But the World Cup was the trophy he truly wanted, and his contribution to winning the tournament will be a massive part of his legacy in Argentina and world football.\r\n\r\n\"I think it\'s fair to say many Argentines feel fortunate to have watched Lionel Messi play.\" explained South American football journalist Simon Edwards.\r\n\r\n\"You know, there\'s always the comparisons with Maradona, and that\'s always going to be a huge question. But we saw his final games in Argentina, probably, for the national team, and how excited fans were to attend and to see him play. It\'s going to be something they tell their children. I saw Messi play.\"\r\nThe goals Messi scored against Mexico, Croatia, and France in the final will be remembered for their significance in taking the title. On top of this, he played his part in tense penalty shootouts against the Netherlands and the French, putting away his penalties with ease.\r\n\r\nOverall, the implications of this victory cannot be underestimated for Argentina. They had Maradona, and they now have Messi. As a result of this win, thousands of children will desire to become the next Argentina number 10 to follow in their footsteps.\r\n\r\nFor Messi himself and everyone in Argentina, it\'s time to bask in the moment and enjoy the glory as the 36-year wait to lift the trophy is over.', 1, '1672074365messixmaradona.png', 1),
(9, '2022-12-26 11:10:41', '2022-12-26 11:10:41', 'New Awami League committee to be formed on Monday, December 26', 'Awami League General Secretary Obaidul Quader said that the full committee of the party will be formed on Monday.\r\n\r\nThe party\'s 22nd national council had partially announced the 81-member Central Executive Committee.\r\n\r\nThe minister said this while talking to journalists in the conference room of the Ministry of Road Transport and Bridges at the Secretariat on Monday.\r\n\r\nCriticizing some leaders of the party, he said: “Many people are crying to me to get a post in the party. That\'s why today (Monday) is very stressful for me.”\r\n\r\nEarlier, it was informed by the party that the first meeting of the new presidium of Bangladesh Awami League will be held at Ganabhaban, the official residence of Prime Minister Sheikh Hasina around 7pm on Monday.\r\n\r\nOn Saturday, Awami League President Sheikh Hasina announced the new Awami League Central Working Committee (ALCWC) without any major changes.\r\n\r\nShe announced the names of presidium members, joint general secretaries, organizing secretaries and secretariat members of the party\'s central committee in the second session of the 22nd national council at Engineers Institution in the capital on Saturday after being re-elected as the party president for the 10th time.', 3, '1672074641aoamilig.png', 1),
(10, '2022-12-26 11:14:32', '2022-12-26 11:24:07', 'De Bruyne: Haaland can score 800 goals', 'Kevin De Bruyne believes Manchester City teammate Erling Haaland can go on and score 800 goals before his career ends.\r\n\r\nHaaland, who will return to the city of his birth when the champions resume their Premier League title defence at Leeds on Wednesday, has scored 24 goals in just 19 appearances since his summer move from Borussia Dortmund.\r\n\r\n\"He already has about 200 goals, so he can probably go to 600, 700 or 800 if he stays fit and does the things that he does,\" said De Bruyne.\r\n\r\nThe Belgian international has played with a host of top strikers in his career and is well-placed when it comes to 22-year-old Haaland\'s place in the pecking order.\r\n\r\nDe Bruyne enjoyed a fruitful relationship with the club\'s record goalscorer Sergio Aguero before the Argentinian left the Etihad Stadium in 2021.\r\n\r\nHe has also combined with Romelu Lukaku on international duty, former City teammate Gabriel Jesus and new World Cup-winner Julian Alvarez, a current fellow City player.\r\n\r\n\"It is very hard to compare because they are all totally different,\" said De Bruyne. \r\n\r\n\"They have all scored 300 or 400 goals. Erling is so obsessed with goals he can maybe go beyond that.\"\r\n\r\nHe added: \"He is still a young boy enjoying his life and he takes his football very seriously. He loves scoring goals, so I think that is the most unique thing he has.\"', 1, '1672075447haland.png', 1),
(11, '2022-12-26 11:17:27', '2022-12-26 11:27:42', 'How Charfesson has become a hub for safe vegetables', 'For the first time this year, some 500 marginal farmers in Charfesson Upazila of Bhola have joined the safe food movement and successfully produced different types of winter vegetables by using organic fertilizers.\r\n\r\nBy adopting the environmentally-friendly method, they are getting more crops but spending less money as chemical fertilizer is costlier. Moreover, attacks by diseases and harmful insects are minimal in organic farming and can be controlled using indigenous methods.\r\n\r\nNow wholesalers are visiting different farms and offering the growers good prices to purchase bulk quantities of various types of winter vegetables, including non-poisonous cauliflower, cabbage, beans, radish, tomatoes and brinjal. \r\n\r\nChar Madras Union was chosen by the Department of Agricultural Extension (DAE) as the model area to promote safe farming practices, considering the growing demand for chemical-free fresh vegetables across the country and the local kitchen markets. As a result, these farmers hope to continue safe vegetable farming around the year, engage others with the movement, and change their livelihood. \r\nThe farmers have learned about safe vegetable cultivation methods and the importance of consuming poison-free food from the training this year and have met the expectations of the DAE office by producing the vegetables on 100 acres of land.\r\n\r\nFarmers of the union -- Md Munaf, Omar Farooq and Md Akhtar -- said they used to produce vegetables in winter by using pesticides and chemical fertilizers to grow them faster. But this year, with the help of the DAE, they have learned that the consumption of unsafe vegetables regularly may lead to different complicated diseases, and the cost of production is also higher. \r\n\r\nSo they chose to produce safe vegetables on two acres of land, which cost them around Tk1,00,000, half the amount they had to spend previously. \r\n\r\nFarmers Md Yusuf and Bellal Hossain said the other farmers were inspired at seeing their method. \r\n\r\n“Moreover, our vegetables are in high demand among local buyers. Also, wholesalers come directly to the fields to buy these vegetables. They are offering good prices and sending these vegetables to different districts of the country,” said Yusuf.\r\nDeputy Assistant Agriculture Officer of the union Bikash Das explained how they had assisted the marginalised farmers with advice on good yields.\r\n\r\nCharfesson Upazila Agriculture Extension Officer Md Omar Farooq said Char Madras Union had been chosen to promote the cultivation of safe vegetables. “In the future, we have plans to cultivate poison-free vegetables in the entire upazila,” he added.\r\n\r\nBhola district unit DAE Deputy Director Hasan Waresul Kabir said: “The success stories of the farmers in Char Madras Union are spreading everywhere. We will keep supporting all farmers interested in growing safe vegetables.”', 2, '1672075662bhola-pic-05-copy.png', 1),
(12, '2022-12-26 11:22:35', '2022-12-26 12:10:18', 'Saddam Hussain new president, Sheikh Enan of Chhatra League', 'Former president of Dhaka University unit Chhatra League Saddam Hussain has been chosen to lead the central committee of the ruling party\'s student front.\r\n\r\nOn the other hand, Sheikh Wali Asif Enan - organizing secretary of the immediate-past central committee - has been named general secretary.\r\n\r\nAwami League General Secretary and Road Transport and Bridges Minister Obaidul Quader announced the names late on Tuesday.\r\n\r\nSaddam was the assistant general secretary of the Dhaka University Central Students\' Union (Ducsu). \r\nMazharul Kabir Shoyon and Tanbir Hasan Shaikat were appointed as president and general secretary, respectively, of Chhatra League\'s Dhaka University unit.\r\nPrime Minister Sheikh Hasina inaugurated the 30th national council of the Chhatra League that took place on December 6. \r\n\r\nChhatra League held its 29th council in May 2018.\r\n\r\nIn July of that year, Rezwanul Haque Chowdhury Shovon and Golam Rabbani became president and general secretary of the organization. They lost their posts in September 2019 over various allegations, including extortion in development projects.\r\n\r\nLater, Al-Nahean Khan Joy and Lekhak Bhattacharya became acting president and acting general secretary of Chhatra League. \r\n\r\nOn January 4, 2020, on the foundation anniversary of Chhatra League, Joy and Lekhak became president and general secretary. Since then they had been serving as the two top leaders of the organization.\r\n\r\nBut their record was not spotless. Several leaders and activists of the Chhatra League had demanded a new council several times.', 3, '1672075355bangladesh-chhatra-league-logo.jpeg', 1),
(13, '2022-12-26 11:31:06', '2022-12-26 11:31:06', 'Metro Rail: DMP to provide security till specialized unit is formed', 'Dhaka Metropolitan Police (DMP) will provide security for the long-awaited launch of the Metro rail service in capital Dhaka, which is all set to open to traffic formally.\r\n\r\nPrime Minister Sheikh Hasina will inaugurate the first phase of the Metro – spanning Uttara (Diabari) to Agargaon, on Wednesday.\r\n\r\nThough it has been decided that a specialized new police unit named “Mass Rapid Transit Police\" or “MRT Police” will be formed to ensure security and safety checks at every station of the metro rail, the DMP will do the job in the interim.\r\n\r\nThe process to form the MRT police unit is running late for some procedures, including the final approval of the Secretaries\' Committee under the Cabinet Division.\r\n\r\nContacted, additional DIG (O&M) of Police Headquarters (PHQ), SM Mostak Ahmed told UNB that the draft proposal for formation of the specialized MRT police unit is now at the Cabinet Division for the Secretaries\' Committee\'s final approval. The draft proposal was scheduled to be discussed Monday at the Secretaries\' Committee.\r\n\r\n“The process of forming the MRT Police will start after getting the approval from the committee,” Mostak added.\r\n\r\nReplying to a question, he said the Metrorail authority has sent a letter to the DMP requesting security until the MRT police unit is functional. The DMP will look into the matter, he added.\r\n\r\nContacted, Deputy Commissioner (DC) of DMP\'s media wing Md Faruque Hossain said the DMP has been providing security for the Metro Rail project ever since construction works. As the metro rail authority has already requested the DMP for security from the beginning of formal operation on December 28, local thana police along with reserve force will provide security, he said.\r\n\r\nThe Metro rail authority has requested around 3000 police members but the DMP will provide an adequate number to ensure security and safety of the stations, the DC (Media) added.\r\n\r\nDuring a presentation on Metro rail at Ganobhaban in September 2019, Prime Minister Sheikh Hasina underscored the need for the formation of the separate police unit for ensuring the security of the metro rail.\r\n\r\nLater, the Dhaka Mass Transit Company Limited (DMTCL), under the Ministry of Road, Transport, and Bridges Ministry, submitted the proposal to the Police Headquarters in the same month for the formation of the MRT police.\r\n\r\nFollowing the proposal, the Police Headquarters had sent a draft organogram to the Home Ministry\'s Public Security Division for forming the new unit. After scrutiny, the division later sent the draft to the Public Administration Ministry, from where it went to the Finance Ministry and finally to the Cabinet division.\r\n\r\nOne deputy inspector general (DIG) of police will head up the proposed force, primarily to be formed with 357 members. The number will be increased in phases, AIG (O&M) Mostak said.\r\n\r\nPrime Minister Sheikh Hasina formally inaugurated the construction work on the country\'s first metro rail service on June 26, 2016.\r\n\r\nThe Metro Rail is expected to begin transporting passengers to nine stations between Uttara and Agargaon, and have its route extended up to Motijheel, during 2023.\r\n\r\nSources at the DMTCL said that in the first phase, a limited number of trains carrying fewer passengers will operate for a limited period in the morning and afternoon and the trains will run at less than full speed during this phase of accustomation.\r\n\r\nIn the beginning, the trains will not stop at all stations. They will leave the Uttara station and stop at Pallabi, and then go on to Agargaon without stopping at any of the stations in between. Initially, 12 trains have been kept ready for operating the Uttara to Agargaon route - 10 will run regularly and two will be kept on standby.\r\n\r\nAccording to a Revised Strategic Transport Plan (RSTP), DMTCL plans to introduce six metro rail routes in Dhaka by 2030, with a total length of 128.74km serving a network of 104 stations -53 underground and 51 elevated. Construction on the six metro rail lines is underway accordingly.\r\n\r\nThe MRT police unit will be formed to ensure the security of the entire network in future, when upto 5 million passengers will use the service every day.', 2, '1672075866metro.png', 1),
(14, '2022-12-26 11:32:33', '2022-12-26 11:33:54', 'Simultaneous Movement: BNP forms liaison committee in order to get back on track', 'BNP has formed a seven-member liaison committee to coordinate with the political parties involved in the simultaneous anti-government movement.\r\n\r\nThe member of the liaison committee are Nazrul Islam Khan, Selima Rahman, Iqbal Hasan Mahmud Tuku, Barkat Ullah Bulu, Md Shahjahan, Abdul Awal Mintoo and Sayed Moazzem Hossain Alal, said a party press release on Monday.\r\n\r\nBNP launched the simultaneous movement on December 24 through a mass-procession across the country, except in Dhaka and Rangpur.\r\n\r\nEarlier on December 10, the party announced a 10-point demand to “oust” the current government through a simultaneous movement.\r\n\r\nMeanwhile, Liberal Democratic Party (LDP) also formed a five member liaison committee to coordinate with BNP regarding the programs of the simultaneous movement.\r\n\r\nLDP Secretary General Redwan Ahmed was made the Convenor of the committee while party Presidium Member Nurul Alam its Member Secretary.\r\n\r\nThe other members are Niamul Bashir, Aurangzeb Belal and Mahbub Morshed.', 3, '1672075953bnp.png', 1),
(15, '2022-12-26 12:15:31', '2022-12-26 12:15:31', 'Messi finally wins FIFA World Cup and can claim to be greatest footballer of all time', 'Opinion - The 2022 FIFA World Cup just became a coronation. Football almost never delivers perfect narratives, so when it happens it\'s all the more impactful.\r\n\r\nAnd so it was at Lusail Stadium today, as the greatest player the game has known won its ultimate trophy in dramatic fashion.\r\n\r\nLionel Messi, at 35, has finally won the World Cup with Argentina, leading his national side to an epic victory over the 2018 champions France, with a penalty shootout required to decide the winner after a 3-3 draw.\r\n\r\nAnd we can, more comfortably now, crown him the finest men\'s footballer of all time.\r\n\r\nIt was only fitting that he won the World Cup with Argentina, leading his national side to an epic victory over the 2018 champions France, with a penalty shootout required to decide the winner after a 3-3 draw.\r\n\r\nAnd we can, more comfortably now, crown him the finest men\'s footballer of all time.\r\n\r\nIt was only fitting that Messi\'s heir apparent, Kylian Mbappe, surged towards the end of this game, scoring three goals in a losing side.\r\n\r\nMessi had been the best player in the tournament but was fading towards the end of the final. It seems destiny got in the way to deliver him the ultimate prize.\r\n\r\nThe only asterisk that hovered over his legacy was a failure to win the biggest prize in the sport - the World Cup Trophy. That failure is now a gleaming success story.\r\nNew Zealand\r\nWorld\r\nPolitics\r\nPacific\r\nTe Ao Māori\r\nSport\r\nBusiness\r\nCountry\r\nLocal Democracy Reporting\r\nComment & Analysis\r\nIn Depth\r\nWeather\r\nSPORT19 Dec 2022\r\nMessi finally wins FIFA World Cup and can claim to be greatest footballer of all time\r\n7:30 pm on 19 December 2022 \r\nShare this \r\nShare on Twitter\r\nShare on Facebook\r\nShare via email\r\nShare on Reddit\r\nShare on Linked In\r\nLionel Messi of Argentina gives the thumbs upLionel Messi has maintained a level of sustained brilliance over his entire career. Photo: PHOTOSPORT\r\nOpinion - The 2022 FIFA World Cup just became a coronation. Football almost never delivers perfect narratives, so when it happens it\'s all the more impactful.\r\n\r\nAnd so it was at Lusail Stadium today, as the greatest player the game has known won its ultimate trophy in dramatic fashion.\r\n\r\nLionel Messi, at 35, has finally won the World Cup with Argentina, leading his national side to an epic victory over the 2018 champions France, with a penalty shootout required to decide the winner after a 3-3 draw.\r\n\r\nAnd we can, more comfortably now, crown him the finest men\'s footballer of all time.\r\n\r\nIt was only fitting that he won the World Cup with Argentina, leading his national side to an epic victory over the 2018 champions France, with a penalty shootout required to decide the winner after a 3-3 draw.\r\n\r\nAnd we can, more comfortably now, crown him the finest men\'s footballer of all time.\r\n\r\nIt was only fitting that Messi\'s heir apparent, Kylian Mbappe, surged towards the end of this game, scoring three goals in a losing side.\r\n\r\nMessi had been the best player in the tournament but was fading towards the end of the final. It seems destiny got in the way to deliver him the ultimate prize.\r\n\r\nThe only asterisk that hovered over his legacy was a failure to win the biggest prize in the sport - the World Cup Trophy. That failure is now a gleaming success story.\r\n\r\nFinal stamp of greatness a long time coming\r\nBy five years into his professional career, it was obvious Messi was dancing alongside the gods - the Maradonas and the Pelés.\r\n\r\nBut while those two in particular earned their legacies early with World Cup wins (relatively young for Maradona at 25, extremely young for Pelé at 17), then spent the rest of their careers defending their reputations, Messi has almost been the opposite.\r\n\r\nAs the best player at perhaps the best club side the world has seen in Barcelona, he racked up goals, assists, trophies and personal plaudits.\r\n\r\nTo list his most astonishing statistics, he has nearly 800 career goals, 41 trophies and an unmatched seven Ballon d\'Ors.\r\n\r\nAnd it was the way he did it as well. For a player who has never shown excessive flair, he has been irresistible to watch.\r\n\r\nNever once in his career has he performed an unnecessary step-over or backheel, yet he is an endless highlights reel of dazzling dribbles, sumptuous passes and ridiculous goals.\r\n\r\nDespite being unrelentingly effective, he\'s never been dull to watch. Quite the opposite of a robotic winning machine, he\'s the player most likely to make you gasp in disbelief, or laugh out loud.\r\n\r\nWhile Maradona was often likened to a god, and Pelé to a king, Messi sometimes makes us think he is an alien, something otherworldly. Like he\'s playing a different game to everyone else.\r\nThe World Cup a final flourish\r\nThere is a strong case that he didn\'t need to win the World Cup to be regarded as the greatest. International football is incredibly fickle.\r\n\r\nWhat if France had won the shootout instead? What if Pelé had been born in Estonia and never won a trophy with his national side? Would that make him any less of a player?\r\n\r\nSome of football\'s most legendary names never enjoyed success with their national teams; Alfredo Di Stéfano, Johan Cruyff and George Best to name three.\r\n\r\nMessi has maintained a level of sustained brilliance, over years and years, that exceeds all of them.\r\n\r\nRespected Argentinian sports journalist Juan Pablo Varsky once said: \"Messi is like the very best of Maradona, every single day.\"\r\n\r\nBut there would always be some, when it comes to discussing the best ever, who would point to the empty space in Messi\'s trophy cabinet as a reason he cannot be put at the very top.\r\n\r\nNot anymore.\r\nMessi is our greatest\r\nWhether Argentina had won the final or not, it was a fitting end to Messi\'s international career that he graced a World Cup with his very best football. His very best football is unmatched, perhaps ever.\r\n\r\nMessi can and will be proclaimed the best of all time in the wake of this tournament, but that\'s not to say the debate will cease.\r\n\r\nThere will be some reading these words right now grumbling about how Maradona did more with less, in tougher circumstances.\r\n\r\nEven when Maradona was in his pomp there were some who said Michel Platini was better. Or old timers who insisted the Argentinian was nothing compared to Pelé.\r\n\r\nIn Pelé\'s time, some said he had none of the magic of Garrincha.\r\n\r\nIn 10 years, Mbappe might have done enough to convince some he has eclipsed old Lionel from \'22. Fifteen years later there might be someone else bearing down on Messi\'s records.\r\n\r\nThe point is, for us, for our generation, we have a player we can easily and forcibly argue is the best who ever existed.\r\n\r\nEmbrace this moment, embrace Messi, and get ready to argue with your grandkids about how he was the greatest there ever was.', 1, '1672078531MessitheGreat.png', 5),
(16, '2023-03-12 13:02:58', '2023-03-12 13:02:58', 'Learn more about 2023 NHL draft prospect Ryan Leonard as he analyzes', 'Game Tape with Tony is an interview series with NHL draft prospects with host Tony Ferrari. Combining a laid-back interview with breaking down game tape with the prospects, Game Tape has become an excellent way to get a peek into the mindset of players as they look to take the next step in their hockey careers.\r\n\r\nOn this episode, Tony chats with Ryan Leonard of the USA Hockey National Team Development Program. They discuss the journey to the NTDP squad and how his older brother, AHLer John Leonard, influenced his development. \r\n\r\nTony and Leonard talk about what being a modern-day power forward entails, how Leonard values the chemistry he\'s developed with Will Smith and Gabe Perreault and so much more.\r\n\r\nAfter reviewing some game tape from this season and breaking down his game, Ryan talks about his music tastes, what he\'d do if hockey weren\'t his career path and how he plans to deal with NHL interviews, among other things. \r\n\r\nAfter reviewing some game tape from this season and breaking down his game, Ryan talks about his music tastes, what he\'d do if hockey weren\'t his career path and how he plans to deal with NHL interviews, among other things.', 4, '1678647778post.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `desc`, `image`) VALUES
(1, '2022-12-24 02:55:28', '2022-12-24 11:33:59', 'Sports and Entertainment', 'Its a section where all the sports blogs are posted and analyzed with great joy. Keep up with all the sports and bring peace.', '1671872128Sports_Management.jpg'),
(2, '2022-12-25 11:26:19', '2022-12-25 11:26:19', 'Bangladesh', 'This is the section where all the Bangladeshi blogs are presented. By reviwing this section one can enjoy premium quality of Bangladesh based blogs.', '1671989179Bangladesh.jpg'),
(3, '2022-12-25 13:33:47', '2022-12-25 13:33:47', 'Politics', 'Global politics (which is also known as world politics) is the study of political and environmental relationships in the world. As the world increases in interconnectedness, it is imperative that we explore its significance.', '1671996827politics.png'),
(4, '2023-03-12 12:59:51', '2023-03-12 12:59:51', 'Hockey', 'The game of hockey is played with two teams, each consisting of six players: one goaltender and five skaters. The objective of the game is to score more goals than the opposing team by shooting the puck into their net.', '1678647591rr.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cmnt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmntPoster_id` int(11) NOT NULL,
  `blogpost_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `cmnt`, `cmntPoster_id`, `blogpost_id`) VALUES
(1, '2022-12-27 02:46:01', '2022-12-27 02:46:01', 'Messi is the greatest of all time!', 1, 15),
(2, '2022-12-27 03:07:19', '2022-12-27 03:07:19', 'Bangladesh is developing rapidly!', 1, 4),
(3, '2022-12-27 03:34:50', '2022-12-27 03:34:50', 'He is simply the goat!', 1, 15),
(4, '2022-12-27 03:36:24', '2022-12-27 03:36:24', 'I love Messi. Vamos Argentina.', 5, 15),
(5, '2023-01-16 11:55:59', '2023-01-16 11:55:59', 'Awami League is bad for the country!', 1, 9),
(6, '2023-01-16 12:01:08', '2023-01-16 12:01:08', 'The biggest political party in BD is Awami League.', 6, 9),
(7, '2023-03-12 13:44:06', '2023-03-12 13:44:06', 'Argentina is the best team in the world.', 7, 5),
(8, '2023-05-25 10:12:17', '2023-05-25 10:12:17', 'Testing comment.', 1, 4),
(9, '2023-05-25 10:15:13', '2023-05-25 10:15:13', 'Testing!', 1, 16),
(10, '2023-05-27 10:41:15', '2023-05-27 10:41:15', 'Kill him!', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2022_12_20_163007_create_sessions_table', 1),
(10, '2022_12_23_112611_create_categories_table', 1),
(11, '2022_12_24_081729_create_blogposts_table', 1),
(12, '2022_12_27_082000_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DbOCeqRTkcdMks5VuV4gvwjFUPMX78FvHqe27Jn2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXBEVTY0T3pPZkY3MzJYMWpnUzNjNjhzV1dYcGN4QWpkOXlaZlNIOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1685030125),
('dUshephmo5FLdddKNLM85bW8RcyESaZTSmbf03sM', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEx5cTI0cFczbGhtWnJRWXFIMUUyUFFDdDI3elhtUFFtRXJQY0lSayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fX0=', 1685029278),
('GUDtdmRLCjVTeRBk1nEsrVUrkJzUqgklQizPa56n', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSjc1bVJpOTZCdVphVjB6YURqQTR3RzZidXc2Y1ZQaGhxMG9ZUWdPdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGVELm5KTnkxazA2R2hjbVZMLzd3UHVITXVqOHpma1Uwb3QwMkEvQVFLa3h5VS9OV0ttWHhLIjt9', 1685205721),
('HiwlcQTZeRlGXR6Fia43lVitglqTHxMTixXOjBya', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG0zbXk1RFhsbXl0cnN6TGw1dmhYTGk5OUM3TXhtYmRXSmhZR1hlayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fX0=', 1685030085),
('hTTN8HTBbfSC5NeG2t9ICkhyslHM8qs0NuMITMGY', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXo4eDU3SXJpbjNVV044V3RiSnpXUDFxa3U1YVhySjEzRm1hODJyWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fX0=', 1685029706),
('PIdyHsvwDOdlLV0r1eCNpoeCJWTXmQNh8Ah2cruR', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicWplQ1VPcjRPMnI3dnBPVlVhWHY1ellsOHhzbTB5SmhLc1JUQ0dLayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYy9ibG9ncG9zdC9yZWFkLzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGVELm5KTnkxazA2R2hjbVZMLzd3UHVITXVqOHpma1Uwb3QwMkEvQVFLa3h5VS9OV0ttWHhLIjt9', 1685031357),
('s1tqdiRAXkzxn4BQNVsh0FDsLHdMsFT0w5RBpV3P', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGg2cktNSmY4dnpNd2JRc0lVaHpvbkM3eG41UlY3YzltcnlBM2NNMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1685030204),
('Tt1Tnhv3lkAhhSBIgk901CUrtr3HEL1tGRvohEYh', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2Q4RkVKalY1M2x3dG5IeFI4akw5amN4eHBHVjJOeGUxcjZnZlFZciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvQmxvZy13ZWJzaXRlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1685030278);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tanvir\'s Team', 1, '2022-12-24 02:54:15', '2022-12-24 02:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Tanvir Ahmed', 'jr.tanvirhasan@gmail.com', NULL, '$2y$10$eD.nJNy1k06GhcmVL/7wPuHMuj8zfkU0ot02A/AQKkxyU/NWKmXxK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-24 02:54:15', '2022-12-24 02:54:15'),
(5, 'Tuhin Akter Lija', 'lija@gmail.com', NULL, '$2y$10$M69j/3KSpLRiH3xjRia4YuuEUGMLfbOqFpJ2fmU77MF24cr/.JnqC', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-25 09:02:07', '2022-12-25 09:52:41'),
(6, 'Imran Ahmed', 'imran@gmail.com', NULL, '$2y$10$rye32ACGC044Vtoo1Pb/MOjLLVzftRtuYbt2n0MsUHfTZytqLNWnu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 11:59:25', '2023-01-16 11:59:25'),
(7, 'Mehedi Hasan', 'mehedi@gmail.com', NULL, '$2y$10$SCXteQQaZCdp1WvjqnRjJu0w9bYFk1iWE47y/jHNCYr3/e5IE3I2O', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 13:03:50', '2023-03-12 13:03:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
