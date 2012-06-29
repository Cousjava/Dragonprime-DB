-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2012 at 04:27 PM
-- Server version: 5.1.62
-- PHP Version: 5.3.5-1ubuntu7.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kintian`
--

-- --------------------------------------------------------

--
-- Table structure for table `free_accounts`
--

CREATE TABLE IF NOT EXISTS `free_accounts` (
  `acctid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `sex` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `specialty` varchar(20) NOT NULL,
  `experience` int(11) unsigned NOT NULL DEFAULT '0',
  `gold` int(11) unsigned NOT NULL DEFAULT '0',
  `weapon` varchar(50) NOT NULL DEFAULT 'Fists',
  `armor` varchar(50) NOT NULL DEFAULT 'T-Shirt',
  `seenmaster` int(4) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '1',
  `defense` int(11) unsigned NOT NULL DEFAULT '1',
  `attack` int(11) unsigned NOT NULL DEFAULT '1',
  `alive` int(11) unsigned NOT NULL DEFAULT '1',
  `goldinbank` int(11) NOT NULL DEFAULT '0',
  `marriedto` int(11) unsigned NOT NULL DEFAULT '0',
  `spirits` int(4) NOT NULL DEFAULT '0',
  `laston` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hitpoints` int(11) NOT NULL DEFAULT '10',
  `maxhitpoints` int(11) unsigned NOT NULL DEFAULT '10',
  `gems` int(11) unsigned NOT NULL DEFAULT '0',
  `weaponvalue` int(11) unsigned NOT NULL DEFAULT '0',
  `armorvalue` int(11) unsigned NOT NULL DEFAULT '0',
  `location` varchar(25) NOT NULL DEFAULT 'Degolburg',
  `title` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `badguy` text NOT NULL,
  `companions` text NOT NULL,
  `allowednavs` mediumtext NOT NULL,
  `loggedin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `resurrections` int(11) unsigned NOT NULL DEFAULT '0',
  `superuser` int(11) unsigned NOT NULL DEFAULT '1',
  `weapondmg` int(11) NOT NULL DEFAULT '0',
  `armordef` int(11) NOT NULL DEFAULT '0',
  `age` int(11) unsigned NOT NULL DEFAULT '0',
  `charm` int(11) unsigned NOT NULL DEFAULT '0',
  `specialinc` varchar(50) NOT NULL,
  `specialmisc` text NOT NULL,
  `login` varchar(50) NOT NULL,
  `lastmotd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `playerfights` int(11) unsigned NOT NULL DEFAULT '3',
  `lasthit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seendragon` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `dragonkills` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `restorepage` varchar(128) DEFAULT NULL,
  `hashorse` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bufflist` text NOT NULL,
  `gentime` double unsigned NOT NULL DEFAULT '0',
  `gentimecount` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(40) NOT NULL,
  `uniqueid` varchar(32) DEFAULT NULL,
  `dragonpoints` text NOT NULL,
  `boughtroomtoday` tinyint(4) NOT NULL DEFAULT '0',
  `emailaddress` varchar(128) NOT NULL,
  `emailvalidation` varchar(32) NOT NULL,
  `sentnotice` int(11) NOT NULL DEFAULT '0',
  `prefs` text NOT NULL,
  `pvpflag` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transferredtoday` int(11) unsigned NOT NULL DEFAULT '0',
  `soulpoints` int(11) unsigned NOT NULL DEFAULT '0',
  `gravefights` int(11) unsigned NOT NULL DEFAULT '0',
  `hauntedby` varchar(50) NOT NULL,
  `deathpower` int(11) unsigned NOT NULL DEFAULT '0',
  `gensize` int(11) unsigned NOT NULL DEFAULT '0',
  `recentcomments` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `donation` int(11) unsigned NOT NULL DEFAULT '0',
  `donationspent` int(11) unsigned NOT NULL DEFAULT '0',
  `donationconfig` text NOT NULL,
  `referer` int(11) unsigned NOT NULL DEFAULT '0',
  `refererawarded` tinyint(1) NOT NULL DEFAULT '0',
  `bio` varchar(255) NOT NULL,
  `race` varchar(25) NOT NULL DEFAULT '0',
  `biotime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banoverride` tinyint(4) DEFAULT '0',
  `buffbackup` text,
  `amountouttoday` int(11) unsigned NOT NULL DEFAULT '0',
  `pk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dragonage` int(11) unsigned NOT NULL DEFAULT '0',
  `bestdragonage` int(11) unsigned NOT NULL DEFAULT '0',
  `ctitle` varchar(25) NOT NULL,
  `beta` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slaydragon` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `fedmount` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clanid` int(11) unsigned NOT NULL DEFAULT '0',
  `clanrank` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clanjoindate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `turns` int(11) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`acctid`),
  KEY `name` (`name`),
  KEY `level` (`level`),
  KEY `login` (`login`),
  KEY `alive` (`alive`),
  KEY `laston` (`laston`),
  KEY `lasthit` (`lasthit`),
  KEY `emailaddress` (`emailaddress`),
  KEY `clanid` (`clanid`),
  KEY `locked` (`locked`,`loggedin`,`laston`),
  KEY `referer` (`referer`),
  KEY `uniqueid` (`uniqueid`),
  KEY `emailvalidation` (`emailvalidation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `free_accounts`
--

INSERT INTO `free_accounts` (`acctid`, `name`, `sex`, `specialty`, `experience`, `gold`, `weapon`, `armor`, `seenmaster`, `level`, `defense`, `attack`, `alive`, `goldinbank`, `marriedto`, `spirits`, `laston`, `hitpoints`, `maxhitpoints`, `gems`, `weaponvalue`, `armorvalue`, `location`, `title`, `password`, `badguy`, `companions`, `allowednavs`, `loggedin`, `resurrections`, `superuser`, `weapondmg`, `armordef`, `age`, `charm`, `specialinc`, `specialmisc`, `login`, `lastmotd`, `playerfights`, `lasthit`, `seendragon`, `dragonkills`, `locked`, `restorepage`, `hashorse`, `bufflist`, `gentime`, `gentimecount`, `lastip`, `uniqueid`, `dragonpoints`, `boughtroomtoday`, `emailaddress`, `emailvalidation`, `sentnotice`, `prefs`, `pvpflag`, `transferredtoday`, `soulpoints`, `gravefights`, `hauntedby`, `deathpower`, `gensize`, `recentcomments`, `donation`, `donationspent`, `donationconfig`, `referer`, `refererawarded`, `bio`, `race`, `biotime`, `banoverride`, `buffbackup`, `amountouttoday`, `pk`, `dragonage`, `bestdragonage`, `ctitle`, `beta`, `slaydragon`, `fedmount`, `regdate`, `clanid`, `clanrank`, `clanjoindate`, `turns`) VALUES
(1, '`%Admin `&administrator`0', 0, 'MP', 0, 0, 'Fists', 'T-Shirt', 0, 1, 1, 1, 1, 0, 0, 0, '2012-04-09 20:09:09', 10, 10, 0, 0, 0, 'Glorfindal', '', 'ed39c07b48c3fb2a2bbaf87a1268fd54', '', 'a:0:{}', 'a:77:{s:48:"user.php?op=search&module=onslaught&subop=module";b:1;s:25:"user.php?op=edit&userid=2";b:1;s:48:"user.php?op=savemodule&module=onslaught&userid=2";b:1;s:28:"user.php?op=lasthit&userid=2";b:1;s:25:"superuser.php?c=29-200909";b:1;s:23:"village.php?c=29-200909";b:1;s:32:"user.php?op=setupban&c=29-200909";b:1;s:33:"user.php?op=removeban&c=29-200909";b:1;s:41:"user.php?op=setupban&userid=2&c=29-200909";b:1;s:40:"user.php?op=lasthit&userid=2&c=29-200909";b:1;s:41:"user.php?op=debuglog&userid=2&c=29-200909";b:1;s:131:"bio.php?char=2&ret=%2Fkintian%2Fuser.php%3Fop%3Dedit%26subop%3Dmodule%26userid%3D2%26module%3Donslaught%26c%3D28-200903&c=29-200909";b:1;s:151:"donators.php?op=add1&name=Cousjava&ret=%2Fkintian%2Fuser.php%3Fop%3Dedit%26subop%3Dmodule%26userid%3D2%26module%3Donslaught%26c%3D28-200903&c=29-200909";b:1;s:37:"user.php?op=edit&userid=2&c=29-200909";b:1;s:71:"user.php?op=edit&subop=module&userid=2&module=creatureadmin&c=29-200909";b:1;s:75:"user.php?op=edit&subop=module&userid=2&module=translationwizard&c=29-200909";b:1;s:76:"user.php?op=edit&subop=module&userid=2&module=translationconvert&c=29-200909";b:1;s:70:"user.php?op=edit&subop=module&userid=2&module=bioextension&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=clanbuffs&c=29-200909";b:1;s:70:"user.php?op=edit&subop=module&userid=2&module=class_wizard&c=29-200909";b:1;s:72:"user.php?op=edit&subop=module&userid=2&module=ajaxcommentary&c=29-200909";b:1;s:82:"user.php?op=edit&subop=module&userid=2&module=commentaryicons_physdesc&c=29-200909";b:1;s:78:"user.php?op=edit&subop=module&userid=2&module=commentaryicons_race&c=29-200909";b:1;s:80:"user.php?op=edit&subop=module&userid=2&module=commentaryicons_weapon&c=29-200909";b:1;s:70:"user.php?op=edit&subop=module&userid=2&module=game_fivesix&c=29-200909";b:1;s:66:"user.php?op=edit&subop=module&userid=2&module=outhouse&c=29-200909";b:1;s:69:"user.php?op=edit&subop=module&userid=2&module=crazyaudrey&c=29-200909";b:1;s:63:"user.php?op=edit&subop=module&userid=2&module=fairy&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=oldman&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=pinata&c=29-200909";b:1;s:65:"user.php?op=edit&subop=module&userid=2&module=riddles&c=29-200909";b:1;s:68:"user.php?op=edit&subop=module&userid=2&module=stonehenge&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=rspmutant&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=gender&c=29-200909";b:1;s:63:"user.php?op=edit&subop=module&userid=2&module=tynan&c=29-200909";b:1;s:68:"user.php?op=edit&subop=module&userid=2&module=gravebless&c=29-200909";b:1;s:75:"user.php?op=edit&subop=module&userid=2&module=improbablehousing&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=iitems&c=29-200909";b:1;s:69:"user.php?op=edit&subop=module&userid=2&module=iitemcrates&c=29-200909";b:1;s:71:"user.php?op=edit&subop=module&userid=2&module=iitems_trader&c=29-200909";b:1;s:75:"user.php?op=edit&subop=module&userid=2&module=iitems_meatsystem&c=29-200909";b:1;s:77:"user.php?op=edit&subop=module&userid=2&module=implantchemicalpack&c=29-200909";b:1;s:74:"user.php?op=edit&subop=module&userid=2&module=implantservoarms&c=29-200909";b:1;s:70:"user.php?op=edit&subop=module&userid=2&module=implantlaser&c=29-200909";b:1;s:81:"user.php?op=edit&subop=module&userid=2&module=implantspatialawareness&c=29-200909";b:1;s:75:"user.php?op=edit&subop=module&userid=2&module=implantteslaframe&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=onslaught&c=29-200909";b:1;s:65:"user.php?op=edit&subop=module&userid=2&module=example&c=29-200909";b:1;s:72:"user.php?op=edit&subop=module&userid=2&module=cedrikspotions&c=29-200909";b:1;s:61:"user.php?op=edit&subop=module&userid=2&module=dag&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=drinks&c=29-200909";b:1;s:66:"user.php?op=edit&subop=module&userid=2&module=sethsong&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=lovers&c=29-200909";b:1;s:68:"user.php?op=edit&subop=module&userid=2&module=worldmapen&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=racegobot&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=racejoker&c=29-200909";b:1;s:68:"user.php?op=edit&subop=module&userid=2&module=racemidget&c=29-200909";b:1;s:68:"user.php?op=edit&subop=module&userid=2&module=racemutant&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=racerobot&c=29-200909";b:1;s:75:"user.php?op=edit&subop=module&userid=2&module=specialtydarkarts&c=29-200909";b:1;s:78:"user.php?op=edit&subop=module&userid=2&module=specialtymysticpower&c=29-200909";b:1;s:78:"user.php?op=edit&subop=module&userid=2&module=specialtythiefskills&c=29-200909";b:1;s:71:"user.php?op=edit&subop=module&userid=2&module=staminasystem&c=29-200909";b:1;s:69:"user.php?op=edit&subop=module&userid=2&module=staminafood&c=29-200909";b:1;s:65:"user.php?op=edit&subop=module&userid=2&module=pktrack&c=29-200909";b:1;s:62:"user.php?op=edit&subop=module&userid=2&module=tips&c=29-200909";b:1;s:72:"user.php?op=edit&subop=module&userid=2&module=watcher_quests&c=29-200909";b:1;s:63:"user.php?op=edit&subop=module&userid=2&module=drpap&c=29-200909";b:1;s:64:"user.php?op=edit&subop=module&userid=2&module=cities&c=29-200909";b:1;s:72:"user.php?op=edit&subop=module&userid=2&module=vendingmachine&c=29-200909";b:1;s:81:"user.php?op=edit&subop=module&userid=2&module=wcgpoints_newdaystamina&c=29-200909";b:1;s:83:"user.php?op=edit&subop=module&userid=2&module=wcgpoints_supporterpoints&c=29-200909";b:1;s:67:"user.php?op=edit&subop=module&userid=2&module=wcgpoints&c=29-200909";b:1;s:68:"user.php?op=edit&subop=module&userid=2&module=worldmapwn&c=29-200909";b:1;s:19:"stamina.php?op=show";b:1;s:8:"user.php";b:1;s:16:"viewpetition.php";b:1;}', 1, 0, 3923967, 0, 0, 3, 0, '', '', 'administrator', '0000-00-00 00:00:00', 3, '2012-04-09 18:56:18', 0, 0, 0, 'user.php?op=edit&subop=module&userid=2&module=onslaught&c=28-200903', 0, 'a:0:{}', 20.687172174452, 95, '127.0.0.1', 'b5c99c10a43850387eab7576af0f8186', 'a:0:{}', 0, '', '', 0, 'a:11:{s:12:"ihavenocheer";i:0;s:10:"timeformat";s:10:"[m/d h:ia]";s:16:"showFormTabIndex";s:1:"2";s:8:"language";s:2:"en";s:11:"emailonmail";s:1:"0";s:10:"systemmail";s:1:"0";s:10:"dirtyemail";s:1:"0";s:9:"timestamp";s:1:"0";s:10:"timeoffset";d:0;s:6:"nojump";s:1:"0";s:23:"commentary_autocomplete";i:0;}', '0000-00-00 00:00:00', 0, 55, 10, '', 0, 2781037, '2012-03-30 15:48:27', 0, 0, '', 0, 0, '', 'Human', '0000-00-00 00:00:00', 0, NULL, 0, 0, 0, 0, '`%Admin', 0, 0, 0, '2011-11-05 18:05:04', 0, 0, '0000-00-00 00:00:00', 10),
(2, 'Cousjava', 0, 'MP', 243, 62, 'Sharp Steel Wood-chopping Axe', 'Homespun Undershirt', 0, 2, 1, 1, 1, 10607, 0, 1, '2012-04-09 20:45:00', 20, 20, 42819, 9000, 990, 'Qexelcrag', '', '9aa1e3a929bcf1699865b8865d40d338', 'a:2:{s:7:"enemies";a:1:{i:0;a:20:{s:10:"creatureid";s:1:"5";s:12:"creaturename";s:14:"Grunting Piggy";s:13:"creaturelevel";s:1:"1";s:14:"creatureweapon";s:12:"Wiggly Snout";s:12:"creaturelose";s:11:"Mmm...Bacon";s:11:"creaturewin";N;s:12:"creaturegold";d:36;s:11:"creatureexp";d:13;s:14:"creaturehealth";d:10;s:14:"creatureattack";d:1;s:15:"creaturedefense";d:1;s:16:"creatureaiscript";N;s:9:"createdby";s:11:"Appleshiner";s:6:"forest";s:1:"1";s:9:"graveyard";s:1:"0";s:14:"oldcreatureexp";N;s:13:"playerstarthp";s:2:"20";s:9:"diddamage";i:0;s:4:"dead";b:0;s:8:"istarget";b:1;}}s:7:"options";a:3:{s:4:"type";s:6:"forest";s:10:"maxattacks";s:1:"4";s:11:"didsurprise";i:1;}}', 'a:0:{}', 'a:46:{s:13:"superuser.php";b:1;s:8:"user.php";b:1;s:9:"taunt.php";b:1;s:13:"creatures.php";b:1;s:17:"configuration.php";b:1;s:11:"badword.php";b:1;s:15:"armoreditor.php";b:1;s:8:"bios.php";b:1;s:12:"donators.php";b:1;s:12:"referers.php";b:1;s:11:"retitle.php";b:1;s:9:"stats.php";b:1;s:16:"viewpetition.php";b:1;s:16:"weaponeditor.php";b:1;s:21:"village.php?comment=1";b:1;s:47:"village.php?refresh=1&c=34-204500#village-Dwarf";b:1;s:33:"village.php?refresh=1&c=34-204500";b:1;s:22:"forest.php?c=34-204500";b:1;s:31:"login.php?op=logout&c=34-204500";b:1;s:55:"runmodule.php?module=onslaught&op=reinforce&c=34-204500";b:1;s:46:"runmodule.php?module=turretdefense&c=34-204500";b:1;s:63:"runmodule.php?module=worldmapwn&op=travel&dir=begin&c=34-204500";b:1;s:63:"runmodule.php?module=counciloffices&councilop=enter&c=34-204500";b:1;s:61:"runmodule.php?module=iitems_hunterslodge&op=start&c=34-204500";b:1;s:45:"runmodule.php?module=tynan&op=gym&c=34-204500";b:1;s:23:"weapons.php?c=34-204500";b:1;s:21:"armor.php?c=34-204500";b:1;s:20:"bank.php?c=34-204500";b:1;s:21:"gypsy.php?c=34-204500";b:1;s:51:"runmodule.php?module=crazyaudrey&op=pet&c=34-204500";b:1;s:65:"runmodule.php?module=iitems_eboy_intelligent&op=start&c=34-204500";b:1;s:60:"runmodule.php?module=iitems_giftstation&op=start&c=34-204500";b:1;s:23:"stables.php?c=34-204500";b:1;s:23:"gardens.php?c=34-204500";b:1;s:20:"clan.php?c=34-204500";b:1;s:31:"petition.php?op=faq&c=34-204500";b:1;s:20:"news.php?c=34-204500";b:1;s:20:"list.php?c=34-204500";b:1;s:19:"hof.php?c=34-204500";b:1;s:25:"hof.php?hof=1&c=34-204500";b:1;s:21:"prefs.php?c=34-204500";b:1;s:24:"moderate.php?c=34-204500";b:1;s:25:"superuser.php?c=34-204500";b:1;s:22:"newday.php?c=34-204500";b:1;s:65:"runmodule.php?module=iitems&op=inventory&from=village&c=34-204500";b:1;s:19:"stamina.php?op=show";b:1;}', 1, 1, 130023423, 14, 4, 33, 4, '', '', 'Cousjava', '0000-00-00 00:00:00', 3, '2012-04-09 18:42:38', 0, 0, 0, 'village.php?c=33-202237', 3, 'a:4:{s:5:"mount";a:7:{s:4:"name";s:17:"`&Stallion Attack";s:8:"roundmsg";s:30:"Your stallion fights with you!";s:6:"rounds";s:2:"60";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";s:6:"schema";s:6:"mounts";s:17:"fields_calculated";b:1;}s:8:"clanbuff";a:11:{s:4:"name";s:13:"`^Clan Aura`0";s:6:"atkmod";d:2.25;s:6:"defmod";d:2.25;s:7:"lifetap";d:0.75;s:9:"effectmsg";s:87:"`6Your Clan Aura allows you to absorb `^{damage}`6 of the damage you dealt to {badguy}!";s:10:"allowinpvp";s:1:"0";s:12:"allowintrain";s:1:"0";s:6:"rounds";i:150;s:8:"roundmsg";s:33:"Your Clan''s Aura strengthens you!";s:6:"schema";s:16:"module-clanbuffs";s:17:"fields_calculated";b:1;}s:9:"clanbuff2";a:7:{s:12:"damageshield";d:0.75;s:9:"effectmsg";s:88:"`6Your Clan Aura allows you to reflect `^{damage}`6 of the damage you received {badguy}!";s:10:"allowinpvp";s:1:"0";s:12:"allowintrain";s:1:"0";s:6:"rounds";i:150;s:6:"schema";s:16:"module-clanbuffs";s:17:"fields_calculated";b:1;}s:9:"clanbuff3";a:7:{s:5:"regen";s:11:"2.5*<level>";s:9:"effectmsg";s:62:"`6Your Clan Aura allows you to regenerate `^{damage}`6 damage!";s:10:"allowinpvp";s:1:"0";s:12:"allowintrain";s:1:"0";s:6:"rounds";i:149;s:6:"schema";s:16:"module-clanbuffs";s:4:"used";i:0;}}', 1773.0234639649, 1710, '127.0.0.1', 'be7d4a02fe504aae6c130256bc242177', 'a:0:{}', 0, 'outlawjava@yahoo.co.uk', '', 0, 'a:11:{s:12:"ihavenocheer";i:0;s:10:"timeformat";s:10:"[m/d h:ia]";s:16:"showFormTabIndex";s:1:"2";s:8:"language";s:2:"en";s:11:"emailonmail";s:1:"0";s:10:"systemmail";s:1:"0";s:10:"dirtyemail";s:1:"0";s:9:"timestamp";s:1:"0";s:10:"timeoffset";d:0;s:6:"nojump";s:1:"0";s:23:"commentary_autocomplete";i:0;}', '0000-00-00 00:00:00', 0, 60, 10, '', 0, 92685389, '2012-04-09 16:57:30', 0, 0, '', 0, 0, '', 'Human', '0000-00-00 00:00:00', 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, '2011-11-05 18:09:35', 1, 31, '2011-11-05 19:34:22', 10);

-- --------------------------------------------------------

--
-- Table structure for table `free_accounts_output`
--

CREATE TABLE IF NOT EXISTS `free_accounts_output` (
  `acctid` int(11) unsigned NOT NULL,
  `output` mediumtext NOT NULL,
  PRIMARY KEY (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_accounts_output`
--

INSERT INTO `free_accounts_output` (`acctid`, `output`) VALUES
(1, '\r\n<!DOCTYPE HTML PUBLIC ''-//W3C//DTD HTML 4.01 Transitional//EN''>\r\n<html>\r\n<head>\r\n <title>User Editor</title>\r\n <link href=''templates/jade.css'' rel=''stylesheet'' type=''text/css''>\r\n <LINK REL="shortcut icon" HREF="favicon.ico" TYPE="image/x-icon"/><script language=''JavaScript''>\n	<!--\n	document.onkeypress=keyevent;\n	function keyevent(e){\n		var c;\n		var target;\n		var altKey;\n		var ctrlKey;\n		if (window.event != null) {\n			c=String.fromCharCode(window.event.keyCode).toUpperCase();\n			altKey=window.event.altKey;\n			ctrlKey=window.event.ctrlKey;\n		}else{\n			c=String.fromCharCode(e.charCode).toUpperCase();\n			altKey=e.altKey;\n			ctrlKey=e.ctrlKey;\n		}\n		if (window.event != null)\n			target=window.event.srcElement;\n		else\n			target=e.originalTarget;\n		if (target.nodeName.toUpperCase()==''INPUT'' || target.nodeName.toUpperCase()==''TEXTAREA'' || altKey || ctrlKey){\n		}else{\n			if (c == ''G'') { window.location=''superuser.php?c=29-200909''; return false; }\n			if (c == ''M'') { window.location=''village.php?c=29-200909''; return false; }\n			if (c == ''A'') { window.location=''user.php?op=setupban&c=29-200909''; return false; }\n			if (c == ''L'') { window.location=''user.php?op=removeban&c=29-200909''; return false; }\n			if (c == ''S'') { window.location=''user.php?op=setupban&userid=2&c=29-200909''; return false; }\n			if (c == ''V'') { window.open(''user.php?op=lasthit&userid=2''); return false; }\n			if (c == ''D'') { window.location=''user.php?op=debuglog&userid=2&c=29-200909''; return false; }\n			if (c == ''I'') { window.location=''bio.php?char=2&ret=%2Fkintian%2Fuser.php%3Fop%3Dedit%26subop%3Dmodule%26userid%3D2%26module%3Donslaught%26c%3D28-200903&c=29-200909''; return false; }\n			if (c == ''O'') { window.location=''donators.php?op=add1&name=Cousjava&ret=%2Fkintian%2Fuser.php%3Fop%3Dedit%26subop%3Dmodule%26userid%3D2%26module%3Donslaught%26c%3D28-200903&c=29-200909''; return false; }\n			if (c == ''E'') { window.location=''user.php?op=edit&userid=2&c=29-200909''; return false; }\n			if (c == ''P'') { window.location=''user.php?op=edit&subop=module&userid=2&module=creatureadmin&c=29-200909''; return false; }\n			if (c == ''T'') { window.location=''user.php?op=edit&subop=module&userid=2&module=translationwizard&c=29-200909''; return false; }\n			if (c == ''R'') { window.location=''user.php?op=edit&subop=module&userid=2&module=translationconvert&c=29-200909''; return false; }\n			if (c == ''B'') { window.location=''user.php?op=edit&subop=module&userid=2&module=bioextension&c=29-200909''; return false; }\n			if (c == ''C'') { window.location=''user.php?op=edit&subop=module&userid=2&module=clanbuffs&c=29-200909''; return false; }\n			if (c == ''W'') { window.location=''user.php?op=edit&subop=module&userid=2&module=class_wizard&c=29-200909''; return false; }\n			if (c == ''J'') { window.location=''user.php?op=edit&subop=module&userid=2&module=ajaxcommentary&c=29-200909''; return false; }\n			if (c == ''N'') { window.location=''user.php?op=edit&subop=module&userid=2&module=commentaryicons_physdesc&c=29-200909''; return false; }\n			if (c == ''Y'') { window.location=''user.php?op=edit&subop=module&userid=2&module=commentaryicons_race&c=29-200909''; return false; }\n			if (c == ''F'') { window.location=''user.php?op=edit&subop=module&userid=2&module=game_fivesix&c=29-200909''; return false; }\n			if (c == ''H'') { window.location=''user.php?op=edit&subop=module&userid=2&module=outhouse&c=29-200909''; return false; }\n			if (c == ''Z'') { window.location=''user.php?op=edit&subop=module&userid=2&module=crazyaudrey&c=29-200909''; return false; }\n			if (c == ''U'') { window.location=''user.php?op=edit&subop=module&userid=2&module=rspmutant&c=29-200909''; return false; }\n			if (c == ''K'') { window.location=''user.php?op=edit&subop=module&userid=2&module=implantchemicalpack&c=29-200909''; return false; }\n			if (c == ''X'') { window.location=''user.php?op=edit&subop=module&userid=2&module=drinks&c=29-200909''; return false; }\n			if (c == ''Q'') { window.location=''user.php?op=edit&subop=module&userid=2&module=watcher_quests&c=29-200909''; return false; }\n		}\n	}\n	//-->\n	</script>\r\n</head>\r\n<body bgcolor=''#003800'' text="#CCCCCC">\r\n<table border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%''>\r\n <tr>\r\n  <td>\r\n   <table border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%''>\r\n	<tr>\r\n	 <td nowrap valign=''top''>\r\n	  <table border=''0'' cellpadding=''0'' cellspacing=''0''>\r\n	   <tr>\r\n		<td><img name=''tlc'' src=''templates/jade/tlc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n		<td background=''templates/jade/tm.gif''><img name=''tm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td><img name=''trc'' src=''templates/jade/trc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td background=''templates/jade/tlt.gif''><img name=''tlt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td valign=''top'' bgcolor=''#003800'' nowrap><span class=''pagetitle''>&#149; User Editor</span></td>\r\n		<td background=''templates/jade/trt.gif''><img name=''trt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td><img name=''blc'' src=''templates/jade/blc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n		<td background=''templates/jade/btm.gif''><img name=''btm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td><img name=''brc'' src=''templates/jade/brc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td align=''right'' valign="top"><img src=''templates/jade/logo.jpg''></td>\r\n	</tr>\r\n	<tr>\r\n		<td valign=''top'' colspan=''2''>\r\n			<div style="float: left;"></div>\r\n			<div align="right"><a href=''motd.php'' target=''_blank'' onClick="window.open(''motd.php'',''motdphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''motd''><b>MoTD</b></a> | <a href=''mail.php'' target=''_blank'' onClick="window.open(''mail.php'',''mailphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''motd''>Pigeon Post: 0 new, 0 old</a> | <a href=''petition.php'' onClick="window.open(''petition.php'',''petitionphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" target=''_blank'' align=''right'' class=''motd''>Petition for Help</a><br>\r\n<table border=''0'' cellpadding=''5'' cellspacing=''0'' align=''right''><tr><td><a href=''user.php''><b>User Editor</b></a>|<a href=''viewpetition.php''><b>Petitions:</b></a> <span class=''colLtRed''>0</span>|<span class=''colLtYellow''>0</span>|<b>0</b>|0|<span class=''colLtBlue''>0</span>|<span class=''colLtCyan''>0</span>|<span class=''colLtMagenta''>0</span>|<i>0</i></td></tr></table>\r\n<br></div>\r\n		</td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n   <table border=''0'' cellpadding=''4'' cellspacing=''0'' width=''100%''>\r\n	<tr>\r\n	 <td valign=''top'' width="182">\r\n	  <table border=''0'' cellpadding=''0'' cellspacing=''0''>\r\n	   <tr>\r\n		<td><img name=''tlc'' src=''templates/jade/tlc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n		<td width=''100%'' background=''templates/jade/tm.gif''><img name=''tm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td><img name=''trc'' src=''templates/jade/trc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td background=''templates/jade/tlt.gif''><img name=''tlt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td valign=''top'' bgcolor=''#003800'' class=''nav''><div style=''position: relative; top: -15;'' align=''center''></div><div align="center">\r\n<span class="navhead">&#151;Navigation&#151;</span><br clear=''all''>\r\n\r\n<a href="superuser.php?c=29-200909" accesskey="G" class=''nav'' >Return to the <span class=''navhi''>G</span>rotto</a><br clear=''all''>\r\n\r\n<a href="village.php?c=29-200909" accesskey="M" class=''nav'' >Return to the <span class=''navhi''>M</span>undane</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Bans&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=setupban&amp;c=29-200909" accesskey="A" class=''nav'' ><span class=''navhi''>A</span>dd a ban</a><br clear=''all''>\r\n\r\n<a href="user.php?op=removeban&amp;c=29-200909" accesskey="L" class=''nav'' ><span class=''navhi''>L</span>ist/Remove bans</a><br clear=''all''>\r\n\r\n<a href="user.php?op=setupban&amp;userid=2&amp;c=29-200909" accesskey="S" class=''nav'' ><span class=''navhi''>S</span>et up ban</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Operations&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=lasthit&amp;userid=2" accesskey="V" class=''nav'' target=''_blank''><span class=''navhi''>V</span>iew last page hit</a><br clear=''all''>\r\n\r\n<a href="user.php?op=debuglog&amp;userid=2&amp;c=29-200909" accesskey="D" class=''nav'' ><span class=''navhi''>D</span>isplay debug log</a><br clear=''all''>\r\n\r\n<a href="bio.php?char=2&amp;ret=%2Fkintian%2Fuser.php%3Fop%3Dedit%26subop%3Dmodule%26userid%3D2%26module%3Donslaught%26c%3D28-200903&amp;c=29-200909" accesskey="i" class=''nav'' >V<span class=''navhi''>i</span>ew user bio</a><br clear=''all''>\r\n\r\n<a href="donators.php?op=add1&amp;name=Cousjava&amp;ret=%2Fkintian%2Fuser.php%3Fop%3Dedit%26subop%3Dmodule%26userid%3D2%26module%3Donslaught%26c%3D28-200903&amp;c=29-200909" accesskey="o" class=''nav'' >Add d<span class=''navhi''>o</span>nation points</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;userid=2&amp;c=29-200909" accesskey="E" class=''nav'' ><span class=''navhi''>E</span>dit user</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Administrative Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=creatureadmin&amp;c=29-200909" accesskey="p" class=''nav'' >Im<span class=''navhi''>p</span>robable Creature Admin Spreadsheet Thing</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=translationwizard&amp;c=29-200909" accesskey="T" class=''nav'' ><span class=''colLtBlack''><span class=''navhi''>T</span>ranslation Wizard</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=translationconvert&amp;c=29-200909" accesskey="r" class=''nav'' ><span class=''colLtBlack''>T<span class=''navhi''>r</span>anslations Convertor Thing</span></a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Bio Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=bioextension&amp;c=29-200909" accesskey="B" class=''nav'' ><span class=''navhi''>B</span>io Extension</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Clan Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=clanbuffs&amp;c=29-200909" accesskey="C" class=''nav'' ><span class=''navhi''>C</span>lan Buffs</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Classes Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=class_wizard&amp;c=29-200909" accesskey="W" class=''nav'' >Class - <span class=''navhi''>W</span>izard</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Commentary Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=ajaxcommentary&amp;c=29-200909" accesskey="J" class=''nav'' ><span class=''colLtBlack''>A<span class=''navhi''>J</span>AX Commentary</span></a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Commentary Icons Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=commentaryicons_physdesc&amp;c=29-200909" accesskey="n" class=''nav'' >Comme<span class=''navhi''>n</span>tary Icons: Avatar and Physical Description</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=commentaryicons_race&amp;c=29-200909" accesskey="y" class=''nav'' >Commentar<span class=''navhi''>y</span> Icons: Race</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=commentaryicons_weapon&amp;c=29-200909"class=''nav'' >Commentary Icons: Weapons</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Darkhorse Game Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=game_fivesix&amp;c=29-200909" accesskey="F" class=''nav'' ><span class=''navhi''>F</span>ive Sixes Dice Game</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Forest Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=outhouse&amp;c=29-200909" accesskey="h" class=''nav'' >Gnomis<span class=''navhi''>h</span> Outhouse</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Forest Specials Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=crazyaudrey&amp;c=29-200909" accesskey="z" class=''nav'' >Cra<span class=''navhi''>z</span>y Audrey''s Petting Zoo</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=fairy&amp;c=29-200909"class=''nav'' >Forest Fairy</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=oldman&amp;c=29-200909"class=''nav'' >Old Man</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=pinata&amp;c=29-200909"class=''nav'' >Pinata</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=riddles&amp;c=29-200909"class=''nav'' >Riddling Gnome</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=stonehenge&amp;c=29-200909"class=''nav'' >Stonehenge</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=rspmutant&amp;c=29-200909" accesskey="u" class=''nav'' >The RSP M<span class=''navhi''>u</span>tant</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;General Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=gender&amp;c=29-200909"class=''nav'' >Gender Prefs</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=tynan&amp;c=29-200909"class=''nav'' >Tynan the Bodybuilder</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Graveyard Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=gravebless&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Ramius'' Blessing</span></a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Housing Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=improbablehousing&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Improbable Housing</span></a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;IItems Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=iitems&amp;c=29-200909"class=''nav'' >IItems</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=iitemcrates&amp;c=29-200909"class=''nav'' >IItems - Crates on World Map</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=iitems_trader&amp;c=29-200909"class=''nav'' >IItems - Player Trading</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=iitems_meatsystem&amp;c=29-200909"class=''nav'' >IItems Meat System</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Implants Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=implantchemicalpack&amp;c=29-200909" accesskey="k" class=''nav'' >Implant - Chemical Pac<span class=''navhi''>k</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=implantservoarms&amp;c=29-200909"class=''nav'' >Implant - Servo Arms</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=implantlaser&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Implant - Skull-Mounted Laser</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=implantspatialawareness&amp;c=29-200909"class=''nav'' >Implant - Spatial Awareness</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=implantteslaframe&amp;c=29-200909"class=''nav'' >Implant - Tesla Frame</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Improbable Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=onslaught&amp;c=29-200909"class=''nav'' >Onslaught</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Improbable Labs Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=example&amp;c=29-200909"class=''nav'' >Three-Door Shuffle</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Inn Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=cedrikspotions&amp;c=29-200909"class=''nav'' >Cedrik''s Potion Shop</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=dag&amp;c=29-200909"class=''nav'' >Dag Durnick Bounties</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=drinks&amp;c=29-200909" accesskey="x" class=''nav'' >E<span class=''navhi''>x</span>otic Drinks</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=sethsong&amp;c=29-200909"class=''nav'' >Seth the Bard''s Songs</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=lovers&amp;c=29-200909"class=''nav'' >Violet and Seth Lovers</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Map Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=worldmapen&amp;c=29-200909"class=''nav'' >World Map</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Races Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=racegobot&amp;c=29-200909"class=''nav'' >Race - Gobot</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=racejoker&amp;c=29-200909"class=''nav'' >Race - Joker</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=racemidget&amp;c=29-200909"class=''nav'' >Race - Midget</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=racemutant&amp;c=29-200909"class=''nav'' >Race - Mutant</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=racerobot&amp;c=29-200909"class=''nav'' >Race - Robot</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Specialties Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=specialtydarkarts&amp;c=29-200909"class=''nav'' >Specialty - Dark Arts</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=specialtymysticpower&amp;c=29-200909"class=''nav'' >Specialty - Mystical Powers</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=specialtythiefskills&amp;c=29-200909"class=''nav'' >Specialty - Thieving Skills</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Stamina Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=staminasystem&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Expanded Stamina System - Core</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=staminafood&amp;c=29-200909"class=''nav'' >Food for the Stamina System</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Stat Display Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=pktrack&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>PK Tracking</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=tips&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Tips</span></a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;The Watcher Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=watcher_quests&amp;c=29-200909" accesskey="Q" class=''nav'' >Watcher <span class=''navhi''>Q</span>uests</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;Village Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=drpap&amp;c=29-200909"class=''nav'' >Dr. Paprika MD</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=cities&amp;c=29-200909"class=''nav'' >Multiple Cities, Simplified Version</a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=vendingmachine&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Vending Machine</span></a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;WCG Points Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=wcgpoints_newdaystamina&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Cobblestone Cottage - Give Stamina at New Day</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=wcgpoints_supporterpoints&amp;c=29-200909"class=''nav'' ><span class=''colLtBlack''>Cobblestone Cottage - Supporter Points</span></a><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=wcgpoints&amp;c=29-200909"class=''nav'' >Cobblestone Cottage - World Community Grid Points Integration</a><br clear=''all''>\r\n\n\r\n<span class="navhead">&#151;World Map Modules&#151;</span><br clear=''all''>\r\n\r\n<a href="user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=worldmapwn&amp;c=29-200909"class=''nav'' >World Map</a><br clear=''all''>\r\n\n</div></td>\r\n		<td background=''templates/jade/trt.gif''><img name=''trt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td><img name=''blc'' src=''templates/jade/blc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n		<td background=''templates/jade/btm.gif''><img name=''btm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td><img name=''brc'' src=''templates/jade/brc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td valign=''top'' width="100%">\r\n	  <table border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%'' height=''100%''>\r\n	   <tr>\r\n		<td><img name=''tlc'' src=''templates/jade/tlc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n		<td width=''100%'' background=''templates/jade/tm.gif''><img name=''tm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td><img name=''trc'' src=''templates/jade/trc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	   <tr height=''100%''>\r\n		<td background=''templates/jade/tlt.gif''><img name=''tlt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td valign=''top'' bgcolor=''#003800'' class=''headrow''>\r\n		 <table width=''100%'' border=''0'' cellspacing=''0'' cellpadding=''0''>\r\n		  <tr>\r\n		   <td valign=top align=left width=''100%''><div style="float: right"></div>\r\n<!--\nAllowAnonymous: False\nOverride Forced Nav: False\n-->\n<!--Su_Restricted-->\n<form action=''user.php?op=search&module=onslaught&subop=module'' method=''POST''>\nSearch by any field below: \n<input name=''q'' id=''q''>\n\n<input type=''submit'' class=''button'' value=''Search''>\n</form>\n<script language=''JavaScript''>document.getElementById(''q'').focus();</script>\n\n\n\n\n\n\n\n\n\n\n\n\n<form action=''user.php?op=savemodule&module=onslaught&userid=2'' method=''POST''>\n<table width=''100%'' cellpadding=''0'' cellspacing=''0''><tr><td>\n<div id=''showFormSection1''></div>\n</td></tr><tr><td>&nbsp;</td></tr><tr><td>\n<table cellpadding=''2'' cellspacing=''0''>\n<tr class=''trdark''><td valign=''top''>\nPlayer''s Onslaught Info array\n</td><td valign=''top''>\n<input size=''50'' name=''info'' value="a:1:{s:25:&quot;companions_this_onslaught&quot;;a:0:{}}">\n</td></tr>\n<tr class=''trlight''><td valign=''top''>\nPlayer was just resurrected\n</td><td valign=''top''>\n<input size=''50'' name=''justresurrected'' value="0">\n</td></tr>\n<tr class=''trdark''><td valign=''top''>\nYou are safe from the effects of Outpost invasions until you pass level ten in your first Drive Kill.  Would you like to opt-in anyway?\n</td><td valign=''top''>\n\n\n<select name=''user_optin''>\n<option value=''0'' selected>No</option>\n<option value=''1''>Yes</option>\n</select>\n</td></tr>\n</table><br>\n\n		 	<script language=''JavaScript''>\n		 	function prepare_form(id){\n		 		var theTable;\n		 		var theDivs='''';\n		 		var x=0;\n		 		var weight='''';\n		 		for (x in formSections[id]){\n		 			theTable = document.getElementById(''showFormTable''+x);\n		 			if (x != 1 ){\n			 			theTable.style.visibility=''hidden'';\n			 			theTable.style.display=''none'';\n			 			weight='''';\n			 		}else{\n			 			theTable.style.visibility=''visible'';\n			 			theTable.style.display=''inline'';\n			 			weight=''color: yellow;'';\n			 		}\n			 		theDivs += "<div id=''showFormButton"+x+"'' class=''trhead'' style=''"+weight+"float: left; cursor: pointer; cursor: hand; padding: 5px; border: 1px solid #000000;'' onClick=''showFormTabClick("+id+","+x+");''>"+formSections[id][x]+"</div>";\n		 		}\n		 		theDivs += "<div style=''display: block;''>&nbsp;</div>";\n				theDivs += "<input type=''hidden'' name=''showFormTabIndex'' value=''1'' id=''showFormTabIndex''>";\n		 		document.getElementById(''showFormSection''+id).innerHTML = theDivs;\n		 	}\n		 	function showFormTabClick(formid,sectionid){\n		 		var theTable;\n		 		var theButton;\n		 		for (x in formSections[formid]){\n		 			theTable = document.getElementById(''showFormTable''+x);\n		 			theButton = document.getElementById(''showFormButton''+x);\n		 			if (x == sectionid){\n		 				theTable.style.visibility=''visible'';\n		 				theTable.style.display=''inline'';\n		 				theButton.style.fontWeight=''normal'';\n		 				theButton.style.color=''yellow'';\n						document.getElementById(''showFormTabIndex'').value = sectionid;\n		 			}else{\n		 				theTable.style.visibility=''hidden'';\n		 				theTable.style.display=''none'';\n		 				theButton.style.fontWeight=''normal'';\n		 				theButton.style.color='''';\n		 			}\n		 		}\n		 	}\n		 	formSections = new Array();\n			</script>\n<script language=''JavaScript''>\nformSections[1] = new Array();\n\n		prepare_form(1);\n		</script>\n</td></tr></table>\n\n<input type=''submit'' class=''button'' value=''Save''>\n</form>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\r\n		   </td>\r\n		   <td valign=top width=''120''>\r\n			<table width="120" border=''0'' cellpadding=''0'' cellspacing=''0''>\r\n			 <tr>\r\n			  <td><img name=''tlc'' src=''templates/jade/tlc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n			  <td width=''100%'' background=''templates/jade/tm.gif''><img name=''tm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n			  <td><img name=''trc'' src=''templates/jade/trc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n			 </tr> \r\n			 <tr>\r\n			  <td background=''templates/jade/tlt.gif''><img name=''tlt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n			  <td valign=''top'' bgcolor=''#003800''class=''nav'' align=''left'' nowrap>\r\n<table cellpadding=''2'' cellspacing=''0'' class=''charinfo'' width=''150''>\r\n\r\n<tr><td class=''charhead'' colspan=''2''><b>Vital Info</b></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Name</span></b></td><td class=''charinfo''><span class=''colLtYellow''></span><span class=''colLtMagenta''>Admin </span><span class=''colLtWhite''>administrator</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Level</span></b></td><td class=''charinfo''><span class=''colLtYellow''><b>1</b></span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Hitpoints</span></b></td><td class=''charinfo''><span class=''colLtYellow''>10</span>/10</td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Attack</span></b></td><td class=''charinfo''><span class=''colLtYellow''>1</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Defense</span></b></td><td class=''charinfo''><span class=''colLtYellow''>1</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Spirits</span></b></td><td class=''charinfo''><span class=''colLtYellow''><b>Normal</b></span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Race</span></b></td><td class=''charinfo''><span class=''colLtYellow''>Human</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''><a href=''stamina.php?op=show'' target=''_blank'' onclick="window.open(''stamina.php?op=show'',''staminaphpopshow'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;">Stamina</a></span></b></td><td class=''charinfo''><span class=''colLtYellow''><font color=#003300>85%</font><br><table style=''border: solid 1px #000000'' bgcolor=''#003300'' cellpadding=''0'' cellspacing=''0'' width=''70'' height=''5''><tr><td width=''20%'' bgcolor=''#FF0000''></td><td width=''40%'' bgcolor=''#FFA200''></td><td width=''25%'' bgcolor=''#00FF00''></td><td width=''15%''></td></tr></table></span></td></tr>\r\n\r\n<tr><td class=''charhead'' colspan=''2''><b>Personal Info</b></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Gold</span></b></td><td class=''charinfo''><span class=''colLtYellow''>0</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Gems</span></b></td><td class=''charinfo''><span class=''colLtYellow''>0</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Experience</span></b></td><td class=''charinfo''><span class=''colLtYellow''>0</span></td></tr>\r\n\r\n<tr><td class=''charhead'' colspan=''2''><b>Equipment Info</b></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Weapon</span></b></td><td class=''charinfo''><span class=''colLtYellow''>Fists</span></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Armor</span></b></td><td class=''charinfo''><span class=''colLtYellow''>T-Shirt</span></td></tr>\r\n\r\n<tr><td class=''charhead'' colspan=''2''><b>Game State</b></td></tr>\r\n\r\n<tr><td class=''charinfo''><b><span class=''colLtWhite''>Current Weather:</span></b></td><td class=''charinfo''><span class=''colLtYellow''>Clear and Sunny</span></td></tr>\r\n\r\n<tr><td class=''charhead'' colspan=''2''><b>Buffs:</b></td></tr><tr><td class=''charinfo'' colspan=''2''><span class=''colLtYellow''>None</span></td></tr>\r\n\r\n</table>\r\n <p>&nbsp;</p> <table align="center"><tr><td><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">\n<input type="hidden" name="cmd" value="_xclick">\n<input type="hidden" name="business" value="logd@mightye.org">\n<input type="hidden" name="item_name" value="Legend of the Green Dragon Author Donation from Admin administrator">\n<input type="hidden" name="item_number" value="administrator:localhost/kintian/user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=onslaught&amp;c=28-200903">\n<input type="hidden" name="no_shipping" value="1">\n<input type="hidden" name="notify_url" value="http://lotgd.net/payment.php">\n<input type="hidden" name="cn" value="Your Character Name">\n<input type="hidden" name="cs" value="1">\n<input type="hidden" name="currency_code" value="USD">\n<input type="hidden" name="tax" value="0">\n<input type="image" src="images/paypal1.gif" border="0" name="submit" alt="Donate!">\n</form></td><td><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">\n<input type="hidden" name="cmd" value="_xclick">\n<input type="hidden" name="business" value="derbugmeister@shaw.ca">\n<input type="hidden" name="item_name" value="Legend of the Green Dragon DP Donation from Admin administrator">\n<input type="hidden" name="item_number" value="administrator:localhost/kintian/user.php?op=edit&amp;subop=module&amp;userid=2&amp;module=onslaught&amp;c=28-200903">\n<input type="hidden" name="no_shipping" value="1">\n<input type="hidden" name="notify_url" value="http://dragonprimelogd.net/payment.php">\n<input type="hidden" name="cn" value="Your Character Name">\n<input type="hidden" name="cs" value="1">\n<input type="hidden" name="currency_code" value="USD">\n<input type="hidden" name="tax" value="0">\n<input type="image" src="images/paypal3.gif" border="0" name="submit" alt="Donate!">\n</form></td></tr></table></td>\r\n			  <td background=''templates/jade/trt.gif''><img name=''trt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n			 </tr>\r\n			 <tr>\r\n			  <td><img name=''blc'' src=''templates/jade/blc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n			  <td background=''templates/jade/btm.gif''><img name=''btm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n			  <td><img name=''brc'' src=''templates/jade/brc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n			 </tr>\r\n			</table>\r\n		   </td>\r\n		  </tr>\r\n		 </table>\r\n		</td>\r\n		<td background=''templates/jade/trt.gif''><img name=''trt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td><img name=''blc'' src=''templates/jade/blc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n		<td background=''templates/jade/btm.gif''><img name=''btm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n		<td><img name=''brc'' src=''templates/jade/brc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n   <table border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%''>\r\n	<tr>\r\n	 <td><img name=''tlc'' src=''templates/jade/tlc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n	 <td width=''100%'' background=''templates/jade/tm.gif''><img name=''tm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	 <td><img name=''trc'' src=''templates/jade/trc.gif'' width=''10'' height=''15'' border=''0'' alt=''''></td>\r\n	</tr>\r\n	<tr>\r\n	 <td background=''templates/jade/tlt.gif''><img name=''tlt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	 <td valign=''top'' bgcolor=''#003800''>\r\n	  <table width=''100%''>\r\n	   <tr>\r\n		<td valign=''top''> \n<!-- Creative Commons License -->\n<a rel=''license'' href=''http://creativecommons.org/licenses/by-nc-sa/2.0/'' target=''_blank''><img clear=''right'' align=''left'' alt=''Creative Commons License'' border=''0'' src=''images/somerights20.gif'' /></a>\nThis work is licensed under a <a rel=''license'' href=''http://creativecommons.org/licenses/by-nc-sa/2.0/'' target=''_blank''>Creative Commons License</a>.<br />\n<!-- /Creative Commons License -->\n<!--\n  <rdf:RDF xmlns=''http://web.resource.org/cc/'' xmlns:dc=''http://purl.org/dc/elements/1.1/'' xmlns:rdf=''http://www.w3.org/1999/02/22-rdf-syntax-ns#''>\n	<Work rdf:about=''''>\n	  <dc:type rdf:resource=''http://purl.org/dc/dcmitype/Interactive'' />\n	  <license rdf:resource=''http://creativecommons.org/licenses/by-nc-sa/2.0/'' />\n	</Work>\n	<License rdf:about=''http://creativecommons.org/licenses/by-nc-sa/2.0/''>\n	  <permits rdf:resource=''http://web.resource.org/cc/Reproduction'' />\n	  <permits rdf:resource=''http://web.resource.org/cc/Distribution'' />\n	  <requires rdf:resource=''http://web.resource.org/cc/Notice'' />\n	  <requires rdf:resource=''http://web.resource.org/cc/Attribution'' />\n	  <prohibits rdf:resource=''http://web.resource.org/cc/CommercialUse'' />\n	  <permits rdf:resource=''http://web.resource.org/cc/DerivativeWorks'' />\n	  <requires rdf:resource=''http://web.resource.org/cc/ShareAlike'' />\n	</License>\n  </rdf:RDF>\n-->\nGame Design and Code: Copyright &copy; 2002-2005, Eric Stevens & JT Traub, &copy; 2006-2007, Dragonprime Development Team<br />Design: Jade Template &copy; Josh Canning 2004 of <a href=''http://hfs.cjb.net/'' target=''_blank''>HFS</a></td>\r\n		<td valign=''top'' align=''right''><a href=''source.php?url=/kintian/user.php'' onclick="window.open(''source.php?url=/kintian/user.php'',''sourcephpurlkintianuserphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" target=''_blank''>View PHP Source</a><br />Version: 2.2.0 Elvenhall Edition<br />(Page gen: 0.129s / 245 queries (0.056s), Ave: 0.218s - 20.687/95)</td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td background=''templates/jade/trt.gif''><img name=''trt'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><img name=''blc'' src=''templates/jade/blc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n	 <td background=''templates/jade/btm.gif''><img name=''btm'' src=''templates/jade/spacer.gif'' width=''1'' height=''1'' border=''0'' alt=''''></td>\r\n	 <td><img name=''brc'' src=''templates/jade/brc.gif'' width=''10'' height=''12'' border=''0'' alt=''''></td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n</table>\r\n</body>\r\n</html>\r\n');
INSERT INTO `free_accounts_output` (`acctid`, `output`) VALUES
(2, '\n<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">\n<html>\n<head>\n<title>Qexelcrag, Home of the Dwarves</title>\n<link href=''templates/dragonleather/dragonleather.css'' rel=''stylesheet'' type=''text/css''>\n<link href=''templates/dragonleather/red.css'' rel=''stylesheet'' type=''text/css''>\n<LINK REL="shortcut icon" HREF="favicon.ico" TYPE="image/x-icon"/><script language=''JavaScript''>\n	<!--\n	document.onkeypress=keyevent;\n	function keyevent(e){\n		var c;\n		var target;\n		var altKey;\n		var ctrlKey;\n		if (window.event != null) {\n			c=String.fromCharCode(window.event.keyCode).toUpperCase();\n			altKey=window.event.altKey;\n			ctrlKey=window.event.ctrlKey;\n		}else{\n			c=String.fromCharCode(e.charCode).toUpperCase();\n			altKey=e.altKey;\n			ctrlKey=e.ctrlKey;\n		}\n		if (window.event != null)\n			target=window.event.srcElement;\n		else\n			target=e.originalTarget;\n		if (target.nodeName.toUpperCase()==''INPUT'' || target.nodeName.toUpperCase()==''TEXTAREA'' || altKey || ctrlKey){\n		}else{\n			if (c == ''F'') { window.location=''forest.php?c=34-204500''; return false; }\n			if (c == ''Q'') { window.location=''login.php?op=logout&c=34-204500''; return false; }\n			if (c == ''R'') { window.location=''runmodule.php?module=onslaught&op=reinforce&c=34-204500''; return false; }\n			if (c == ''M'') { window.location=''runmodule.php?module=turretdefense&c=34-204500''; return false; }\n			if (c == ''J'') { window.location=''runmodule.php?module=worldmapwn&op=travel&dir=begin&c=34-204500''; return false; }\n			if (c == ''C'') { window.location=''runmodule.php?module=counciloffices&councilop=enter&c=34-204500''; return false; }\n			if (c == ''L'') { window.location=''runmodule.php?module=iitems_hunterslodge&op=start&c=34-204500''; return false; }\n			if (c == ''T'') { window.location=''runmodule.php?module=tynan&op=gym&c=34-204500''; return false; }\n			if (c == ''W'') { window.location=''weapons.php?c=34-204500''; return false; }\n			if (c == ''A'') { window.location=''armor.php?c=34-204500''; return false; }\n			if (c == ''B'') { window.location=''bank.php?c=34-204500''; return false; }\n			if (c == ''Z'') { window.location=''gypsy.php?c=34-204500''; return false; }\n			if (c == ''E'') { window.location=''runmodule.php?module=iitems_eboy_intelligent&op=start&c=34-204500''; return false; }\n			if (c == ''G'') { window.location=''runmodule.php?module=iitems_giftstation&op=start&c=34-204500''; return false; }\n			if (c == ''I'') { window.location=''stables.php?c=34-204500''; return false; }\n			if (c == ''H'') { window.location=''gardens.php?c=34-204500''; return false; }\n			if (c == ''N'') { window.location=''clan.php?c=34-204500''; return false; }\n			if (c == ''?'') { window.open(''petition.php?op=faq''); return false; }\n			if (c == ''D'') { window.location=''news.php?c=34-204500''; return false; }\n			if (c == ''S'') { window.location=''list.php?c=34-204500''; return false; }\n			if (c == ''O'') { window.location=''hof.php?c=34-204500''; return false; }\n			if (c == ''P'') { window.location=''prefs.php?c=34-204500''; return false; }\n			if (c == '','') { window.location=''moderate.php?c=34-204500''; return false; }\n			if (c == ''X'') { window.location=''superuser.php?c=34-204500''; return false; }\n			if (c == ''/'') { window.location=''newday.php?c=34-204500''; return false; }\n			if (c == ''V'') { window.location=''runmodule.php?module=iitems&op=inventory&from=village&c=34-204500''; return false; }\n		}\n	}\n	//-->\n	</script>\n<script type="text/javascript">\nfunction toggle(element) {\n	if (document.getElementById(element).style.display == "none") {\n		document.getElementById(element).style.display = "";\n	} else {\n		document.getElementById(element).style.display = "none";\n	}\n}\n</script>\n<script type="text/javascript">\n\n  var _gaq = _gaq || [];\n  _gaq.push([''_setAccount'', ''UA-19520237-1'']);\n  _gaq.push([''_trackPageview'']);\n\n  (function() {\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n</head>\n<body>\n\n<table width="100%" cellpadding="0" cellspacing="0">\n	<tr class="siteheader">\n		<td colspan="3"><img src="templates/dragonleather/top-center-red.png"></td>\n	</tr>\n	<tr class="sitecenter">\n		<td>\n		<!--weatherstart-->\n			<table width="100%" cellpadding="0" cellspacing="0">\n				<tr>\n					<td class="navigation">\n						<img src="templates/dragonleather/navheader-divider.png">\n						<a href=''translatortool.php?u=module-racedwarf&t=Gates%20to%20Outside'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racedwarf&t=Gates%20to%20Outside'',''translatortoolphpumoduleracedwarftGates20to20Outside'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Gates to Outside<br />\n</div>\n\n<a href=''translatortool.php?u=village&t=F%3FForest'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=F%3FForest'',''translatortoolphpuvillagetF3FForest'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="forest.php?c=34-204500" accesskey="F" class=''nav'' ><span class=''navhi''>F</span>orest</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=Q%3F%60%25Quit%600%20to%20the%20fields'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=Q%3F%60%25Quit%600%20to%20the%20fields'',''translatortoolphpuvillagetQ3F6025Quit60020to20the20fields'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="login.php?op=logout&amp;c=34-204500" accesskey="Q" class=''nav'' ></span><span class=''colLtMagenta''><span class=''navhi''>Q</span>uit</span> to the fields</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-onslaught&t=Reinforce%20the%20Defences'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-onslaught&t=Reinforce%20the%20Defences'',''translatortoolphpumoduleonslaughttReinforce20the20Defences'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=onslaught&amp;op=reinforce&amp;c=34-204500" accesskey="R" class=''nav'' ><span class=''navhi''>R</span>einforce the Defences</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-turretdefense&t=Man%20the%20turrets%21'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-turretdefense&t=Man%20the%20turrets%21'',''translatortoolphpumoduleturretdefensetMan20the20turrets21'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=turretdefense&amp;c=34-204500" accesskey="M" class=''nav'' ><span class=''navhi''>M</span>an the turrets!</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-worldmapen&t=Journey'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-worldmapen&t=Journey'',''translatortoolphpumoduleworldmapentJourney'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=worldmapwn&amp;op=travel&amp;dir=begin&amp;c=34-204500" accesskey="J" class=''nav'' ><span class=''navhi''>J</span>ourney</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=Miner%27s%20Street'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=Miner%27s%20Street'',''translatortoolphpuvillagetMiner27s20Street'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Miner''s Street<br />\n</div>\n\n<a href=''translatortool.php?u=module-counciloffices&t=Council%20Offices'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-counciloffices&t=Council%20Offices'',''translatortoolphpumodulecouncilofficestCouncil20Offices'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=counciloffices&amp;councilop=enter&amp;c=34-204500" accesskey="C" class=''nav'' ><span class=''navhi''>C</span>ouncil Offices</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-iitems_hunterslodge&t=L%3FThe%20Hunter%27s%20Lodge'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-iitems_hunterslodge&t=L%3FThe%20Hunter%27s%20Lodge'',''translatortoolphpumoduleiitemshunterslodgetL3FThe20Hunter27s20Lodge'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=iitems_hunterslodge&amp;op=start&amp;c=34-204500" accesskey="L" class=''nav'' >The Hunter''s <span class=''navhi''>L</span>odge</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-tynan&t=Tynan%27s%20Gym'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-tynan&t=Tynan%27s%20Gym'',''translatortoolphpumoduletynantTynan27s20Gym'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=tynan&amp;op=gym&amp;c=34-204500" accesskey="T" class=''nav'' ><span class=''navhi''>T</span>ynan''s Gym</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=The%20Forge'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=The%20Forge'',''translatortoolphpuvillagetThe20Forge'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	The Forge<br />\n</div>\n\n<a href=''translatortool.php?u=village&t=W%3FMightyE%27s%20Weaponry'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=W%3FMightyE%27s%20Weaponry'',''translatortoolphpuvillagetW3FMightyE27s20Weaponry'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="weapons.php?c=34-204500" accesskey="W" class=''nav'' >MightyE''s <span class=''navhi''>W</span>eaponry</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=A%3FPegasus%20Armor'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=A%3FPegasus%20Armor'',''translatortoolphpuvillagetA3FPegasus20Armor'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="armor.php?c=34-204500" accesskey="A" class=''nav'' >Pegasus <span class=''navhi''>A</span>rmor</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=B%3FYe%20Olde%20Bank'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=B%3FYe%20Olde%20Bank'',''translatortoolphpuvillagetB3FYe20Olde20Bank'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="bank.php?c=34-204500" accesskey="B" class=''nav'' >Ye Olde <span class=''navhi''>B</span>ank</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=Z%3FZe%20Gypsy%20Tent'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=Z%3FZe%20Gypsy%20Tent'',''translatortoolphpuvillagetZ3FZe20Gypsy20Tent'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="gypsy.php?c=34-204500" accesskey="Z" class=''nav'' ><span class=''navhi''>Z</span>e Gypsy Tent</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-crazyaudrey&t=%20%3FPet%20Crazy%20Audrey%27s%20%25s%600%20%28%60%5E%25s%20Req%600%29'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-crazyaudrey&t=%20%3FPet%20Crazy%20Audrey%27s%20%25s%600%20%28%60%5E%25s%20Req%600%29'',''translatortoolphpumodulecrazyaudreyt203FPet20Crazy20Audrey27s2025s6002028605E25s20Req60029'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=crazyaudrey&amp;op=pet&amp;c=34-204500"class=''nav'' >Pet Crazy Audrey''s Kittens (<span class=''colLtYellow''>5 Req</span>)</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-iitems_eboy_intelligent&t=eBoy%27s%20Trading%20Station'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-iitems_eboy_intelligent&t=eBoy%27s%20Trading%20Station'',''translatortoolphpumoduleiitemseboyintelligentteBoy27s20Trading20Station'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=iitems_eboy_intelligent&amp;op=start&amp;c=34-204500" accesskey="e" class=''nav'' ><span class=''navhi''>e</span>Boy''s Trading Station</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-iitems_giftstation&t=Gifting%20Station'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-iitems_giftstation&t=Gifting%20Station'',''translatortoolphpumoduleiitemsgiftstationtGifting20Station'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=iitems_giftstation&amp;op=start&amp;c=34-204500" accesskey="G" class=''nav'' ><span class=''navhi''>G</span>ifting Station</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=Blacksmith%27s%20Lane'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=Blacksmith%27s%20Lane'',''translatortoolphpuvillagetBlacksmith27s20Lane'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Blacksmith''s Lane<br />\n</div>\n\n<a href=''translatortool.php?u=module-racedwarf&t=M%3FMike%27s%20Chop%20Shop%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racedwarf&t=M%3FMike%27s%20Chop%20Shop%600'',''translatortoolphpumoduleracedwarftM3FMike27s20Chop20Shop600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="stables.php?c=34-204500" accesskey="i" class=''nav'' >M<span class=''navhi''>i</span>ke''s Chop Shop</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=G%3FThe%20Gardens'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=G%3FThe%20Gardens'',''translatortoolphpuvillagetG3FThe20Gardens'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="gardens.php?c=34-204500" accesskey="h" class=''nav'' >T<span class=''navhi''>h</span>e Gardens</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=C%3FClan%20Halls'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=C%3FClan%20Halls'',''translatortoolphpuvillagetC3FClan20Halls'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="clan.php?c=34-204500" accesskey="n" class=''nav'' >Cla<span class=''navhi''>n</span> Halls</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=Info'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=Info'',''translatortoolphpuvillagetInfo'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Info<br />\n</div>\n\n<a href=''translatortool.php?u=village&t=%3F%3FF.A.Q.%20%28newbies%20start%20here%29'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=%3F%3FF.A.Q.%20%28newbies%20start%20here%29'',''translatortoolphpuvillaget3F3FFAQ2028newbies20start20here29'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="petition.php?op=faq" accesskey="?" class=''nav'' target=''_blank''>(<span class=''navhi''>?</span>) F.A.Q. (newbies start here)</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=N%3FDaily%20News'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=N%3FDaily%20News'',''translatortoolphpuvillagetN3FDaily20News'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="news.php?c=34-204500" accesskey="D" class=''nav'' ><span class=''navhi''>D</span>aily News</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=L%3FList%20Warriors'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=L%3FList%20Warriors'',''translatortoolphpuvillagetL3FList20Warriors'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="list.php?c=34-204500" accesskey="s" class=''nav'' >Li<span class=''navhi''>s</span>t Warriors</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=o%3FHall%20o%27%20Fame'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=o%3FHall%20o%27%20Fame'',''translatortoolphpuvillageto3FHall20o2720Fame'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="hof.php?c=34-204500" accesskey="o" class=''nav'' >Hall <span class=''navhi''>o</span>'' Fame</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-allhof&t=Hall%20o%27%20Fame'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-allhof&t=Hall%20o%27%20Fame'',''translatortoolphpumoduleallhoftHall20o2720Fame'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="hof.php?hof=1&amp;c=34-204500"class=''nav'' >Hall o'' Fame</a><br clear=''all''>\n\n<a href=''translatortool.php?u=village&t=Other'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=Other'',''translatortoolphpuvillagetOther'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Other<br />\n</div>\n\n<a href=''translatortool.php?u=village&t=P%3FPreferences'' target=''_blank'' onClick="window.open(''translatortool.php?u=village&t=P%3FPreferences'',''translatortoolphpuvillagetP3FPreferences'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="prefs.php?c=34-204500" accesskey="P" class=''nav'' ><span class=''navhi''>P</span>references</a><br clear=''all''>\n\n<a href=''translatortool.php?u=nav&t=Superuser'' target=''_blank'' onClick="window.open(''translatortool.php?u=nav&t=Superuser'',''translatortoolphpunavtSuperuser'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Superuser<br />\n</div>\n\n<a href=''translatortool.php?u=nav&t=%2C%3FComment%20Moderation'' target=''_blank'' onClick="window.open(''translatortool.php?u=nav&t=%2C%3FComment%20Moderation'',''translatortoolphpunavt2C3FComment20Moderation'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="moderate.php?c=34-204500" accesskey="," class=''nav'' >(<span class=''navhi''>,</span>) Comment Moderation</a><br clear=''all''>\n\n<a href=''translatortool.php?u=nav&t=X%3F%60bSuperuser%20Grotto%60b'' target=''_blank'' onClick="window.open(''translatortool.php?u=nav&t=X%3F%60bSuperuser%20Grotto%60b'',''translatortoolphpunavtX3F60bSuperuser20Grotto60b'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="superuser.php?c=34-204500" accesskey="X" class=''nav'' >(<span class=''navhi''>X</span>) <b>Superuser Grotto</b></a><br clear=''all''>\n\n<a href=''translatortool.php?u=nav&t=%2F%3FNew%20Day'' target=''_blank'' onClick="window.open(''translatortool.php?u=nav&t=%2F%3FNew%20Day'',''translatortoolphpunavt2F3FNew20Day'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="newday.php?c=34-204500" accesskey="/" class=''nav'' >(<span class=''navhi''>/</span>) New Day</a><br clear=''all''>\n\n<a href=''translatortool.php?u=module-iitems&t=Inventory'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-iitems&t=Inventory'',''translatortoolphpumoduleiitemstInventory'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''navhead''>\n	Inventory<br />\n</div>\n\n<a href=''translatortool.php?u=module-iitems&t=Show%20Inventory'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-iitems&t=Show%20Inventory'',''translatortoolphpumoduleiitemstShow20Inventory'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href="runmodule.php?module=iitems&amp;op=inventory&amp;from=village&amp;c=34-204500" accesskey="v" class=''nav'' >Show In<span class=''navhi''>v</span>entory</a><br clear=''all''>\n\n\n						<img src="templates/dragonleather/navheader-divider.png"><br />\n					</td>\n					<td class="content">\n						<a href=''motd.php'' target=''_blank'' onClick="window.open(''motd.php'',''motdphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''motd''><b>MoTD</b></a> | <a href=''mail.php'' target=''_blank'' onClick="window.open(''mail.php'',''mailphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''motd''>Pigeon Post: 0 new, 0 old</a> | <a href=''petition.php'' onClick="window.open(''petition.php'',''petitionphp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" target=''_blank'' align=''right'' class=''motd''>Petition for Help</a> | <a href="http://enquirer.improbableisland.com">Enquirer - Blogs, Forums and Wiki</a> | <a href="http://twitter.com/improbableislnd">Twitter</a> | <a href="http://labs.improbableisland.com">Improbable Labs - Learn how to code and submit your own modules</a><br />\n<a href=''user.php''><b>User Editor</b></a>|<a href=''viewpetition.php''><b>Petitions:</b></a> <span class=''colLtRed''>0</span>|<span class=''colLtYellow''>0</span>|<b>0</b>|0|<span class=''colLtBlue''>0</span>|<span class=''colLtCyan''>0</span>|<span class=''colLtMagenta''>0</span>|<i>0</i>\n\n						<h2>Qexelcrag, Home of the Dwarves</h2>\n						<a href=''translatortool.php?u=module-racedwarf&t=%25s%2C%20Home%20of%20the%20Dwarves'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racedwarf&t=%25s%2C%20Home%20of%20the%20Dwarves'',''translatortoolphpumoduleracedwarft25s2C20Home20of20the20Dwarves'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><!--\nAllowAnonymous: False\nOverride Forced Nav: False\n-->\n<!--Module Hook: template-popuphead; allow inactive: false; only this module: any module\n  arg: content = \n&lt;!DOCTYPE HTML PUBLIC &quot;-\n  -->\n<!--Module Hook: template-popupfoot; allow inactive: false; only this module: any module\n  arg: content = \n			&lt;br /&gt;{copyright}\n			\n  -->\n<!--Module Hook: template-header; allow inactive: false; only this module: any module\n  arg: content = \n&lt;!DOCTYPE HTML PUBLIC &quot;-\n  -->\n<!--Module Hook: template-footer; allow inactive: false; only this module: any module\n  arg: content = \n\n					&lt;/td&gt;\n					&lt;td cla\n  -->\n<!--Module Hook: template-navhead; allow inactive: false; only this module: any module\n  arg: content = \n&lt;div class=''navhead''&gt;\n	{\n  -->\n<!--Module Hook: template-navhelp; allow inactive: false; only this module: any module\n  arg: content = \n{text}&lt;br /&gt;\n\n  -->\n<!--Module Hook: template-navitem; allow inactive: false; only this module: any module\n  arg: content = \n&lt;a href=&quot;{link}&quot;{accessk\n  -->\n<!--Module Hook: template-statstart; allow inactive: false; only this module: any module\n  arg: content = \n&lt;table cellpadding=''1'' c\n  -->\n<!--Module Hook: template-stathead; allow inactive: false; only this module: any module\n  arg: content = \n  &lt;tr&gt;\n    &lt;td class=''ch\n  -->\n<!--Module Hook: template-statrow; allow inactive: false; only this module: any module\n  arg: content = \n  &lt;tr&gt;\n    &lt;td class=''ch\n  -->\n<!--Module Hook: template-statbuff; allow inactive: false; only this module: any module\n  arg: content = \n  &lt;tr&gt;\n    &lt;td class=''ch\n  -->\n<!--Module Hook: template-statend; allow inactive: false; only this module: any module\n  arg: content = \n&lt;/table&gt;\n\n  -->\n<!--Module Hook: template-petitioncount; allow inactive: false; only this module: any module\n  arg: content = \n{petitioncount}\n\n  -->\n<!--Module Hook: template-login; allow inactive: false; only this module: any module\n  arg: content = \n&lt;div align=&quot;center&quot;&gt;\n	{u\n  -->\n<!--Module Hook: template-loginfull; allow inactive: false; only this module: any module\n  arg: content = \n&lt;div align=&quot;center&quot;&gt;\n	&lt;b\n  -->\n<!--Module Hook: everyhit; allow inactive: false; only this module: any module\n  -->\n<!--Module Hook: everyhit-loggedin; allow inactive: false; only this module: any module\n  -->\n<!--Module Hook: validlocation; allow inactive: false; only this module: any module\n  arg: Improbable Central = village\n  -->\n<!--Module Hook: villagetext; allow inactive: false; only this module: any module\n  arg: text = array(3)\n  arg: clock = The clock on the inn read\n  arg: title = array(2)\n  arg: talk = `n`%`@Nearby some village\n  arg: sayline = says\n  arg: newest = `nYou''re the newest membe\n  arg: newestplayer = Cousjava\n  arg: newestid = 2\n  arg: gatenav = City Gates\n  arg: fightnav = Blades Boulevard\n  arg: marketnav = Market Street\n  arg: tavernnav = Tavern Street\n  arg: infonav = Info\n  arg: othernav = Other\n  arg: section = village\n  arg: innname = The Prancing Spiderkitty\n  arg: stablename = Merick''s Stables\n  arg: mercenarycamp = Mercenary Camp\n  arg: armorshop = Pegasus Armor\n  arg: weaponshop = MightyE''s Weaponry\n  arg: schemas = array(20)\n  -->\n<!--Module Hook: villagetext-Qexelcrag; allow inactive: false; only this module: any module\n  arg: text = array(3)\n  arg: clock = `0A large clock powered b\n  arg: title = array(2)\n  arg: talk = `&amp;Nearby some dwarves tal\n  arg: sayline = says\n  arg: newest = `n`0Wandering the village\n  arg: newestplayer = \n  arg: newestid = \n  arg: gatenav = Gates to Outside\n  arg: fightnav = Miner''s Street\n  arg: marketnav = The Forge\n  arg: tavernnav = Blacksmith''s Lane\n  arg: infonav = Info\n  arg: othernav = Other\n  arg: section = village-Dwarf\n  arg: innname = The Prancing Spiderkitty\n  arg: stablename = Mike''s Chop Shop\n  arg: mercenarycamp = Mercenary Camp\n  arg: armorshop = Pegasus Armor\n  arg: weaponshop = MightyE''s Weaponry\n  arg: schemas = array(20)\n  -->\n<!--Module Hook: everyheader; allow inactive: false; only this module: any module\n  arg: script = village\n  -->\n<!--Module Hook: everyheader-loggedin; allow inactive: false; only this module: any module\n  arg: script = village\n  -->\n<!--Module Hook: header-village; allow inactive: false; only this module: any module\n  -->\n<!--Module Hook: holiday; allow inactive: false; only this module: any module\n  arg: text = Qexelcrag, Home of the Dw\n  arg: type = title\n  -->\n<!--CheckNewDay()-->\n<!--Module Hook: collapse{; allow inactive: false; only this module: any module\n  arg: name = villagedesc-Qexelcrag\n  -->\n<a href=''translatortool.php?u=module-racedwarf&t=%600You%20are%20standing%20in%20the%20heart%20of%20%25s.%20%20It%27s%20a%20massive%20cave%2C%20deep%20under%20the%20mountains.%20Massive%20pillars%20support%20the%20%20great%20roof%2C%20which%20is%20so%20far%20overhead%20you%20can%20barely%20see%20it.%20The%20pillars%20are%20made%20of%20crystal.%20On%20them%20is%20a%20picture%20a%20dwarf.%20The%20dwarf%20is%20surronded%20by%20dwarves.%20The%20artwork%20relates%20to%20the%20founding%20of%20%25s%20in%20the%20year%20965.%60n%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racedwarf&t=%600You%20are%20standing%20in%20the%20heart%20of%20%25s.%20%20It%27s%20a%20massive%20cave%2C%20deep%20under%20the%20mountains.%20Massive%20pillars%20support%20the%20%20great%20roof%2C%20which%20is%20so%20far%20overhead%20you%20can%20barely%20see%20it.%20The%20pillars%20are%20made%20of%20crystal.%20On%20them%20is%20a%20picture%20a%20dwarf.%20The%20dwarf%20is%20surronded%20by%20dwarves.%20The%20artwork%20relates%20to%20the%20founding%20of%20%25s%20in%20the%20year%20965.%60n%60n'',''translatortoolphpumoduleracedwarft600You20are20standing20in20the20heart20of2025s2020It27s20a20massive20cave2C20deep20under20the20mountains20Massive20pillars20support20the2020great20roof2C20which20is20so20far20overhead20you20can20barely20see20it20The20pillars20are20made20of20crystal20On20them20is20a20picture20a20dwarf20The20dwarf20is20surronded20by20dwarves20The20artwork20relates20to20the20founding20of2025s20in20the20year2096560n60n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>You are standing in the heart of Qexelcrag.  It''s a massive cave, deep under the mountains. Massive pillars support the  great roof, which is so far overhead you can barely see it. The pillars are made of crystal. On them is a picture a dwarf. The dwarf is surronded by dwarves. The artwork relates to the founding of Qexelcrag in the year 965.<br>\n<br>\n\n<!--Module Hook: }collapse; allow inactive: false; only this module: any module\n  -->\n<a href=''translatortool.php?u=module-racedwarf&t=%600A%20large%20clock%20powered%20by%20water%20pumps%20in%20the%20village%20square%20reads%20%60%26%25s%600.%60n%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racedwarf&t=%600A%20large%20clock%20powered%20by%20water%20pumps%20in%20the%20village%20square%20reads%20%60%26%25s%600.%60n%60n'',''translatortoolphpumoduleracedwarft600A20large20clock20powered20by20water20pumps20in20the20village20square20reads20602625s60060n60n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>A large clock powered by water pumps in the village square reads <span class=''colLtWhite''>10:30 pm</span>.<br>\n<br>\n\n<!--Module Hook: village-desc; allow inactive: false; only this module: any module\n  arg: text = array(3)\n  arg: clock = `0A large clock powered b\n  arg: title = array(2)\n  arg: talk = `&amp;Nearby some dwarves tal\n  arg: sayline = says\n  arg: newest = `n`0Wandering the village\n  arg: newestplayer = \n  arg: newestid = \n  arg: gatenav = Gates to Outside\n  arg: fightnav = Miner''s Street\n  arg: marketnav = The Forge\n  arg: tavernnav = Blacksmith''s Lane\n  arg: infonav = Info\n  arg: othernav = Other\n  arg: section = village-Dwarf\n  arg: innname = The Prancing Spiderkitty\n  arg: stablename = Mike''s Chop Shop\n  arg: mercenarycamp = Mercenary Camp\n  arg: armorshop = Pegasus Armor\n  arg: weaponshop = MightyE''s Weaponry\n  arg: schemas = array(20)\n  -->\n<a href=''translatortool.php?u=module-crazyaudrey&t=%60%25Crazy%20Audrey%20is%20here%20with%20her%20%603%25s%60%25%21%60n%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-crazyaudrey&t=%60%25Crazy%20Audrey%20is%20here%20with%20her%20%603%25s%60%25%21%60n%60n'',''translatortoolphpumodulecrazyaudreyt6025Crazy20Audrey20is20here20with20her2060325s60252160n60n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><span class=''colLtMagenta''>Crazy Audrey is here with her </span><span class=''colDkCyan''>kittens</span><span class=''colLtMagenta''>!<br>\n<br>\n\n<!--Module Hook: village-desc-Qexelcrag; allow inactive: false; only this module: any module\n  arg: text = array(3)\n  arg: clock = `0A large clock powered b\n  arg: title = array(2)\n  arg: talk = `&amp;Nearby some dwarves tal\n  arg: sayline = says\n  arg: newest = `n`0Wandering the village\n  arg: newestplayer = \n  arg: newestid = \n  arg: gatenav = Gates to Outside\n  arg: fightnav = Miner''s Street\n  arg: marketnav = The Forge\n  arg: tavernnav = Blacksmith''s Lane\n  arg: infonav = Info\n  arg: othernav = Other\n  arg: section = village-Dwarf\n  arg: innname = The Prancing Spiderkitty\n  arg: stablename = Mike''s Chop Shop\n  arg: mercenarycamp = Mercenary Camp\n  arg: armorshop = Pegasus Armor\n  arg: weaponshop = MightyE''s Weaponry\n  arg: schemas = array(20)\n  -->\n<!--Module Hook: village; allow inactive: false; only this module: any module\n  arg: text = array(3)\n  arg: clock = `0A large clock powered b\n  arg: title = array(2)\n  arg: talk = `&amp;Nearby some dwarves tal\n  arg: sayline = says\n  arg: newest = `n`0Wandering the village\n  arg: newestplayer = \n  arg: newestid = \n  arg: gatenav = Gates to Outside\n  arg: fightnav = Miner''s Street\n  arg: marketnav = The Forge\n  arg: tavernnav = Blacksmith''s Lane\n  arg: infonav = Info\n  arg: othernav = Other\n  arg: section = village-Dwarf\n  arg: innname = The Prancing Spiderkitty\n  arg: stablename = Mike''s Chop Shop\n  arg: mercenarycamp = Mercenary Camp\n  arg: armorshop = Pegasus Armor\n  arg: weaponshop = MightyE''s Weaponry\n  arg: schemas = array(20)\n  -->\n<div class=''debug''>Alert: 1</div>\n<a href=''translatortool.php?u=module-onslaught&t=Outpost%20wall%20hitpoints%3A%20%25s%60n%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-onslaught&t=Outpost%20wall%20hitpoints%3A%20%25s%60n%60n'',''translatortoolphpumoduleonslaughttOutpost20wall20hitpoints3A2025s60n60n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>Outpost wall hitpoints: 1,000,000<br>\n<br>\n\n<!--Module Hook: village-Qexelcrag; allow inactive: false; only this module: any module\n  arg: text = array(3)\n  arg: clock = `0A large clock powered b\n  arg: title = array(2)\n  arg: talk = `&amp;Nearby some dwarves tal\n  arg: sayline = says\n  arg: newest = `n`0Wandering the village\n  arg: newestplayer = \n  arg: newestid = \n  arg: gatenav = Gates to Outside\n  arg: fightnav = Miner''s Street\n  arg: marketnav = The Forge\n  arg: tavernnav = Blacksmith''s Lane\n  arg: infonav = Info\n  arg: othernav = Other\n  arg: section = village-Dwarf\n  arg: innname = The Prancing Spiderkitty\n  arg: stablename = Mike''s Chop Shop\n  arg: mercenarycamp = Mercenary Camp\n  arg: armorshop = Pegasus Armor\n  arg: weaponshop = MightyE''s Weaponry\n  arg: schemas = array(20)\n  -->\n<!--Module Hook: blockcommentarea; allow inactive: false; only this module: any module\n  arg: section = village-Dwarf\n  -->\n<a href=''translatortool.php?u=module-racemutant&t=%60%26Nearby%20some%20dwarves%20talk%20about%20mining%20in%20gruff%20voices%3A%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racemutant&t=%60%26Nearby%20some%20dwarves%20talk%20about%20mining%20in%20gruff%20voices%3A%60n'',''translatortoolphpumoduleracemutantt6026Nearby20some20dwarves20talk20about20mining20in20gruff20voices3A60n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a></span><span class=''colLtWhite''>Nearby some dwarves talk about mining in gruff voices:<br>\n\n<a name=''village-Dwarf''></a>\n<a href=''translatortool.php?u=commentary&t=Del'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Del'',''translatortoolphpucommentarytDel'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Grotto'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Grotto'',''translatortoolphpucommentarytGrotto'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><a href=''translatortool.php?u=commentary&t=%25s%20Square'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=%25s%20Square'',''translatortoolphpucommentaryt25s20Square'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Land%20of%20the%20Shades'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Land%20of%20the%20Shades'',''translatortoolphpucommentarytLand20of20the20Shades'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Grassy%20Field'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Grassy%20Field'',''translatortoolphpucommentarytGrassy20Field'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=MotD'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=MotD'',''translatortoolphpucommentarytMotD'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Veterans%20Club'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Veterans%20Club'',''translatortoolphpucommentarytVeterans20Club'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Hunter%27s%20Lodge'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Hunter%27s%20Lodge'',''translatortoolphpucommentarytHunter27s20Lodge'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Gardens'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Gardens'',''translatortoolphpucommentarytGardens'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Clan%20Hall%20Waiting%20Area'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Clan%20Hall%20Waiting%20Area'',''translatortoolphpucommentarytClan20Hall20Waiting20Area'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<!--Module Hook: moderate; allow inactive: false; only this module: any module\n  arg: village = Improbable Central Square\n  arg: superuser = Grotto\n  arg: shade = Land of the Shades\n  arg: grassyfield = Grassy Field\n  arg: inn = The Prancing Spiderkitty\n  arg: motd = MotD\n  arg: veterans = Veterans Club\n  arg: hunterlodge = Hunter''s Lodge\n  arg: gardens = Gardens\n  arg: waiting = Clan Hall Waiting Area\n  -->\n<a href=''translatortool.php?u=commentary&t=City%20of%20%25s'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=City%20of%20%25s'',''translatortoolphpucommentarytCity20of2025s'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<!--Module Hook: insertcomment; allow inactive: false; only this module: any module\n  arg: section = village-Dwarf\n  -->\n<a href=''translatortool.php?u=commentary&t=%60n%60%40Speak%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=%60n%60%40Speak%60n'',''translatortoolphpucommentaryt60n6040Speak60n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a><br>\n</span><span class=''colLtGreen''>Speak<br>\n\n<a href=''translatortool.php?u=module-racedwarf&t=says'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-racedwarf&t=says'',''translatortoolphpumoduleracedwarftsays'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<form action="village.php?comment=1" method=''POST'' autocomplete=''false''>\n<a href=''translatortool.php?u=commentary&t=says'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=says'',''translatortoolphpucommentarytsays'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=You%20have%20'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=You%20have%20'',''translatortoolphpucommentarytYou20have20'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=%20characters%20left.'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=%20characters%20left.'',''translatortoolphpucommentaryt20characters20left'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<script language=''JavaScript''>\n				function previewtextinsertcommentary1(t,l){\n					var out = "<span class=\\''colLtWhite\\''>Cousjava";\n					var end = ''</span>'';\n					var x=0;\n					var y='''';\n					var z='''';\n					var max=document.getElementById(''inputinsertcommentary1'');\n					var charsleft='''';\n					var italics=0;\n					var bold=0;\n	if (t.substr(0,2)==''::''){\n						x=2;\n					}else if (t.substr(0,1)=='':''){\n						x=1;\n					}else if (t.substr(0,3)==''/me''){\n						x=3;\n\n					}else if (t.substr(0,5)==''/game''){\n						x=5;\n	}else{\n						out += ''</span><span class=\\''colDkCyan\\''> says "</span><span class=\\''colLtCyan\\''>'';\n						end += ''</span><span class=\\''colDkCyan\\''>"'';\n					}\n	if (x!=0) {\n						if (max.maxLength!=255) max.maxLength=255;\n						l=255;\n					} else {\n						max.maxLength=l;\n					}\n					if (l-t.length<0) charsleft +=''<span class=\\''colLtRed\\''>'';\n					charsleft += ''You have ''+(l-t.length)+'' characters left.<br>'';\n					if (l-t.length<0) charsleft +=''</span>'';\n					italics=0;\n					document.getElementById(''charsleftinsertcommentary1'').innerHTML=charsleft+''<br/>'';\n		for (; x < t.length; x++){\n						y = t.substr(x,1);\n						if (y==''<''){\n							out += ''&lt;'';\n							continue;\n						}else if(y==''>''){\n							out += ''&gt;'';\n							continue;\n						}else if(y==''\\n''){\n							out += ''<br />'';\n							continue;\n						}else if (y==''`''){\n							if (x < t.length-1){\n								z = t.substr(x+1,1);\n								if (z==''0''){\n									out += ''</span>'';\n								}else if (z==''1''){\n									out += ''</span><span class=\\''colDkBlue\\''>'';\n								}else if (z==''2''){\n									out += ''</span><span class=\\''colDkGreen\\''>'';\n								}else if (z==''3''){\n									out += ''</span><span class=\\''colDkCyan\\''>'';\n								}else if (z==''4''){\n									out += ''</span><span class=\\''colDkRed\\''>'';\n								}else if (z==''5''){\n									out += ''</span><span class=\\''colDkMagenta\\''>'';\n								}else if (z==''6''){\n									out += ''</span><span class=\\''colDkYellow\\''>'';\n								}else if (z==''7''){\n									out += ''</span><span class=\\''colDkWhite\\''>'';\n								}else if (z==''q''){\n									out += ''</span><span class=\\''colDkOrange\\''>'';\n								}else if (z==''!''){\n									out += ''</span><span class=\\''colLtBlue\\''>'';\n								}else if (z==''@''){\n									out += ''</span><span class=\\''colLtGreen\\''>'';\n								}else if (z==''#''){\n									out += ''</span><span class=\\''colLtCyan\\''>'';\n								}else if (z==''$''){\n									out += ''</span><span class=\\''colLtRed\\''>'';\n								}else if (z==''%''){\n									out += ''</span><span class=\\''colLtMagenta\\''>'';\n								}else if (z==''^''){\n									out += ''</span><span class=\\''colLtYellow\\''>'';\n								}else if (z==''&''){\n									out += ''</span><span class=\\''colLtWhite\\''>'';\n								}else if (z==''Q''){\n									out += ''</span><span class=\\''colLtOrange\\''>'';\n								}else if (z=='')''){\n									out += ''</span><span class=\\''colLtBlack\\''>'';\n								}else if (z==''r''){\n									out += ''</span><span class=\\''colRose\\''>'';\n								}else if (z==''R''){\n									out += ''</span><span class=\\''colRose\\''>'';\n								}else if (z==''v''){\n									out += ''</span><span class=\\''coliceviolet\\''>'';\n								}else if (z==''V''){\n									out += ''</span><span class=\\''colBlueViolet\\''>'';\n								}else if (z==''g''){\n									out += ''</span><span class=\\''colXLtGreen\\''>'';\n								}else if (z==''G''){\n									out += ''</span><span class=\\''colXLtGreen\\''>'';\n								}else if (z==''T''){\n									out += ''</span><span class=\\''colDkBrown\\''>'';\n								}else if (z==''t''){\n									out += ''</span><span class=\\''colLtBrown\\''>'';\n								}else if (z==''~''){\n									out += ''</span><span class=\\''colBlack\\''>'';\n								}else if (z==''j''){\n									out += ''</span><span class=\\''colMdGrey\\''>'';\n								}else if (z==''e''){\n									out += ''</span><span class=\\''colDkRust\\''>'';\n								}else if (z==''E''){\n									out += ''</span><span class=\\''colLtRust\\''>'';\n								}else if (z==''l''){\n									out += ''</span><span class=\\''colDkLinkBlue\\''>'';\n								}else if (z==''L''){\n									out += ''</span><span class=\\''colLtLinkBlue\\''>'';\n								}else if (z==''x''){\n									out += ''</span><span class=\\''colburlywood\\''>'';\n								}else if (z==''X''){\n									out += ''</span><span class=\\''colbeige\\''>'';\n								}else if (z==''y''){\n									out += ''</span><span class=\\''colkhaki\\''>'';\n								}else if (z==''Y''){\n									out += ''</span><span class=\\''coldarkkhaki\\''>'';\n								}else if (z==''k''){\n									out += ''</span><span class=\\''colaquamarine\\''>'';\n								}else if (z==''K''){\n									out += ''</span><span class=\\''coldarkseagreen\\''>'';\n								}else if (z==''p''){\n									out += ''</span><span class=\\''collightsalmon\\''>'';\n								}else if (z==''P''){\n									out += ''</span><span class=\\''colsalmon\\''>'';\n								}else if (z==''m''){\n									out += ''</span><span class=\\''colwheat\\''>'';\n								}else if (z==''M''){\n									out += ''</span><span class=\\''coltan\\''>'';\n								}\n								else if (z==''i''){\n									italics += 1;\n									inum = italics;\n									if (inum%2){\n										out += ''<i>'';\n									} else {\n										out += ''</i>'';\n									}\n								}\n								x++;\n							}\n						}else{\n							out += y;\n						}\n					}\n					document.getElementById("previewtextinsertcommentary1").innerHTML=out+end+''<br/>'';\n				}</script>\n				\n<span id=''charsleftinsertcommentary1''></span>\n<input name=''insertcommentary'' id=''inputinsertcommentary1'' autocomplete=''off'' onKeyUp=''previewtextinsertcommentary1(document.getElementById("inputinsertcommentary1").value,200);'' \nsize=''40''\nmaxlength=''200''\n>\n<div id=''previewtextinsertcommentary1''></div>\n<input type=''hidden'' name=''talkline'' value=''says''>\n<input type=''hidden'' name=''schema'' value=''module-racedwarf''>\n<input type=''hidden'' name=''counter'' value=''34''>\n<input type=''hidden'' name=''section'' value=''village-Dwarf''>\n<a href=''translatortool.php?u=commentary&t=Add'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Add'',''translatortoolphpucommentarytAdd'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<input type=''submit'' class=''button'' value=''Add''><br>\n\n<div id=''previewtext''></div></form>\n<a href=''translatortool.php?u=commentary&t=%26lt%3B%26lt%3B%20First%20Unseen'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=%26lt%3B%26lt%3B%20First%20Unseen'',''translatortoolphpucommentaryt26lt3B26lt3B20First20Unseen'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=%26lt%3B%20Previous'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=%26lt%3B%20Previous'',''translatortoolphpucommentaryt26lt3B20Previous'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Refresh'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Refresh'',''translatortoolphpucommentarytRefresh'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Next%20%26gt%3B'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Next%20%26gt%3B'',''translatortoolphpucommentarytNext2026gt3B'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=commentary&t=Last%20Page%20%26gt%3B%26gt%3B'' target=''_blank'' onClick="window.open(''translatortool.php?u=commentary&t=Last%20Page%20%26gt%3B%26gt%3B'',''translatortoolphpucommentarytLast20Page2026gt3B26gt3B'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n&lt;&lt; First Unseen &lt; Previous\n&nbsp;<a href="village.php?refresh=1&c=34-204500#village-Dwarf">Refresh</a>&nbsp;\nNext &gt; Last Page &gt;&gt;\n<!--Module Hook: collect-events; allow inactive: false; only this module: any module\n  -->\n<!--Module Hook: footer-village; allow inactive: false; only this module: any module\n  -->\n<!--Module Hook: everyfooter; allow inactive: false; only this module: any module\n  arg: __scriptfile__ = village\n  -->\n<!--Module Hook: everyfooter-loggedin; allow inactive: false; only this module: any module\n  arg: __scriptfile__ = village\n  -->\n<!--Module Hook: collapse-nav{; allow inactive: false; only this module: any module\n  arg: name = nh-Gates to Outside\n  arg: title = Gates to Outside\n  -->\n<!--Module Hook: }collapse-nav; allow inactive: false; only this module: any module\n  -->\n<a href=''translatortool.php?u=mounts&t=%60%26Stallion%20Attack'' target=''_blank'' onClick="window.open(''translatortool.php?u=mounts&t=%60%26Stallion%20Attack'',''translatortoolphpumountst6026Stallion20Attack'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=buffs&t=%60%23%25s%20%607%28%25s%20rounds%20left%29%60n'' target=''_blank'' onClick="window.open(''translatortool.php?u=buffs&t=%60%23%25s%20%607%28%25s%20rounds%20left%29%60n'',''translatortoolphpubuffst602325s206072825s20rounds20left2960n'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=module-clanbuffs&t=%60%5EClan%20Aura%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-clanbuffs&t=%60%5EClan%20Aura%600'',''translatortoolphpumoduleclanbuffst605EClan20Aura600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n\n<a href=''translatortool.php?u=module-clanbuffs&t=DEBUG%3A%20clanbuff2'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-clanbuffs&t=DEBUG%3A%20clanbuff2'',''translatortoolphpumoduleclanbuffstDEBUG3A20clanbuff2'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n\n<a href=''translatortool.php?u=module-clanbuffs&t=DEBUG%3A%20clanbuff3'' target=''_blank'' onClick="window.open(''translatortool.php?u=module-clanbuffs&t=DEBUG%3A%20clanbuff3'',''translatortoolphpumoduleclanbuffstDEBUG3A20clanbuff3'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n\n<a href=''translatortool.php?u=common&t=%60bHigh%60b'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60bHigh%60b'',''translatortoolphpucommont60bHigh60b'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=race&t=Human'' target=''_blank'' onClick="window.open(''translatortool.php?u=race&t=Human'',''translatortoolphpuracetHuman'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<div class=''debug''>920708</div>\n<div class=''debug''>920708</div>\n<div class=''debug''>920708</div>\n<div class=''debug''>920708</div>\n<!--Module Hook: charstats; allow inactive: false; only this module: any module\n  -->\n<a href=''translatortool.php?u=common&t=Vital%20Info'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=Vital%20Info'',''translatortoolphpucommontVital20Info'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Name%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Name%600'',''translatortoolphpucommont6026Name600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Level%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Level%600'',''translatortoolphpucommont6026Level600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Hitpoints%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Hitpoints%600'',''translatortoolphpucommont6026Hitpoints600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Attack%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Attack%600'',''translatortoolphpucommont6026Attack600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Defense%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Defense%600'',''translatortoolphpucommont6026Defense600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Spirits%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Spirits%600'',''translatortoolphpucommont6026Spirits600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Race%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Race%600'',''translatortoolphpucommont6026Race600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26%3Ca%20href%3D%27stamina.php%3Fop%3Dshow%27%20target%3D%27_blank%27%20onclick%3D%22window.open%28%27stamina.php%3Fop%3Dshow%27%2C%27staminaphpopshow%27%2C%27scrollbars%3Dyes%2Cresizable%3Dyes%2Cwidth%3D550%2Cheight%3D300%27%29.focus%28%29%3Breturn%20false%3B%22%3EStamina%3C%2Fa%3E%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26%3Ca%20href%3D%27stamina.php%3Fop%3Dshow%27%20target%3D%27_blank%27%20onclick%3D%22window.open%28%27stamina.php%3Fop%3Dshow%27%2C%27staminaphpopshow%27%2C%27scrollbars%3Dyes%2Cresizable%3Dyes%2Cwidth%3D550%2Cheight%3D300%27%29.focus%28%29%3Breturn%20false%3B%22%3EStamina%3C%2Fa%3E%600'',''translatortoolphpucommont60263Ca20href3D27staminaphp3Fop3Dshow2720target3D27blank2720onclick3D22windowopen2827staminaphp3Fop3Dshow272C27staminaphpopshow272C27scrollbars3Dyes2Cresizable3Dyes2Cwidth3D5502Cheight3D3002729focus28293Breturn20false3B223EStamina3C2Fa3E600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=Personal%20Info'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=Personal%20Info'',''translatortoolphpucommontPersonal20Info'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Gold%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Gold%600'',''translatortoolphpucommont6026Gold600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Gems%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Gems%600'',''translatortoolphpucommont6026Gems600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Experience%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Experience%600'',''translatortoolphpucommont6026Experience600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=Equipment%20Info'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=Equipment%20Info'',''translatortoolphpucommontEquipment20Info'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Weapon%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Weapon%600'',''translatortoolphpucommont6026Weapon600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Armor%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Armor%600'',''translatortoolphpucommont6026Armor600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Creature%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Creature%600'',''translatortoolphpucommont6026Creature600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=Game%20State'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=Game%20State'',''translatortoolphpucommontGame20State'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%60%26Current%20Weather%3A%600'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%60%26Current%20Weather%3A%600'',''translatortoolphpucommont6026Current20Weather3A600'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%600Buffs'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%600Buffs'',''translatortoolphpucommont600Buffs'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=MoTD'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=MoTD'',''translatortoolphpucommontMoTD'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n\n<a href=''translatortool.php?u=common&t=Ye%20Olde%20Mail%3A%20%25s%20new%2C%20%25s%20old'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=Ye%20Olde%20Mail%3A%20%25s%20new%2C%20%25s%20old'',''translatortoolphpucommontYe20Olde20Mail3A2025s20new2C2025s20old'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''t''>T</a>\n\n<a href=''translatortool.php?u=common&t=Petition%20for%20Help'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=Petition%20for%20Help'',''translatortoolphpucommontPetition20for20Help'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n\n<a href=''translatortool.php?u=common&t=%600%60bPetitions%3A%60b'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%600%60bPetitions%3A%60b'',''translatortoolphpucommont60060bPetitions3A60b'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=%600%60bUser%20Editor%60b'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=%600%60bUser%20Editor%60b'',''translatortoolphpucommont60060bUser20Editor60b'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n<a href=''translatortool.php?u=common&t=View%20PHP%20Source'' target=''_blank'' onClick="window.open(''translatortool.php?u=common&t=View%20PHP%20Source'',''translatortoolphpucommontView20PHP20Source'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" class=''thot''>T</a>\n\n\n\n					</td>\n					<td class="stats">\n						<img src="templates/dragonleather/navheader-divider.png">\n						\n<table cellpadding=''1'' cellspacing=''0'' class=''charinfo''>\n\n  <tr>\n    <td class=''charhead'' colspan=''2''>\n    Vital Info<br />\n    </td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b></span><span class=''colLtWhite''>Name</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>Cousjava</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Level</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''><b>2</b></span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Hitpoints</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>20</span>/20</td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Attack</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>1</span><span class=''colLtGreen''>+1.7</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Defense</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>1</span><span class=''colLtGreen''>+1.3</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Spirits</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''><b>High</b></span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Race</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>Human</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''><a href=''stamina.php?op=show'' target=''_blank'' onclick="window.open(''stamina.php?op=show'',''staminaphpopshow'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;">Stamina</a></span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''><font color=#003300>92.07%</font><br><table style=''border: solid 1px #000000'' bgcolor=''#003300'' cellpadding=''0'' cellspacing=''0'' width=''70'' height=''5''><tr><td width=''20%'' bgcolor=''#FF0000''></td><td width=''40%'' bgcolor=''#FFA200''></td><td width=''32.0708%'' bgcolor=''#00FF00''></td><td width=''7.9292%''></td></tr></table></span></td>\n  </tr>\n\n  <tr>\n    <td class=''charhead'' colspan=''2''>\n    Personal Info<br />\n    </td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Gold</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>62</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Gems</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>42819</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Experience</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>243</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charhead'' colspan=''2''>\n    Equipment Info<br />\n    </td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Weapon</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>Sharp Steel Wood-chopping Axe</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Armor</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>Homespun Undershirt</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Creature</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>Stallion</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charhead'' colspan=''2''>\n    Game State<br />\n    </td>\n  </tr>\n\n  <tr>\n    <td class=''charinfo''><b><span class=''colLtWhite''>Current Weather:</span></b></td>\n    <td class=''charinfo''><span class=''colLtYellow''>Clear and Still</span></td>\n  </tr>\n\n  <tr>\n    <td class=''charhead'' colspan=''2''><b>Buffs</b></td>\n  </tr>\n  <tr>\n    <td class=''charinfo'' colspan=''2''><span class=''colLtCyan''></span><span class=''colLtWhite''>Stallion Attack </span><span class=''colDkWhite''>(60 rounds left)<br>\n</span><span class=''colLtCyan''></span><span class=''colLtYellow''>Clan Aura</span> <span class=''colDkWhite''>(150 rounds left)<br>\n</span><span class=''colLtCyan''>DEBUG: clanbuff2 </span><span class=''colDkWhite''>(150 rounds left)<br>\n</span><span class=''colLtCyan''>DEBUG: clanbuff3 </span><span class=''colDkWhite''>(149 rounds left)<br>\n</td>\n  </tr>\n\n</table>\n\n						<br />\n						<img src="templates/dragonleather/navheader-divider.png">\n						<br /><br />\n						<div align="center">\n							<a href="javascript:toggle(''donator'')" class="naked"><img src="templates/dragonleather/donationslot.png"></a>\n							<div id="donator" style="display: none;">\n								<br /><b>The Island requires money.<br />You desire awesome custom stuff.<br />This can mean only one thing!</b>\n								<table align="center"><tr><td><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">\n<input type="hidden" name="cmd" value="_xclick">\n<input type="hidden" name="business" value="logd@mightye.org">\n<input type="hidden" name="item_name" value="Legend of the Green Dragon Author Donation from Cousjava">\n<input type="hidden" name="item_number" value="Cousjava:localhost/kintian/village.php?c=33-202237">\n<input type="hidden" name="no_shipping" value="1">\n<input type="hidden" name="notify_url" value="http://lotgd.net/payment.php">\n<input type="hidden" name="cn" value="Your Character Name">\n<input type="hidden" name="cs" value="1">\n<input type="hidden" name="currency_code" value="USD">\n<input type="hidden" name="tax" value="0">\n<input type="image" src="images/paypal1.gif" border="0" name="submit" alt="Donate!">\n</form></td><td><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">\n<input type="hidden" name="cmd" value="_xclick">\n<input type="hidden" name="business" value="derbugmeister@shaw.ca">\n<input type="hidden" name="item_name" value="Legend of the Green Dragon DP Donation from Cousjava">\n<input type="hidden" name="item_number" value="Cousjava:localhost/kintian/village.php?c=33-202237">\n<input type="hidden" name="no_shipping" value="1">\n<input type="hidden" name="notify_url" value="http://dragonprimelogd.net/payment.php">\n<input type="hidden" name="cn" value="Your Character Name">\n<input type="hidden" name="cs" value="1">\n<input type="hidden" name="currency_code" value="USD">\n<input type="hidden" name="tax" value="0">\n<input type="image" src="images/paypal3.gif" border="0" name="submit" alt="Donate!">\n</form></td></tr></table>\n								<p>Improbable Island runs no adverts, has no commercial sponsorship, and is entirely dependant on donations to survive.  In return, Supporter Points can be traded in for fabulous prizes at the Hunter''s Lodge.</p>\n								<p><strong>To support Improbable Island and receive Supporter Points, please use the purple "Site Admin" PayPal button, after first ensuring that you''re logged in.</strong></p>\n								<p>To thank the original writer of Legend of the Green Dragon, the core engine upon which Improbable Island was originally based, please use the green "Author" PayPal button.</p>\n							</div>\n							<br />\n							\n							<br /><br /><span style=''font-size:smaller''><a href="http://www.improbableisland.com/grid.html">Help us cure cancer, get free Supporter Points!</a></span><br />\n						</div>\n						<br />\n						<img src="templates/dragonleather/navheader-divider.png">\n					</td>\n				</tr>\n				<tr>\n					<td align="left" colspan="3" class="footerinfo">\n						\n<!-- Creative Commons License -->\n<a rel=''license'' href=''http://creativecommons.org/licenses/by-nc-sa/2.0/'' target=''_blank''><img clear=''right'' align=''left'' alt=''Creative Commons License'' border=''0'' src=''images/somerights20.gif'' /></a>\nThis work is licensed under a <a rel=''license'' href=''http://creativecommons.org/licenses/by-nc-sa/2.0/'' target=''_blank''>Creative Commons License</a>.<br />\n<!-- /Creative Commons License -->\n<!--\n  <rdf:RDF xmlns=''http://web.resource.org/cc/'' xmlns:dc=''http://purl.org/dc/elements/1.1/'' xmlns:rdf=''http://www.w3.org/1999/02/22-rdf-syntax-ns#''>\n	<Work rdf:about=''''>\n	  <dc:type rdf:resource=''http://purl.org/dc/dcmitype/Interactive'' />\n	  <license rdf:resource=''http://creativecommons.org/licenses/by-nc-sa/2.0/'' />\n	</Work>\n	<License rdf:about=''http://creativecommons.org/licenses/by-nc-sa/2.0/''>\n	  <permits rdf:resource=''http://web.resource.org/cc/Reproduction'' />\n	  <permits rdf:resource=''http://web.resource.org/cc/Distribution'' />\n	  <requires rdf:resource=''http://web.resource.org/cc/Notice'' />\n	  <requires rdf:resource=''http://web.resource.org/cc/Attribution'' />\n	  <prohibits rdf:resource=''http://web.resource.org/cc/CommercialUse'' />\n	  <permits rdf:resource=''http://web.resource.org/cc/DerivativeWorks'' />\n	  <requires rdf:resource=''http://web.resource.org/cc/ShareAlike'' />\n	</License>\n  </rdf:RDF>\n-->\nGame Design and Code: Copyright &copy; 2002-2005, Eric Stevens & JT Traub, &copy; 2006-2007, Dragonprime Development Team<br />\n						<a href=''source.php?url=/kintian/village.php'' onclick="window.open(''source.php?url=/kintian/village.php'',''sourcephpurlkintianvillagephp'',''scrollbars=yes,resizable=yes,width=550,height=300'').focus();return false;" target=''_blank''>View PHP Source</a><br />Version: 2.2.0 Elvenhall Edition<br />Page gen: 0.637s / 288 queries (0.517s), Ave: 1.037s - 1773.023/1710\n					</td>\n				</tr>\n			</table>\n			<!--weatherend-->\n		</td>\n	</tr>\n	<tr class="sitefooter">\n		<td colspan="3">\n			<img src="templates/dragonleather/bottom-center.png">\n		</td>\n	</tr>\n</table>\n</body>\n</html>\n\n\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `free_armor`
--

CREATE TABLE IF NOT EXISTS `free_armor` (
  `armorid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `armorname` varchar(128) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `defense` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`armorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `free_armor`
--

INSERT INTO `free_armor` (`armorid`, `armorname`, `value`, `defense`, `level`) VALUES
(1, 'Fuzzy Slippers', 48, 1, 0),
(2, 'Flannel Pajamas', 225, 2, 0),
(3, 'Homespun Longjohns', 585, 3, 0),
(4, 'Homespun Undershirt', 990, 4, 0),
(5, 'Knitted Socks', 1575, 5, 0),
(6, 'Knitted Gloves', 2250, 6, 0),
(7, 'Old Leather Boots', 2790, 7, 0),
(8, 'Homespun Pants', 3420, 8, 0),
(9, 'Homespun Tunic', 4230, 9, 0),
(10, 'Gypsy Cape', 5040, 10, 0),
(11, 'Old Leather Cap', 5850, 11, 0),
(12, 'Old Leather Bracers', 6840, 12, 0),
(13, 'Traveller''s Shield', 8010, 13, 0),
(14, 'Old Leather Pants', 9000, 14, 0),
(15, 'Old Leather Tunic', 10350, 15, 0),
(16, 'Flip-Flops', 48, 1, 1),
(17, 'Swimsuit and Towel', 225, 2, 1),
(18, 'Cotton Undershirt', 585, 3, 1),
(19, 'Wool Socks', 990, 4, 1),
(20, 'Wool Gloves', 1575, 5, 1),
(21, 'Leather Boots', 2250, 6, 1),
(22, 'Leather Cap', 2790, 7, 1),
(23, 'Leather Bracers', 3420, 8, 1),
(24, 'Leather Leggings', 4230, 9, 1),
(25, 'Leather Tunic', 5040, 10, 1),
(26, 'Hooded Leather Cape', 5850, 11, 1),
(27, 'Deerskin Leggings', 6840, 12, 1),
(28, 'Deerskin Belt', 8010, 13, 1),
(29, 'Deerskin Tunic', 9000, 14, 1),
(30, 'Small Rawhide Shield', 10350, 15, 1),
(31, 'Workboots', 48, 1, 2),
(32, 'Overalls', 225, 2, 2),
(33, 'Sturdy Leather Gloves', 585, 3, 2),
(34, 'Sturdy Leather Bracers', 990, 4, 2),
(35, 'Sturdy Leather Boots', 1575, 5, 2),
(36, 'Sturdy Leather Helm', 2250, 6, 2),
(37, 'Sturdy Leather Pants', 2790, 7, 2),
(38, 'Sturdy Leather Tunic', 3420, 8, 2),
(39, 'Sturdy Leather Cloak', 4230, 9, 2),
(40, 'Woodsman''s Helm', 5040, 10, 2),
(41, 'Woodsman''s Gauntlets', 5850, 11, 2),
(42, 'Woodsman''s Bracers', 6840, 12, 2),
(43, 'Woodsman''s Greaves', 8010, 13, 2),
(44, 'Woodsman''s Tunic', 9000, 14, 2),
(45, 'Woodsman''s Kite Shield', 10350, 15, 2),
(46, 'Showercap and Towel', 48, 1, 3),
(47, 'Bathrobe', 225, 2, 3),
(48, 'Wolfskin Gloves', 585, 3, 3),
(49, 'Wolfskin-lined Boots', 990, 4, 3),
(50, 'Wolfskin Bracers', 1575, 5, 3),
(51, 'Wolfskin Pants', 2250, 6, 3),
(52, 'Wolfskin Tunic', 2790, 7, 3),
(53, 'Hooded Wolfskin Cape', 3420, 8, 3),
(54, 'Wolfmaster''s Bracers', 4230, 9, 3),
(55, 'Wolfmaster''s Gauntlets', 5040, 10, 3),
(56, 'Wolfmasters Helm', 5850, 11, 3),
(57, 'Wolfmaster''s Leggings', 6840, 12, 3),
(58, 'Wolfmaster''s Belted Jerkin', 8010, 13, 3),
(59, 'Wolfhide Cape', 9000, 14, 3),
(60, 'Shield of the Wolf Master', 10350, 15, 3),
(61, 'Sweat Pants', 48, 1, 4),
(62, 'Sweat Shirt', 225, 2, 4),
(63, 'Studded Leather Helm', 585, 3, 4),
(64, 'Studded Leather Gauntlets', 990, 4, 4),
(65, 'Hardened Leather Boots', 1575, 5, 4),
(66, 'Studded Leather Leggings', 2250, 6, 4),
(67, 'Studded Leather Tunic', 2790, 7, 4),
(68, 'Tanner''s Cape', 3420, 8, 4),
(69, 'Rusty Chainmail Helm', 4230, 9, 4),
(70, 'Rusty Chainmail Gauntlets', 5040, 10, 4),
(71, 'Rusty Chainmail Bracers', 5850, 11, 4),
(72, 'Rusty Chainmail Boots', 6840, 12, 4),
(73, 'Rusty Chainmail Greaves', 8010, 13, 4),
(74, 'Rusty Chainmail Tunic', 9000, 14, 4),
(75, 'Large Iron Buckler', 10350, 15, 4),
(76, 'Bunny Slippers', 48, 1, 5),
(77, 'Feety Pajamas', 225, 2, 5),
(78, 'Comfortable Leather Undergarments', 585, 3, 5),
(79, 'Heavy Chainmail Helm', 990, 4, 5),
(80, 'Heavy Chainmail Gauntlets', 1575, 5, 5),
(81, 'Heavy Chainmail Bracers', 2250, 6, 5),
(82, 'Heavy Chainmail Boots', 2790, 7, 5),
(83, 'Heavy Chainmail Greaves', 3420, 8, 5),
(84, 'Heavy Chainmail Tunic', 4230, 9, 5),
(85, 'Dragon Soldier''s Bracers', 5040, 10, 5),
(86, 'Dragon Soldier''s Gauntlets', 5850, 11, 5),
(87, 'Dragon Soldier''s Boots', 6840, 12, 5),
(88, 'Dragon Soldier''s Greaves', 8010, 13, 5),
(89, 'Dragon Soldier''s Chestplate', 9000, 14, 5),
(90, 'Dragon Soldier''s Shield', 10350, 15, 5),
(91, 'Bluejeans', 48, 1, 6),
(92, 'Flannel Shirt', 225, 2, 6),
(93, 'Well Crafted Bronze Helm', 585, 3, 6),
(94, 'Well Crafted Bronze Gauntlets', 990, 4, 6),
(95, 'Well Crafted Bronze Bracers', 1575, 5, 6),
(96, 'Well Crafted Bronze Boots', 2250, 6, 6),
(97, 'Well Crafted Bronze Greaves', 2790, 7, 6),
(98, 'Well Crafted Bronze Chestplate', 3420, 8, 6),
(99, 'Enchanted Bronze Helm', 4230, 9, 6),
(100, 'Enchanted Bronze Gauntlets', 5040, 10, 6),
(101, 'Enchanted Bronze Bracers', 5850, 11, 6),
(102, 'Enchanted Bronze Boots', 6840, 12, 6),
(103, 'Enchanted Bronze Greaves', 8010, 13, 6),
(104, 'Enchanted Bronze Chestplate', 9000, 14, 6),
(105, 'Hooded Unicorn Skin Cloak', 10350, 15, 6),
(106, 'Barrel', 48, 1, 7),
(107, 'Lampshade', 225, 2, 7),
(108, 'Perfectly Crafted Steel Helm', 585, 3, 7),
(109, 'Perfectly Crafted Steel Gauntlets', 990, 4, 7),
(110, 'Perfectly Crafted Steel Boots', 1575, 5, 7),
(111, 'Perfectly Crafted Steel Bracers', 2250, 6, 7),
(112, 'Perfectly Crafted Steel Greaves', 2790, 7, 7),
(113, 'Perfectly Crafted Steel Chestplate', 3420, 8, 7),
(114, 'Griffon-Feather Cloak', 4230, 9, 7),
(115, 'Dwarven Chainmail Helm', 5040, 10, 7),
(116, 'Dwarven Chainmail Gauntlets', 5850, 11, 7),
(117, 'Dwarven Chainmail Boots', 6840, 12, 7),
(118, 'Dwarven Chainmail Bracers', 8010, 13, 7),
(119, 'Dwarven Chainmail Greaves', 9000, 14, 7),
(120, 'Dwarven Chainmail Chestplate', 10350, 15, 7),
(121, 'Fig Leaf', 48, 1, 8),
(122, 'Kilt', 225, 2, 8),
(123, 'Majestic Gold Helm', 585, 3, 8),
(124, 'Majestic Gold Gauntlets', 990, 4, 8),
(125, 'Majestic Gold Boots', 1575, 5, 8),
(126, 'Bracers', 2250, 6, 8),
(127, 'Majestic Gold Greaves', 2790, 7, 8),
(128, 'Majestic Gold Chestplate', 3420, 8, 8),
(129, 'Majestic Gold Shield', 4230, 9, 8),
(130, 'Gold-Threaded Cloak', 5040, 10, 8),
(131, 'Enchanted Ruby Ring', 5850, 11, 8),
(132, 'Enchanted Sapphire Ring', 6840, 12, 8),
(133, 'Enchanted Jade Ring', 8010, 13, 8),
(134, 'Enchanted Amethyst Ring', 9000, 14, 8),
(135, 'Enchanted Diamond Ring', 10350, 15, 8),
(136, 'Button', 48, 1, 9),
(137, 'Elven Silk Nightclothes', 225, 2, 9),
(138, 'Elven Silk Gloves', 585, 3, 9),
(139, 'Elven Silk Slippers', 990, 4, 9),
(140, 'Elven Silk Wristband', 1575, 5, 9),
(141, 'Leggings', 2250, 6, 9),
(142, 'Elven Silk Tunic', 2790, 7, 9),
(143, 'Elven Silk Cloak', 3420, 8, 9),
(144, 'Ring of Night', 4230, 9, 9),
(145, 'Ring of Day', 5040, 10, 9),
(146, 'Ring of Solitude', 5850, 11, 9),
(147, 'Ring of Peace', 6840, 12, 9),
(148, 'Ring of Courage', 8010, 13, 9),
(149, 'Ring of Virtue', 9000, 14, 9),
(150, 'Ring of Life', 10350, 15, 9),
(151, 'Pegasus'' Hooded Cloak', 5040, 10, 10),
(152, 'Pegasus'' Chestplate', 4230, 9, 10),
(153, 'Pegasus'' Greaves', 3420, 8, 10),
(154, 'Pegasus'' Boots', 2790, 7, 10),
(155, 'Pegasus'' Gorget', 2250, 6, 10),
(156, 'Pegasus'' Bracers', 1575, 5, 10),
(157, 'Pegasus'' Gauntlets', 990, 4, 10),
(158, 'Pegasus'' Helm', 585, 3, 10),
(159, 'Platform Shoes', 225, 2, 10),
(160, 'Leisure Suit', 48, 1, 10),
(161, 'Pegasus Feather Pendant', 5850, 11, 10),
(162, 'Pegasus Feather Belt', 6840, 12, 10),
(163, 'Pegasus'' Emblazoned Shield', 8010, 13, 10),
(164, 'Pegasus'' Emblazoned Ring', 9000, 14, 10),
(165, 'Pegasus'' Emblazoned Crown', 10350, 15, 10),
(166, 'New Clothes', 48, 1, 11),
(167, 'Chicken Suit', 225, 2, 11),
(168, 'Gauntlets of Grace', 585, 3, 11),
(169, 'Bracer of Beauty', 990, 4, 11),
(170, 'Helm of Health', 1575, 5, 11),
(171, 'Greaves of Good Fortune', 2250, 6, 11),
(172, 'Boots of Bravery', 2790, 7, 11),
(173, 'Tunic of Tolerance', 3420, 8, 11),
(174, 'Cloak of Confidence', 4230, 9, 11),
(175, 'Ring of Righteousness', 5040, 10, 11),
(176, 'Necklace of Narcissism', 5850, 11, 11),
(177, 'Pendant of Power', 6840, 12, 11),
(178, 'Breastplate of Benevolence', 8010, 13, 11),
(179, 'Shield of Superiority', 9000, 14, 11),
(180, 'Scepter of Strength', 10350, 15, 11),
(181, 'Dragon Skin Leather Helm', 48, 1, 12),
(182, 'Dragon Skin Leather Gauntlets', 225, 2, 12),
(183, 'Dragon Skin Leather Boots', 585, 3, 12),
(184, 'Dragon Skin Leather Bracers', 990, 4, 12),
(185, 'Dragon Skin Leather Leggings', 1575, 5, 12),
(186, 'Dragon Skin Leather Tunic', 2250, 6, 12),
(187, 'Dragon Skin Leather Cloak', 2790, 7, 12),
(188, 'Dragon Scale Helm', 3420, 8, 12),
(189, 'Dragon Scale Gauntlets', 4230, 9, 12),
(190, 'Dragon Scale Boots', 5040, 10, 12),
(191, 'Dragon Scale Bracers', 5850, 11, 12),
(192, 'Dragon Scale Greaves', 6840, 12, 12),
(193, 'Dragon Scale Chestplate', 8010, 13, 12),
(194, 'Dragon Scale Cloak', 9000, 14, 12),
(195, 'Dragon Talon Shield', 10350, 15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `free_badnavlog`
--

CREATE TABLE IF NOT EXISTS `free_badnavlog` (
  `entryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `user` int(11) NOT NULL,
  `allowednavs` mediumtext NOT NULL,
  `accountsoutput` mediumtext NOT NULL,
  PRIMARY KEY (`entryid`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_badnavlog`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_bans`
--

CREATE TABLE IF NOT EXISTS `free_bans` (
  `ipfilter` varchar(15) NOT NULL,
  `uniqueid` varchar(32) NOT NULL,
  `banexpire` datetime DEFAULT NULL,
  `banreason` text NOT NULL,
  `banner` varchar(50) NOT NULL,
  `lasthit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `banexpire` (`banexpire`),
  KEY `uniqueid` (`uniqueid`),
  KEY `ipfilter` (`ipfilter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_bans`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_bounty`
--

CREATE TABLE IF NOT EXISTS `free_bounty` (
  `bountyid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `target` int(11) unsigned NOT NULL DEFAULT '0',
  `setter` int(11) unsigned NOT NULL DEFAULT '0',
  `setdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `winner` int(11) unsigned NOT NULL DEFAULT '0',
  `windate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bountyid`),
  KEY `status` (`status`),
  KEY `target` (`target`),
  KEY `status_2` (`status`,`target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_bounty`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_buildings`
--

CREATE TABLE IF NOT EXISTS `free_buildings` (
  `hid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ownedby` int(11) unsigned NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_buildings`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_building_prefs`
--

CREATE TABLE IF NOT EXISTS `free_building_prefs` (
  `hid` int(11) unsigned NOT NULL,
  `pref` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`hid`,`pref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_building_prefs`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_cityprefs`
--

CREATE TABLE IF NOT EXISTS `free_cityprefs` (
  `cityid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `cityname` varchar(255) NOT NULL,
  PRIMARY KEY (`cityid`),
  KEY `cityid` (`cityid`),
  KEY `module` (`module`),
  KEY `cityname` (`cityname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `free_cityprefs`
--

INSERT INTO `free_cityprefs` (`cityid`, `module`, `cityname`) VALUES
(1, 'none', 'Improbable Central'),
(2, '', 'AceHigh'),
(3, '', 'Cyber City 404'),
(4, 'raceelf', 'Glorfindal'),
(5, 'racetroll', 'Glukmoore'),
(6, '', 'Kittania'),
(7, '', 'New Pittsburgh'),
(8, '', 'Pleasantville'),
(9, 'racedwarf', 'Qexelcrag'),
(10, 'racehuman', 'NewHome'),
(11, '', 'Squat Hole');

-- --------------------------------------------------------

--
-- Table structure for table `free_clans`
--

CREATE TABLE IF NOT EXISTS `free_clans` (
  `clanid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clanname` varchar(255) NOT NULL,
  `clanshort` varchar(5) NOT NULL,
  `clanmotd` text,
  `clandesc` text,
  `motdauthor` int(11) unsigned NOT NULL DEFAULT '0',
  `descauthor` int(11) unsigned NOT NULL DEFAULT '0',
  `customsay` varchar(15) NOT NULL,
  PRIMARY KEY (`clanid`),
  KEY `clanname` (`clanname`),
  KEY `clanshort` (`clanshort`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `free_clans`
--

INSERT INTO `free_clans` (`clanid`, `clanname`, `clanshort`, `clanmotd`, `clandesc`, `motdauthor`, `descauthor`, `customsay`) VALUES
(1, 'Ministry of Defense', 'MOD', NULL, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `free_commentary`
--

CREATE TABLE IF NOT EXISTS `free_commentary` (
  `commentid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(20) DEFAULT NULL,
  `author` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(200) NOT NULL,
  `postdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`commentid`),
  KEY `section` (`section`),
  KEY `postdate` (`postdate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `free_commentary`
--

INSERT INTO `free_commentary` (`commentid`, `section`, `author`, `comment`, `postdate`) VALUES
(1, 'village', 2, 'test comments', '2012-02-19 18:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `free_companions`
--

CREATE TABLE IF NOT EXISTS `free_companions` (
  `companionid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `attack` int(6) unsigned NOT NULL DEFAULT '1',
  `attackperlevel` int(6) unsigned NOT NULL DEFAULT '0',
  `defense` int(6) unsigned NOT NULL DEFAULT '1',
  `defenseperlevel` int(6) unsigned NOT NULL DEFAULT '0',
  `maxhitpoints` int(6) unsigned NOT NULL DEFAULT '10',
  `maxhitpointsperlevel` int(6) unsigned NOT NULL DEFAULT '10',
  `abilities` text NOT NULL,
  `cannotdie` tinyint(4) NOT NULL DEFAULT '0',
  `cannotbehealed` tinyint(4) NOT NULL DEFAULT '1',
  `companionlocation` varchar(25) NOT NULL DEFAULT 'all',
  `companionactive` tinyint(25) NOT NULL DEFAULT '1',
  `companioncostdks` tinyint(4) NOT NULL DEFAULT '0',
  `companioncostgems` int(6) NOT NULL DEFAULT '0',
  `companioncostgold` int(10) NOT NULL DEFAULT '0',
  `jointext` text NOT NULL,
  `dyingtext` varchar(255) NOT NULL,
  `allowinshades` tinyint(4) NOT NULL DEFAULT '0',
  `allowinpvp` tinyint(4) NOT NULL DEFAULT '0',
  `allowintrain` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`companionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `free_companions`
--

INSERT INTO `free_companions` (`companionid`, `name`, `category`, `description`, `attack`, `attackperlevel`, `defense`, `defenseperlevel`, `maxhitpoints`, `maxhitpointsperlevel`, `abilities`, `cannotdie`, `cannotbehealed`, `companionlocation`, `companionactive`, `companioncostdks`, `companioncostgems`, `companioncostgold`, `jointext`, `dyingtext`, `allowinshades`, `allowinpvp`, `allowintrain`) VALUES
(1, 'Mortimer teh javelin man', 'Knight', 'A rough and ready warrior.  Beneath his hardened exterior, one can detect a man of strong honour.', 5, 2, 1, 2, 20, 20, 'a:4:{s:5:"fight";s:1:"1";s:4:"heal";s:1:"0";s:5:"magic";s:1:"0";s:6:"defend";b:0;}', 0, 0, 'Improbable Central', 1, 0, 4, 573, '`^Greetings unto thee, my friend.  Let us go forth and conquer the evils of this world together!', '`4Argggggh!  I am slain!  Shuffling off my mortal coil.  Fare thee well, my friends.', 1, 0, 0),
(2, 'Florenz', 'Healer', 'With a slight build, Florenz is better suited as a healer than a fighter.', 1, 1, 5, 5, 15, 10, 'a:4:{s:4:"heal";s:1:"2";s:5:"magic";s:1:"0";s:5:"fight";b:0;s:6:"defend";b:0;}', 0, 0, 'Improbable Central', 1, 0, 3, 1000, 'Thank ye for thy faith in my skills.  I shall endeavour to keep ye away from Ramius'' claws.', 'O Discordia!', 1, 0, 0),
(3, 'Grizzly Bear', 'Wild Beasts', 'You look at the beast knowing that this Grizzly Bear will provide an effective block against attack with its long curved claws and massive body of silver-tipped fur.', 1, 2, 5, 2, 25, 25, 'a:4:{s:5:"fight";s:1:"0";s:4:"heal";s:1:"0";s:5:"magic";s:1:"0";s:6:"defend";s:1:"1";}', 0, 0, 'Qexelcrag', 1, 0, 4, 600, 'You hear a low, deep belly growl coming from a shadowed corner of the Bestiarium.  Curious you walk over to investigate your purchase. As you approach a large form shuffles on all four legs towards the front of its hewn rock enclosure.`n`nThe hunched shoulders of the largest bear you have ever seen ripple as its front haunches push against the ground causing it to stand on its hind legs.  It makes another low growl before dropping back on all four legs to follow you on your adventure.', 'The grizzly gets scared by the multitude of blows and hits he has to take and flees into the forest.', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `free_creatures`
--

CREATE TABLE IF NOT EXISTS `free_creatures` (
  `creatureid` int(11) NOT NULL AUTO_INCREMENT,
  `creaturename` varchar(50) DEFAULT NULL,
  `creaturelevel` int(11) DEFAULT NULL,
  `creatureweapon` varchar(50) DEFAULT NULL,
  `creaturelose` varchar(120) DEFAULT NULL,
  `creaturewin` varchar(120) DEFAULT NULL,
  `creaturegold` int(11) DEFAULT NULL,
  `creatureexp` int(11) DEFAULT NULL,
  `creaturehealth` int(11) DEFAULT NULL,
  `creatureattack` int(11) DEFAULT NULL,
  `creaturedefense` int(11) DEFAULT NULL,
  `creatureaiscript` text,
  `createdby` varchar(50) DEFAULT NULL,
  `forest` tinyint(4) NOT NULL DEFAULT '0',
  `graveyard` tinyint(4) NOT NULL DEFAULT '0',
  `oldcreatureexp` int(11) DEFAULT NULL,
  PRIMARY KEY (`creatureid`),
  KEY `creaturelevel` (`creaturelevel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=321 ;

--
-- Dumping data for table `free_creatures`
--

INSERT INTO `free_creatures` (`creatureid`, `creaturename`, `creaturelevel`, `creatureweapon`, `creaturelose`, `creaturewin`, `creaturegold`, `creatureexp`, `creaturehealth`, `creatureattack`, `creaturedefense`, `creatureaiscript`, `createdby`, `forest`, `graveyard`, `oldcreatureexp`) VALUES
(1, 'Thieving Kender', 1, 'Whirling Hoopak', 'You only wish you could pickpocket your money back from the thief.', NULL, 36, 14, 10, 1, 1, NULL, 'Appleshiner', 1, 0, NULL),
(2, 'Rude Student', 1, 'Worn Textbook', 'You have sent this student to permanent detention.', '', 36, 14, 10, 1, 1, '', 'Appleshiner', 1, 0, NULL),
(3, 'Baby Unicorn', 1, 'Blunt Horn', 'You feel like a real jerk killing something so pretty.', '', 36, 14, 10, 1, 1, '', 'Appleshiner', 1, 0, NULL),
(4, 'Small Purple Mouse', 1, 'Lashing pink tail', 'It is written in black and white: this strange technicolor mouse is no more.', '', 36, 14, 10, 1, 1, '', 'Appleshiner', 1, 0, NULL),
(5, 'Grunting Piggy', 1, 'Wiggly Snout', 'Mmm...Bacon', NULL, 36, 14, 10, 1, 1, NULL, 'Appleshiner', 1, 0, NULL),
(6, 'Dumb Old Eyesore', 2, 'Nagging complaints', 'All she ever did was nag...nag...nag...', NULL, 97, 24, 21, 3, 3, NULL, 'Appleshiner', 1, 0, NULL),
(7, 'Pygmy Marmoset', 2, 'Pieces of treebark', 'The strange little monkey falls from the trees and lies still.', NULL, 97, 24, 21, 3, 3, NULL, 'Appleshiner', 1, 0, NULL),
(8, 'Burly Man', 15, 'Amazing Absorbency', 'Fantasize, fantasize about Burly ...Eeeh, Eeeh, Eeeh!', NULL, 531, 189, 155, 29, 21, NULL, 'Bluspring', 1, 0, NULL),
(9, 'Screaming Banshee', 2, 'Hauntingly Beautiful Voice', 'You plunge your weapon into her breast, silencing her song.', '', 97, 24, 21, 3, 3, '', 'Appleshiner', 1, 1, NULL),
(10, 'Ursa Minor', 2, 'Twinkling Lights', 'After an astronomical battle, Ursa Minor is the one seeing stars', NULL, 97, 24, 21, 3, 3, NULL, 'Appleshiner', 1, 0, NULL),
(11, 'Stone Troll', 2, 'Gaping  Maw', 'That troll is stone cold ugly.', NULL, 97, 24, 21, 3, 3, NULL, 'Appleshiner', 1, 0, NULL),
(12, 'Slithering Asp', 2, 'Hypnotic eyes', 'You break the deadly gaze of the snake to save your own life.', '', 97, 24, 21, 3, 3, '', 'Appleshiner', 1, 0, NULL),
(13, 'Windan The Barbarian', 2, 'Feathered Spear', 'He really was just a feather-weight', NULL, 97, 24, 21, 3, 3, NULL, 'Appleshiner', 1, 0, NULL),
(14, 'Studious Young Sorceror', 2, 'Newly memorized spells', 'Perhaps she should have studied harder.', '', 97, 24, 21, 3, 3, '', 'Appleshiner', 1, 0, NULL),
(15, 'Four and Twenty Blackbirds', 3, 'Freshly Baked Pies', 'Now isn''t this a dainty dish to set before a king?', NULL, 148, 34, 32, 5, 4, NULL, 'Appleshiner', 1, 0, NULL),
(16, 'Amazon', 3, 'Bow and Arrow', 'The beautiful warrior lass has lost a battle for the first time.', NULL, 148, 34, 32, 5, 4, NULL, 'Appleshiner', 1, 0, NULL),
(17, 'Overbearing Mother', 3, '9pm Curfew', 'With one fell swoop you save your social life!', '', 148, 34, 32, 5, 4, '', 'Appleshiner', 1, 0, NULL),
(18, 'Huge Bald Programmer', 3, 'Shining Forehead', 'You feel as if you have seen this man before in the village.', '', 148, 34, 32, 5, 4, '', 'Appleshiner', 1, 0, NULL),
(19, 'Someone''s Grandfather', 3, 'Stories that go nowhere', 'This reminds you of the time you needed a new heel for your shoe.', '', 148, 34, 32, 5, 4, '', 'Appleshiner', 1, 0, NULL),
(20, 'Juvenile Delinquent', 3, 'Poor Attitude', 'With a satisfying thump, you knock the smirk right off his face.', '', 148, 34, 32, 5, 4, '', 'Appleshiner', 1, 0, NULL),
(21, 'Beautiful Woodland Sprite', 3, 'Kindness and tranquility', 'You really cut that wood sprite down to size.', '', 148, 34, 32, 5, 4, '', 'Appleshiner', 1, 0, NULL),
(22, 'Society Belle', 3, 'Southern Charm', 'Now she will never be on time for the ball!', NULL, 148, 34, 32, 5, 4, NULL, 'Appleshiner', 1, 0, NULL),
(23, 'Giant Goldfish Cracker', 3, 'Annoying Commercial Jingles', 'Now *there* is a fish that smiled till you bit his head off.', NULL, 148, 34, 32, 5, 4, NULL, 'Appleshiner', 1, 0, NULL),
(24, 'Angry Mob', 4, 'Torches', 'There is no justice for an angry mob.', '', 162, 45, 43, 7, 6, '', 'Appleshiner', 1, 0, NULL),
(25, 'Polar Bear', 4, 'Terrible claws', 'That bear really needed an attitude adjustment.', '', 162, 45, 43, 7, 6, '', 'Appleshiner', 1, 0, NULL),
(26, 'Decaying Skeleton', 4, 'Rusty Sword', 'His leg ought to make a good toy for your dog.', NULL, 162, 45, 43, 7, 6, NULL, 'Appleshiner', 1, 1, NULL),
(27, 'Willie the Wonder Hampster', 4, 'Nuclear Sunflower Seeds', 'You smile a grim smile at Willie and quietly munch on some seeds.', '', 162, 45, 43, 7, 6, '', 'Appleshiner', 1, 0, NULL),
(28, 'Winged Demon Of Death', 4, 'Red Glare', 'You cut off the Demon''s head, to be sure of its death.', NULL, 162, 45, 43, 7, 6, NULL, 'foilwench', 1, 1, NULL),
(29, 'Small Dragon', 4, 'Hot air', 'For one moment you thought THIS was the Green Dragon, but alas not.', NULL, 162, 45, 43, 7, 6, NULL, 'Appleshiner', 1, 0, NULL),
(30, 'Monstrous Dustbunny', 4, 'Sneezing fits', 'You sweep the poor bunny under the rug when no one is looking.', '', 162, 45, 43, 7, 6, '', 'Appleshiner', 1, 0, NULL),
(31, 'Small Rabbit', 4, 'Sharp Pointy Teeth', 'To think you almost ran away!', NULL, 162, 45, 43, 7, 6, NULL, 'Appleshiner', 1, 0, NULL),
(32, 'Mature Unicorn', 5, 'Powerful Horn', 'A unicorn is a thing of beauty, even in death.', '', 198, 55, 53, 9, 7, '', 'Appleshiner', 1, 0, NULL),
(33, 'Gnome Necromancer', 5, 'Skeleton Familiar', 'Once you killed its familiar that Gnome was really weak.', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 1, NULL),
(34, 'Purple Dinosaur', 5, 'Helpful Nature', 'There seems to be a person inside that strange dino.  You wonder why.', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 0, NULL),
(35, 'Orc Emmisary', 5, 'Diplomacy', 'You never were the diplomatic type.', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 0, NULL),
(36, 'Dark Spiritling', 5, 'Dark Magic', 'The spiritling gasps a final breath as you end its pitiful life.', '', 198, 55, 53, 9, 7, '', 'Appleshiner', 1, 1, NULL),
(37, 'Enchanted Toilet', 5, 'Ninja Flushing Action', 'That was just weird.', '', 198, 55, 53, 9, 7, '', 'Appleshiner', 1, 0, NULL),
(38, 'Giant Water Elemental', 5, 'Torrential Downpours', 'The giant creature is reduced a meager spring shower.', '', 198, 55, 53, 9, 7, '', 'Appleshiner', 1, 0, NULL),
(39, 'Violins', 5, 'Off-Key notes', 'Won''t someone PLEASE stop the violins?', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 0, NULL),
(40, 'Whirled Peas', 5, 'Green Slime', 'We should all pray for whirled peas.', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 0, NULL),
(41, 'Magic Mushroom', 6, 'Swirling Colors', 'Guess you don''t need to go ask Alice now.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 0, NULL),
(42, 'Invisible Man', 6, 'Something Invisible and Sharp', 'You really aren''t sure if it is dead, or just hiding...after all it is invisible.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 0, NULL),
(43, 'Clown of Death', 6, 'Balloon Animals from Beyond', 'You give the clown''s nose a honk just for fun before you leave.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 1, NULL),
(44, 'Heart of Stone', 6, 'Unromantic Thoughts', 'Aww, now look, you broke its heart!', NULL, 234, 66, 64, 11, 8, NULL, 'Appleshiner', 1, 0, NULL),
(45, 'Troll Warrior', 6, 'Steel Broadsword', 'Wow, he smelled bad enough alive, can you imagine how he''ll smell tomorrow?', NULL, 234, 66, 64, 11, 8, NULL, 'Appleshiner', 1, 0, NULL),
(46, 'Bettie the Amazing Kung-Fu Butterfly', 6, 'Stupendous Kung-Fu Wings', 'You survived a battle to the death with a butterfly.  You must be so proud.', NULL, 234, 66, 64, 11, 8, NULL, 'Appleshiner', 1, 0, NULL),
(47, 'Golden Goose', 6, '14 Karat Gold Eggs', 'You have slain the goose but it is too heavy to take back to town.  All that wealth wasted.', NULL, 234, 66, 64, 11, 8, NULL, 'Appleshiner', 1, 0, NULL),
(48, 'Black Tiger', 6, 'Claws', 'You ponder the tiger''s body thinking what a good rug it might make.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 0, NULL),
(49, 'Lambert the Sheepish Lion', 6, 'Timid Growling', 'You marched in like a lion and he died like a lamb.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 0, NULL),
(50, 'Marsha of the Jungle', 7, 'Trained Monkeys', 'Poor Marsha, she thought those monkeys were better trained.', '', 268, 77, 74, 13, 10, '', 'Appleshiner', 1, 0, NULL),
(51, 'Moe', 7, 'Two Knives', 'Maybe those knives weren''t so great.', '', 268, 77, 74, 13, 10, '', 'Appleshiner', 1, 0, NULL),
(52, 'Coffin', 7, 'Terrifying Premonitions', 'Best way to get rid of the coffin is Robitussin.', NULL, 268, 77, 74, 13, 10, NULL, 'Appleshiner', 1, 1, NULL),
(53, 'Green Alligator', 7, 'Crushing Jaws', 'Crikey!  That thing could have killed you!', NULL, 268, 77, 74, 13, 10, NULL, 'foilwench', 1, 0, NULL),
(54, 'Lindsey, Daughter of Erin the Ninja Squirrel', 7, 'A Peanut Shooter', 'All these squirrels are nuts.', '', 268, 77, 74, 13, 10, '', 'Appleshiner', 1, 0, NULL),
(55, 'Wizarding School Senior Student', 7, 'Memory Charm', 'Drat!  He took your memory before you killed him.  Who are you anyway?', NULL, 268, 77, 74, 13, 10, NULL, 'Appleshiner', 1, 0, NULL),
(56, 'Enchanted Laundry Basket', 7, 'Stinky Socks of Terror', 'So that''s what happens to lost socks!', NULL, 268, 77, 74, 13, 10, NULL, 'Appleshiner', 1, 0, NULL),
(57, 'Carrot Top', 7, 'Phone Company Slogans', 'That has got to be the most satisfying kill you ever made.', NULL, 268, 77, 74, 13, 10, NULL, 'Appleshiner', 1, 0, NULL),
(58, 'Macintosh Computer', 7, 'Amazingly Bright Colors', 'So THAT''S what happens when you right-click a Mac.', NULL, 268, 77, 74, 13, 10, NULL, 'Appleshiner', 1, 0, NULL),
(59, 'Interior Designer', 8, 'Color-coordinating Sword and Shield', 'You didn''t like his style.', '', 302, 89, 84, 15, 11, '', 'Appleshiner', 1, 0, NULL),
(60, 'Daughter of the Devil', 8, 'Sinfully Good Looks', 'She is the girl your mom always warned you about.', NULL, 302, 89, 84, 15, 11, NULL, 'Appleshiner', 1, 1, NULL),
(61, 'Wild Horses', 8, 'Dragging', 'I guess the saying is true, wild horses can''t drag you away.', '', 302, 89, 84, 15, 11, '', 'Appleshiner', 1, 0, NULL),
(62, 'Steam Elemental', 8, 'Scalding jets of air', 'There was just enough steam left to make an espresso.', '', 302, 89, 84, 15, 11, '', 'foilwench', 1, 0, NULL),
(63, 'Gordon the Cheese Eater', 8, 'Odiferous Nature', 'You sure cut that cheese....eater.', '', 302, 89, 84, 15, 11, '', 'Appleshiner', 1, 0, NULL),
(64, 'Narcoleptic', 8, 'Drowsiness', 'This narcoleptic won''t be waking up anytime soon.', '', 302, 89, 84, 15, 11, '', 'Appleshiner', 1, 0, NULL),
(65, 'Swarm of Bees', 8, 'Stinging', 'You feel like a pincushion, but you are alive.', '', 302, 89, 84, 15, 11, '', 'Appleshiner', 1, 0, NULL),
(66, 'Halfling Mage', 8, 'Painful Spells', 'That fight wasn''t half as difficult as you thought it would be.', '', 302, 89, 84, 15, 11, '', 'Appleshiner', 1, 0, NULL),
(67, 'Citizen of Eythgim Village', 9, 'Slurs', 'Geeze, what did you ever do to him?', NULL, 336, 101, 94, 17, 13, NULL, 'Appleshiner', 1, 0, NULL),
(68, 'Old Hag', 9, 'Red Red Rose', 'It is her turn to sleep an enchanted sleep.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(69, 'Charging Buffalo', 9, 'Stampeding Hoofs', 'Do you know how to stop a charging buffalo?  Take away his credit card!', NULL, 336, 101, 94, 17, 13, NULL, 'Appleshiner', 1, 0, NULL),
(70, 'Pawn', 9, 'Simple Tactics', 'Well, that was a bad move.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(71, 'Romulan', 9, 'Wrong-Genre Confusion', 'You think to yourself they look tougher on TV.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(72, 'Large Griffon', 9, 'Beak and Claws', 'The mythical creature is no more.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(73, 'Cliche Bond Movie Villain', 9, 'Cell-phone of Death', 'Well, really, who throws a cell phone?  I mean, that really, really hurt!', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(74, 'Fuzzy Ferret', 9, 'Disarming Cuteness', 'Who knew ferrets were so violent!', NULL, 336, 101, 94, 17, 13, NULL, 'Appleshiner', 1, 0, NULL),
(75, 'Starving Artist', 9, 'Pointy Paintbrushes', 'This guy really painted himself into a corner.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(76, 'Guard from Eythgim Village', 10, 'Rapier', 'The people from that village seem angry!', NULL, 369, 114, 105, 19, 14, NULL, 'Appleshiner', 1, 0, NULL),
(77, 'Garden Gnome', 10, 'Painful Tackiness', 'Stupid garden gnomes. What are they doing in the forest anyway?', '', 369, 114, 105, 19, 14, '', 'Appleshiner', 1, 0, NULL),
(78, 'Chicken', 10, 'Squawking', 'Good fortune smiles upon you - you will eat well tonight.', '', 369, 114, 105, 19, 14, '', 'foilwench', 1, 0, NULL),
(79, 'Marksman', 10, 'Deadly Aim', 'He took so long to aim, you just walked up and kicked him.', '', 369, 114, 105, 19, 14, '', 'Appleshiner', 1, 0, NULL),
(80, 'Enchanted Tissue Box', 10, 'Cold Germs', 'You pick up the box and put it in your pocket.  You never know when a tissue might come in handy.', '', 369, 114, 105, 19, 14, '', 'Appleshiner', 1, 0, NULL),
(81, 'Ghostly Woodsman', 10, 'Phantom Axe', 'You aren''t sure how you did it, but you killed something that was already dead.  Good for you.', NULL, 369, 114, 105, 19, 14, NULL, 'Appleshiner', 1, 1, NULL),
(82, 'Zombie', 10, 'Rotting Flesh', 'He really went to pieces, didn''t he?', NULL, 369, 114, 105, 19, 14, NULL, 'foilwench', 1, 0, NULL),
(83, 'Fortula the Plains Cat', 10, 'Claws and Teeth', 'That plains cat is now plain dead.', '', 369, 114, 105, 19, 14, '', 'Appleshiner', 1, 0, NULL),
(84, 'Erin the Ninja Squirrel', 10, 'Acorn Tossing Madness', 'That squirrel was a little crazy.', '', 369, 114, 105, 19, 14, '', 'Appleshiner', 1, 0, NULL),
(85, 'Bluebird of Happiness', 11, 'Uplifting Melody', 'Happiness is over-rated anyway.', '', 402, 127, 115, 21, 15, '', 'Appleshiner', 1, 0, NULL),
(86, 'Potato Newscaster', 11, 'Personal Opinions', 'It''s ok, he was just a common ''tater.', '', 402, 127, 115, 21, 15, '', 'Appleshiner', 1, 0, NULL),
(87, 'Pygmy Dragon', 11, 'Fire Breath', 'You hope he wasn''t a relative of the Green Dragon.', '', 402, 127, 115, 21, 15, '', 'Appleshiner', 1, 0, NULL),
(88, 'Zealous Photographer', 11, 'Flashing Lights', 'The things beautiful people have to put up with.', NULL, 402, 127, 115, 21, 15, NULL, 'Appleshiner', 1, 0, NULL),
(89, 'Gary Larson', 11, 'Strange Cartoons', 'You still don''t get it.', NULL, 402, 127, 115, 21, 15, NULL, 'Appleshiner', 1, 0, NULL),
(90, 'Soldier from Eythgim Village', 11, 'Battle Cry', 'Eythgim seems to be waging a personal war with you.', '', 402, 127, 115, 21, 15, '', 'Appleshiner', 1, 0, NULL),
(91, '80''s Glam Rocker', 11, 'Blinding Makeup', 'You know your motto, Live and let die.', NULL, 402, 127, 115, 21, 15, NULL, 'Appleshiner', 1, 0, NULL),
(92, 'Vigilante', 11, 'Sack of Doorknobs', 'This carnage disgusts you.', '', 402, 127, 115, 21, 15, '', 'Appleshiner', 1, 0, NULL),
(93, 'The Devil', 11, 'Eternal Damnation', 'For being the Devil, he really wasn''t so hot.', NULL, 402, 127, 115, 21, 15, NULL, 'Appleshiner', 1, 1, NULL),
(94, 'Mercenary', 12, 'Blood-chilling Stare', 'You could use an ale.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 0, NULL),
(95, 'Magic Mirror', 12, 'Flattering Remarks', 'Mirror, Mirror, on the Ground, it is your death that you have found.', NULL, 435, 141, 125, 23, 17, NULL, 'Appleshiner', 1, 0, NULL),
(96, 'Broadway Extra', 12, 'Memorable Showtunes', 'This extra is really on her own now.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 0, NULL),
(97, 'Butter the Sprite', 12, 'Magic Pixie Dust', 'Butter?  What kind of a name is Butter?', NULL, 435, 141, 125, 23, 17, NULL, 'Appleshiner', 1, 0, NULL),
(98, 'Father Time', 12, 'Old Age', 'Your victory is not comforting. You know he will still catch up to you.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 0, NULL),
(99, 'Eythgim Village Archers', 12, 'Flaming Arrows', 'The tree is  burning, you''d better try to put it out.', NULL, 435, 141, 125, 23, 17, NULL, 'foilwench', 1, 0, NULL),
(100, 'Animate Stormcloud', 12, 'Lightning', 'The storm is no more. You can see the light of day peeking through the last of the clouds.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 0, NULL),
(101, 'Three Toed Sloth', 12, 'Slow Responses', 'Your swift moves were too fast for this sloth.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 0, NULL),
(102, 'Death', 12, 'Cold Grasp', 'There it is!  Death!!!!!', NULL, 435, 141, 125, 23, 17, NULL, 'Appleshiner', 1, 1, NULL),
(103, 'Cerberus', 13, 'Three Drooling Maws', 'Each one''s breath was worse than the last.', '', 467, 156, 135, 25, 18, '', 'Appleshiner', 1, 1, NULL),
(104, 'Man from deep, deep, dark, dark, deep, dark woods', 13, 'Snarling and Biting', 'The creature from the deep, deep, dark, dark, deep, dark woods is finally dead.', '', 467, 156, 135, 25, 18, '', 'Appleshiner', 1, 0, NULL),
(105, 'Devil in a Blue Dress', 13, 'Alluring Promises', 'You really prefer black dresses anyway.', '', 467, 156, 135, 25, 18, '', 'Appleshiner', 1, 1, NULL),
(106, 'Giant', 13, 'Smashing Club', 'Geeze, he almost fell on you!', NULL, 467, 156, 135, 25, 18, NULL, 'Appleshiner', 1, 0, NULL),
(107, 'Commander of the Eythgim Army', 13, 'Winning Tactics', 'You have bested their army by killing its master.', NULL, 467, 156, 135, 25, 18, NULL, 'Appleshiner', 1, 0, NULL),
(108, 'Ice Dragon', 13, 'Frost Breath', 'You defeated him, but caught a cold.', NULL, 467, 156, 135, 25, 18, NULL, 'Appleshiner', 1, 0, NULL),
(109, 'Pushmi Pullyew', 13, 'Conflictory Arguments', 'That strange creature couldn''t tell if it was coming or going.', NULL, 467, 156, 135, 25, 18, NULL, 'Appleshiner', 1, 0, NULL),
(110, 'Whale', 13, 'Tail', 'You know Violet isn''t going to believe a Whale attacked you in the forest.', '', 467, 156, 135, 25, 18, '', 'Appleshiner', 1, 0, NULL),
(111, 'Gorma The Leper', 13, 'Contagious Disease', 'It looks like the leper''s fighting strategy has fallen apart...', NULL, 467, 156, 135, 25, 18, NULL, 'foilwench', 1, 0, NULL),
(112, 'Samurai Master', 14, 'Daisho', 'You bow to the fallen master before you walk away.', '', 499, 172, 145, 27, 20, '', 'Appleshiner', 1, 0, NULL),
(113, 'Bartender', 14, 'Duck', 'That''s not a Duck!  It''s a Chicken!', NULL, 499, 172, 145, 27, 20, NULL, 'Appleshiner', 1, 0, NULL),
(114, 'Prince of Eythgim Village', 14, 'Bribes of Gold', 'You are not easily bribed, and he was a mortal enemy.', '', 499, 172, 145, 27, 20, '', 'Appleshiner', 1, 0, NULL),
(115, 'Loch Ness Monster', 14, 'Shocking Appearance', 'Why in the world would that monster be in this forest.  You must have been dreaming!', '', 499, 172, 145, 27, 20, '', 'Appleshiner', 1, 0, NULL),
(116, 'Fuzzie Wuzzie', 14, 'Male Pattern Baldness', 'Fuzzie Wuzzie wasn''t very fuzzie, was he?', NULL, 499, 172, 145, 27, 20, NULL, 'Appleshiner', 1, 0, NULL),
(117, 'Princess of Eythgim Village', 15, 'Beguiling Words', 'She tried to tempt you, but you resisted.', NULL, 531, 189, 155, 29, 21, NULL, 'Appleshiner', 1, 0, NULL),
(118, 'Ugly Harpy', 14, 'Poisonous Breath', 'Her breath was worse than her bite.', '', 499, 172, 145, 27, 20, '', 'Appleshiner', 1, 1, NULL),
(119, 'Field Mouse', 14, 'Chewing', 'That was some powerful mouse!', NULL, 499, 172, 145, 27, 20, NULL, 'Appleshiner', 1, 0, NULL),
(120, 'Monarch of Eythgim Village', 16, 'Royal Commands', 'I guess this makes you king of their Village.', NULL, 563, 207, 166, 31, 22, NULL, 'Appleshiner', 1, 0, NULL),
(121, 'Cyclops Warrior', 15, 'Fire Eye', 'The dead Cyclops'' one eye stares at you blankly.', NULL, 531, 189, 155, 29, 21, NULL, 'foilwench', 1, 0, NULL),
(122, 'Cupid', 15, 'Pink Arrows of Love', 'You have slain Cupid. You shall never find true love.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(123, 'Tabloid Writer', 15, 'Far-fetched Stories', 'If you ask me, SHE was the six-armed alien who gave birth to the world''s largest infant Elvis impersonator.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(124, 'Evil Wizard', 15, 'Tormented Souls', 'You have set the tortured souls free.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(125, 'Artemis, Goddess of the Hunt', 15, 'Winged Stags', 'The moon itself shall weep for the slain Artemis.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(126, 'Centaur Archer', 15, 'Deadly Marksmanship', 'The twisted man-beast lies still.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(127, 'Mime', 15, 'Something Imaginary', 'His death is a rather sad charade.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(128, 'Chili Chef', 15, 'Insanity Peppers', 'Man, that''s good chili!', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(129, 'Brownie', 16, 'Miniscule weapons', 'The tiny warrior dies with a faint squeal.', '', 563, 207, 166, 31, 22, '', 'Appleshiner', 1, 0, NULL),
(130, 'Darkness', 16, 'Self-induced Terror', 'You are afraid of the dark no longer.', '', 563, 207, 166, 31, 22, '', 'Appleshiner', 1, 1, NULL),
(131, 'Mountain King', 16, 'God-like Fury', 'The King has died, long live the King!', '', 563, 207, 166, 31, 22, '', 'Appleshiner', 1, 0, NULL),
(134, 'Loneliness', 17, 'Silence', 'What is the sound of one hand clapping?', 'What is the sound of one hand clapping?', 36, 0, 1, 0, 0, NULL, NULL, 1, 0, NULL),
(135, 'Loneliness', 18, 'Silence', 'What is the sound of one hand clapping?', 'What is the sound of one hand clapping?', 0, 0, 1, 0, 25, NULL, NULL, 1, 0, NULL),
(136, 'Le Chat dans le chapeau', 15, 'Rhyming Nonsense', 'In spanish, El Gato en el sombrero.', '', 531, 189, 155, 29, 21, '', 'Appleshiner', 1, 0, NULL),
(138, 'Whopper With Cheese', 8, 'Abundant Cholesterol', 'This is one whopper that won''t show up on your hips tomorrow.', NULL, 302, 89, 84, 15, 11, NULL, 'foilwench', 1, 0, NULL),
(139, 'Swarming Ladybugs', 3, 'Stinking Residue', 'Those Ladybugs weren''t very ladylike.', NULL, 148, 34, 32, 5, 4, NULL, 'foilwench', 1, 0, NULL),
(140, 'Football Fan', 6, 'Raucous Cheers', 'This fan doesn''t have much to cheer about.', NULL, 234, 66, 64, 11, 8, NULL, 'foilwench', 1, 0, NULL),
(141, 'King Agrippa', 13, 'Flaming Wingnuts', 'As you stare at his smoking corpse, you marvel at the ineffectiveness of flaming wingnuts.', NULL, 467, 156, 135, 25, 18, NULL, 'foilwench', 1, 0, NULL),
(142, 'Cherubically Charming Child', 1, 'Curious Questions', 'You think it was the alliteration that did him in.', NULL, 36, 14, 10, 1, 1, NULL, 'foilwench', 1, 0, NULL),
(143, 'Haberdasher', 5, 'Heavy Hat', 'Hats have gone out of style anyway.', NULL, 198, 55, 53, 9, 7, NULL, 'foilwench', 1, 0, NULL),
(144, 'Rush Hour Driver', 11, 'Road Rage', 'It was a no-win situation, speeding on these forest paths.  The driver had it coming.', NULL, 402, 127, 115, 21, 15, NULL, 'foilwench', 1, 0, NULL),
(145, 'Sorority Girl in Nightie', 7, 'Pillow Fighting Action', 'It''s too bad she''s dead... you liked her action.', '', 268, 77, 74, 13, 10, '', 'foilwench', 1, 0, NULL),
(146, 'Ulysses Wulfgang', 14, 'Ridiculous Lies', 'Death to lies!  Death to Ulysses Wulfgang!', '', 499, 172, 145, 27, 20, '', 'Joe', 1, 0, NULL),
(147, 'Crazy Audrey', 9, 'Ravenous Kittens', 'With a well placed stomp, Audrey and the kittens are no more.', NULL, 336, 101, 94, 17, 13, NULL, 'Appleshiner', 1, 0, NULL),
(148, 'Shining Happy People', 5, 'Hand Holding Terror', 'They just wanted to be your friend.  You meanie.', NULL, 198, 55, 53, 9, 7, NULL, 'foilwench', 1, 0, NULL),
(149, 'Elsabutt', 8, 'Gravitational Pull', 'This is indeed a grave situation.', '', 302, 89, 84, 15, 11, '', 'foilwench', 1, 0, NULL),
(150, 'Mr. Bear', 2, 'Overwhelming Sleepiness', 'Mr. Bear was too tired to finish playing with you and went back to napping.', '', 97, 24, 21, 3, 3, '', 'foilwench', 1, 0, NULL),
(151, 'Everquest Junkie', 12, '1337 Sp34k', 'D00d U pwned that guy!', NULL, 435, 141, 125, 23, 17, NULL, 'foilwench', 1, 0, NULL),
(152, 'Little Cocobean', 4, 'Her Special Roast', 'She really made your heart race and pound, but now she has crumbled to the ground', NULL, 162, 45, 43, 7, 6, NULL, 'Appleshiner', 1, 0, NULL),
(153, 'Humongous Hairball', 5, 'Incredible Drain-Clogging Power', 'The hairball and all its accompanying gook have been washed out to sea!', NULL, 198, 55, 53, 9, 7, NULL, 'foilwench', 1, 0, NULL),
(154, 'Iron Chef', 4, 'Sizzling Eel Flambe!', 'You have rendered the Chef Ironless!  He''s now simply a copper/tin alloy!', NULL, 162, 45, 43, 7, 6, NULL, 'foilwench', 1, 0, NULL),
(155, 'The Government', 7, 'Taxes', 'That''s a tax return you''ll be taking to the bank!', NULL, 268, 77, 74, 13, 10, NULL, 'Bluspring', 1, 0, NULL),
(156, 'Bar Fly', 1, 'Alcoholism', 'Good thing you got him before cirrhosis did!', NULL, 36, 14, 10, 1, 1, NULL, 'Bluspring', 1, 0, NULL),
(157, 'Methane Man', 7, 'Unfriendly Gasses', 'Must have been that bean he ate!', NULL, 268, 77, 74, 13, 10, NULL, 'foilwench', 1, 0, NULL),
(158, 'Wooly Mammoth', 8, 'Wildebeest Sidekick', 'You climb atop the Mammoth''s remains and declare yourself king (or queen) for a day!', NULL, 302, 89, 84, 15, 11, NULL, 'foilwench', 1, 0, NULL),
(159, 'Nasty Nevin', 10, 'Bossy Mom', 'Wrecked''em?  Darn near killed ''em!', NULL, 369, 114, 105, 19, 14, NULL, 'Joe', 1, 0, NULL),
(160, 'The Gar Man', 3, 'Jar of Cotton Balls', 'There is but one Gar Man!  And now he''s just fluff!', '', 148, 34, 32, 5, 4, '', 'foilwench', 1, 0, NULL),
(161, 'Hiker', 1, 'Walking Stick', 'His last words were "...I must protect the dragon."', '', 36, 14, 10, 1, 1, '', 'Appleshiner', 1, 0, NULL),
(162, 'Camper', 2, 'Marshmallow-roasting Stick', 'With her dying breath she gasps "...and I never saw the dragon."', NULL, 97, 24, 21, 3, 3, NULL, 'Appleshiner', 1, 0, NULL),
(163, 'Forest Ranger', 3, 'Hunting Rifle', 'In his pack you find a copy of "Dragon Seeking for Dummies."', '', 148, 34, 32, 5, 4, '', 'Appleshiner', 1, 0, NULL),
(164, 'Tree-Hugger', 4, 'Propaganda Leaflets', 'The leaflet reads "Who Will Protect The Helpless Dragon?"', '', 162, 45, 43, 7, 6, '', 'Appleshiner', 1, 0, NULL),
(165, 'Forest Dwelling Hermit', 5, 'Hand-Made Sling', 'He speaks only these words as he dies: "You must leave the Dragon''s Forest."', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 0, NULL),
(166, 'Member of Dragon Lovers Anonymous', 6, 'Stuffed Dragon Toy', 'When one wears a pin saying "Dragon Lovers Anonymous" they really are not as anonymous as they might think.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 0, NULL),
(167, 'Initiate Dragon Watcher', 7, 'Binoculars', 'All he could say was "Shhh, you are scaring the dragons!"', NULL, 268, 77, 74, 13, 10, NULL, 'Appleshiner', 1, 0, NULL),
(168, 'Dragon Watcher, Junior Class', 8, 'Annoyance', 'You find a dragon-watching textbook in his backpack.', NULL, 302, 89, 84, 15, 11, NULL, 'Appleshiner', 1, 0, NULL),
(169, 'Dragon-watcher Senior Class', 9, 'Spelunking Equipment', 'You find a copy of "Cave-Dwelling Dragons, and Where to Find Them" in his pack.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 0, NULL),
(170, 'Master Dragon Watcher', 10, 'Stealth', 'You wonder who watches the watchers.', '', 369, 114, 105, 19, 14, '', 'Appleshiner', 1, 0, NULL),
(171, 'Initiate Dragon Tamer', 11, '10-foot dragon pole', 'Good thing for you that pole only works on 10-foot dragons!', NULL, 402, 127, 115, 21, 15, NULL, 'Appleshiner', 1, 0, NULL),
(172, 'Junior Dragon Tamer', 12, 'Large Whip', 'If he cannot tell the difference between you and a dragon, he has much work to do.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 0, NULL),
(173, 'Senior Dragon Tamer', 13, 'Very Large Hoop', 'You regret killing him. You wanted to see him make a dragon jump through that hoop.', '', 467, 156, 135, 25, 18, '', 'Appleshiner', 1, 0, NULL),
(174, 'Master Dragon Tamer', 14, 'Tame Dragon', 'Once you killed the master, the dragon ran away', NULL, 499, 172, 145, 27, 20, NULL, 'Appleshiner', 1, 0, NULL),
(175, 'Dragon Rider in Training', 15, 'Mechanical Bull', 'They learn to ride dragons using a mechanical bull?', NULL, 531, 189, 155, 29, 21, NULL, 'Appleshiner', 1, 0, NULL),
(176, 'Dragon Rider', 16, 'Flying Dragon', 'A well-aimed strike grounds the flying dragon and his rider.', '', 563, 207, 166, 31, 22, '', 'Appleshiner', 1, 0, NULL),
(177, 'Batling', 1, 'Tiny flapping wings', 'Silly batling!', '', 36, 14, 10, 1, 1, '', 'Appleshiner', 1, 1, NULL),
(178, 'Small Bat', 2, 'Slightly venomous fangs', 'The small mammal falls to the ground lifeless.', '', 97, 24, 21, 3, 3, '', 'Appleshiner', 1, 1, NULL),
(179, 'Medium Sized Bat', 3, 'Screeching Cries', 'You killed it just to shut it up.', NULL, 148, 34, 32, 5, 4, NULL, 'Appleshiner', 1, 1, NULL),
(180, 'Large Bat', 4, 'Guano', 'You feel the need to take a bath.', '', 162, 45, 43, 7, 6, '', 'Appleshiner', 1, 1, NULL),
(181, 'Giant Bat', 5, 'Clinging and Biting', 'Why do movie bats always fly at people''s hair?', NULL, 198, 55, 53, 9, 7, NULL, 'Appleshiner', 1, 1, NULL),
(182, 'Vampire Batling', 6, 'Pricking teeth', 'He resembled a mosquito more than a vampire bat.', '', 234, 66, 64, 11, 8, '', 'Appleshiner', 1, 1, NULL),
(183, 'Small Vampire Bat', 7, 'Deadly Fangs', 'You kick at the annoying pest as it lies on the ground.', '', 268, 77, 74, 13, 10, '', 'Appleshiner', 1, 1, NULL),
(184, 'Medium Sized Vampire Bat', 8, 'Echoing Sounds', 'Who decides that this bat is a "Medium"?  Maybe he is a giant bat who hasn''t bloomed yet.', NULL, 302, 89, 84, 15, 11, NULL, 'Appleshiner', 1, 1, NULL),
(185, 'Huge Vampire Bat', 9, 'Blood-Sucking', 'You gave more blood to the Red Cross.', '', 336, 101, 94, 17, 13, '', 'Appleshiner', 1, 1, NULL),
(186, 'Vampire in Bat Form', 10, 'Bad Romanian Accent', '"I vant to suk your blooood!"', NULL, 369, 114, 105, 19, 14, NULL, 'Appleshiner', 1, 1, NULL),
(187, 'Vampire-Bat Prince', 11, 'Death Grip', 'You thought bats were Republicans.', '', 402, 127, 115, 21, 15, '', 'Appleshiner', 1, 1, NULL),
(188, 'Vampire Bat King', 12, 'Red Eyes', 'You decide to leave before the rest of the bats come to find their king.', '', 435, 141, 125, 23, 17, '', 'Appleshiner', 1, 1, NULL),
(189, 'Sorcerous Vampire', 13, 'Petrifying Spells', 'A cold shiver goes down your spine.  You would rather be with Violet.', '', 467, 156, 135, 25, 18, '', 'Appleshiner', 1, 1, NULL),
(219, 'Seductive Vampiress', 14, 'Sultry Moves', 'It was a shame to kill her.', NULL, 499, 172, 145, 27, 20, NULL, 'Appleshiner', 1, 1, NULL),
(220, 'Frenzied vampire bats', 15, 'Numerous attacks', 'Why are there so many darn bats in this forest?', NULL, 531, 189, 155, 29, 21, NULL, 'Appleshiner', 1, 1, NULL),
(221, 'Vampirus,the Bat God', 16, 'Godly Power', 'You are even more god-like then he!', '', 563, 207, 166, 31, 22, '', 'Appleshiner', 1, 1, NULL),
(222, 'Old Man Winter', 9, 'Bitter Cold', 'You shake your fist over his dead, pathetic corpse.', NULL, 336, 101, 94, 17, 13, NULL, NULL, 1, 0, NULL),
(223, 'Deranged Gnome', 1, 'A Cloth Draped Mirror', 'What happens when I do THIS?', NULL, 36, 14, 10, 1, 1, NULL, NULL, 1, 0, NULL),
(224, 'Water Sprite', 1, 'Burst of Water', 'That was refreshing.', NULL, 36, 14, 10, 1, 1, NULL, NULL, 1, 0, NULL),
(225, 'Water Nymph', 3, 'A torrent of water', 'I didn''t need a bath, thank you.', NULL, 148, 34, 32, 5, 4, NULL, NULL, 1, 0, NULL),
(226, 'Lady of the Lake', 10, 'Excalibur', 'Take that, you watery tart!', NULL, 369, 114, 105, 19, 14, NULL, NULL, 1, 0, NULL),
(227, 'Cunning Sapling', 1, 'Arrrr!', 'Ah Ha! A toothpick!', NULL, 36, 14, 10, 1, 1, NULL, NULL, 1, 0, NULL),
(228, 'Pirate Tree', 5, 'A loud ARRRRR!', 'Arrrrrr! indeed.', NULL, 198, 55, 53, 9, 7, NULL, NULL, 1, 0, NULL),
(229, 'Undead Centurion', 5, 'Bronze Spear', 'Hmm Not too good at combat the second time around, either.', NULL, 198, 55, 53, 9, 7, NULL, NULL, 1, 1, NULL),
(230, 'Insane Bard', 2, 'Iambic Pentameter', 'Slings and Arrows of outrageous fortune? Nope.  Just the can o'' Whoopass.', NULL, 97, 24, 21, 3, 3, NULL, NULL, 1, 0, NULL),
(231, 'Twig Man', 1, 'Brambles and Briars', 'I snapped him like a.. well, twig.', NULL, 36, 14, 10, 1, 1, NULL, 'Hank', 1, 0, NULL),
(232, 'Rabid Mouse', 1, 'Little Bitty Teeth', 'Those little teeth HURT!', NULL, 36, 14, 10, 1, 1, NULL, 'Hank', 1, 0, NULL),
(233, 'Stray Cat', 1, 'A Midnight Serenade', 'Finally! Peace in the night!', NULL, 36, 14, 10, 1, 1, NULL, 'Hank', 1, 0, NULL),
(234, 'Big Hairy Spider', 1, 'Sticky stringy webs', 'I *HATE* spiders!', NULL, 36, 14, 10, 1, 1, NULL, 'Hank', 1, 0, NULL),
(235, 'Goblin Lackey', 1, 'Dull Knife', 'Who knew goblins had lackeys?', NULL, 36, 14, 10, 1, 1, NULL, 'Hank', 1, 0, NULL),
(236, 'Crazy Chihuahua', 1, 'Fast food cravings', 'Here taco, taco, taco.', '', 36, 14, 10, 1, 1, '', 'Hank', 1, 0, NULL),
(237, 'Looney Rabbit', 1, 'Wisecracks', 'Th- Th- That''s all folks!', NULL, 36, 14, 10, 1, 1, NULL, 'Hank', 1, 0, NULL),
(238, 'Undead Oarsman', 1, 'Rotten Oar', 'Funny... I didn''t see any water around here.', '', 36, 14, 10, 1, 1, '', 'Hank', 1, 1, NULL),
(239, 'Lost Ghostling', 2, 'Sad Weeping', 'Well, I''m sure that helped him on his way...', '', 97, 24, 21, 3, 3, '', 'Hank', 1, 0, NULL),
(240, 'Angry Titmouse', 2, 'Incessant Chattering', 'You swat the little bird out of the air with little effort.', '', 97, 24, 21, 3, 3, '', 'Hank', 1, 0, NULL),
(241, 'Fabianist Youth Member', 2, 'Marxist Doctrine', 'Socialize THAT.', NULL, 97, 24, 21, 3, 3, NULL, 'Hank', 1, 0, NULL),
(242, 'Little Bogeyman', 2, 'Noises in the Dark', 'Hmm, not so scary when you have grown up...', '', 97, 24, 21, 3, 3, '', 'Hank', 1, 0, NULL),
(243, 'Big Bogeyman', 3, 'Fingers poking you as you sleep.', 'Ok... that was weird.  But not scary... Nope not at all... I think I''ll leave the light on at the inn tonight though.', '', 148, 34, 32, 5, 4, '', 'Hank', 1, 0, NULL),
(244, 'Coblynau', 2, 'Ill tempered tricks', 'Maybe I better leave him part of my lunch next time.', '', 97, 24, 21, 3, 3, '', 'Hank', 1, 0, NULL),
(245, 'Jack O''Lantern', 2, 'Eternal Wandering', 'The light has gone out of his life.', NULL, 97, 24, 21, 3, 3, NULL, 'Hank', 1, 0, NULL),
(246, 'Fresh Ghoul', 2, 'Long Pointed Nails', 'You leave him to the mercies of the other ghouls.', '', 97, 24, 21, 3, 3, '', 'Hank', 1, 1, NULL),
(247, 'Dry Skeleton', 2, 'a Rusty Dagger', 'The skeleton crumbles into a pile of dust.', NULL, 97, 24, 21, 3, 3, NULL, 'Hank', 1, 1, NULL),
(248, 'Newly Dead Zombie', 2, 'Fists', 'Maybe now it can rest in peace.', NULL, 97, 24, 21, 3, 3, NULL, 'Hank', 1, 1, NULL),
(249, 'Faerie hound', 2, 'Glowing Eyes', 'The embers in the eye sockets dim and sputter out.', NULL, 97, 24, 21, 3, 3, NULL, 'Hank', 1, 1, NULL),
(250, 'Apprentice Necromancer', 3, 'Life Draining Spells', 'He gasps a final breath and melts into a tarry liquid.', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 0, NULL),
(251, 'Doppleganger', 3, 'Shape changing', 'You kill the doppleganger and he returns to his true form.', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 0, NULL),
(252, 'Forest Thief', 3, 'Poisoned Short Sword', 'His pockets were almost empty. I guess he wasn''t much of a thief.', '', 148, 34, 32, 5, 4, '', 'Hank', 1, 0, NULL),
(253, 'Mouldy Skeleton', 3, 'Rotten Fists', 'Heeeeey, didn''t you see him in town last week?', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 1, NULL),
(254, 'Angry Fairy', 3, 'Furious Fairy Dust', 'He disappears in a cloud of fairy dust.', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 0, NULL),
(255, 'Goblin Hunter', 3, 'a Shortbow', 'Only one? Don''t they usually travel in packs?', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 0, NULL),
(256, 'Bobcat Cub', 3, 'Sharp Claws', 'Even the cute fuzzy kittens are evil in this place.', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 0, NULL),
(257, 'Animate Junkheap', 3, 'Stench of 1000 rotten potatoes', 'Just call you the De-Animator!', NULL, 148, 34, 32, 5, 4, NULL, 'Hank', 1, 0, NULL),
(258, 'Necromancer', 4, 'Strength Draining Touch', 'In a cloud of black smoke, his body wafts away on the breeze.', '', 162, 45, 43, 7, 6, '', 'Hank', 1, 0, NULL),
(259, 'Reed Golem', 4, 'Fists of Thorns', 'The only thing left was a tiny bale of hay.', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 0, NULL),
(260, 'Goblin Shaman', 4, 'Primitive Magic', '"Oooga Booga," indeed.', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 0, NULL),
(261, 'Steam Spirit', 4, 'Scalding Steam', 'Not so hot now, eh?', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 0, NULL),
(262, 'Restless Zombie', 4, 'Broken Longsword', 'Finally he is at peace.', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 1, NULL),
(263, 'Zombie Soldier', 4, 'Rusted Spear', 'His final orders were to march to hell.', '', 162, 45, 43, 7, 6, '', 'Hank', 1, 1, NULL),
(264, 'Dark Imp', 4, 'Nagging Doubts', 'The imp implodes in a ball of flame.', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 1, NULL),
(265, 'Giant Spider', 4, 'Fangs that glisten with poison', 'I really, really hate spiders.', '', 162, 45, 43, 7, 6, '', 'Hank', 1, 0, NULL),
(266, 'Undead Kitten', 4, 'Mews of Doom', 'Another evil cat sent to hell C.O.D.', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 1, NULL),
(267, 'Flying Dagger', 4, 'Sharpened Steel Point', 'The dagger shatters when it hits the ground.', NULL, 162, 45, 43, 7, 6, NULL, 'Hank', 1, 0, NULL),
(268, 'Goblin Warrior', 5, 'Bent Short Sword', 'Gone... and forgotten.', '', 198, 55, 53, 9, 7, '', 'Hank', 1, 0, NULL),
(269, 'Experienced Necromancer', 5, 'a small group of Zombies', 'The necromancer turns into a pile of black sand and blows away.', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(270, 'Flame Sprite', 5, 'Searing Flame', 'You cooled him off in a hurry...', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(271, 'Mud Man', 5, 'Enchanted Mud', 'Defeated, the Mud Man dries up in the warm sun.', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(272, 'Lupe the Hypnotic Chihuahua', 5, 'The stare of doom', 'You manage to break free of those deep hypnotic eyes...', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(273, 'Ghoul', 5, 'Hunger for Flesh', 'The ghoul falls to the ground, a bit of flesh between his teeth.', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 1, NULL),
(274, 'Seedy Cutthroat', 5, 'Sharpened Daggers', 'One more bandit removed from this forest.', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(275, 'Ogre', 5, 'Broken treebranch', 'Boy, thats a face not even a mother could love.', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(276, 'Crazy Woodsman', 5, 'Dull axe', 'Chopped him down to size...', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(277, 'Flying Drakeling', 5, 'a Lashing Tail', 'You swat the small, majestic beast out of the air.', NULL, 198, 55, 53, 9, 7, NULL, 'Hank', 1, 0, NULL),
(278, 'Forest Cat', 6, 'Menacing Claws', 'Here kitty, kitty, kitty.', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 0, NULL),
(279, 'Journeyman Necromancer', 6, 'An Undead Giant', 'The necromancer drifts away on a cloud of black smoke.', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 0, NULL),
(280, 'Frigid Skeleton', 6, 'The Cold of the Grave', 'I''ll bet one of these guys could cool ale at the inn.', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 1, NULL),
(281, 'Frost Spirit', 6, 'Bone Chilling Cold', 'Puttin down another cold one.', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 0, NULL),
(282, 'Dragon Slayer''s ghost', 6, 'Warnings of Doom', 'Everybody wondered what happened to him.', NULL, 234, 66, 64, 11, 8, NULL, 'Hank', 1, 0, NULL),
(283, 'Ettin Mage', 6, 'Double threat spells', 'Two heads are not better than one in this case.  Just more to lop off.', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 0, NULL),
(284, 'Insane Brownie', 6, 'Faerie spells', 'This one''s nuts!', NULL, 234, 66, 64, 11, 8, NULL, 'Hank', 1, 0, NULL),
(285, 'Ghostly Wolfpack', 6, 'Ghostly Howls', 'Quiet settles in around you.  Finally.', NULL, 234, 66, 64, 11, 8, NULL, 'Hank', 1, 1, NULL),
(286, 'Wood Golem', 6, 'Oaken Fists', 'The truth gave you life and the truth set you free.', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 0, NULL),
(287, 'Diseased Ent', 6, 'Twisted Branches', 'There must be fifty ways to cut your lumber. (Groan)', '', 234, 66, 64, 11, 8, '', 'Hank', 1, 0, NULL),
(288, 'Dark Druid', 7, 'Corrupted Nature', 'He lost me at the corrupt it to save it part.', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 0, NULL),
(289, 'Lizard Man Scout', 7, 'Marginal Archery', 'I know where I can get him made into a nice pair of boots.', '', 268, 77, 74, 13, 10, '', 'Hank', 1, 0, NULL),
(290, 'Diabolic Footman', 7, 'A Demon Forged Mace', 'His armor sizzles and he melts as he crumples to the ground.', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 1, NULL),
(291, 'Gargantuan Tree Spider', 7, 'Projectile Webbing', 'After you lop him in half, you realize he''s not so big.', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 0, NULL),
(292, 'Flaming Zombie', 7, 'Fists covered in Flame', 'You extinguish the flame of life and the zombie falls to the ground, smoking.', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 1, NULL),
(293, 'Eldritch Wizard', 7, 'Spells of Darkness', 'You slice him in two only to watch his body disappear, leaving an empty robe behind.', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 0, NULL),
(294, 'Master Necromancer', 7, 'An Army of the Dead', 'You kill the necromancer and his minions disintegrate before your eyes.', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 0, NULL),
(295, 'Animate Darkness', 7, 'The Darkness of a Thousand Nights', 'Light Slowly returns to this part of the forest.', '', 268, 77, 74, 13, 10, '', 'Hank', 1, 1, NULL),
(296, 'Temple Guardian Statue', 7, 'Marble Fists', 'So, where''s the temple?', NULL, 268, 77, 74, 13, 10, NULL, 'Hank', 1, 0, NULL),
(297, 'Owlbear', 7, 'Claws and a bearhug', 'I don''t even want to know how they breed these.', '', 268, 77, 74, 13, 10, '', 'Hank', 1, 0, NULL),
(298, 'The Man In Black', 8, 'Necromantic Spells', 'Finally, I got my chance to kill him.', '', 302, 89, 84, 15, 11, '', 'Hank', 1, 0, NULL),
(299, 'Gnome Illusionist', 8, 'Fearsome Illusions', 'It was all in his head.', '', 302, 89, 84, 15, 11, '', 'Hank', 1, 0, NULL),
(300, 'Demon Skeleton', 8, 'Diabolic Runes', 'The spirits of its victims drag the skeleton back to hell.', '', 302, 89, 84, 15, 11, '', 'Hank', 1, 1, NULL),
(301, 'Insane Master Druid', 8, 'The land Itself', 'His evil laughter dies with him.', NULL, 302, 89, 84, 15, 11, NULL, 'Hank', 1, 0, NULL),
(302, 'Water Elementalist', 8, 'Water Based Spells', 'He''s all wet.', NULL, 302, 89, 84, 15, 11, NULL, 'Hank', 1, 0, NULL),
(303, 'Earth Elementalist', 8, 'Earth Based Spells', 'He fought kind of Dirty.', '', 302, 89, 84, 15, 11, '', 'Hank', 1, 0, NULL),
(304, 'Ettin Warrior', 8, 'Two Clubs of Iron', 'They did all right until they hit each other.', NULL, 302, 89, 84, 15, 11, NULL, 'Hank', 1, 0, NULL),
(305, 'Forest Giant', 8, 'An Uprooted Tree', 'Ho, Ho, Ho that, green man.', NULL, 302, 89, 84, 15, 11, NULL, 'Hank', 1, 0, NULL),
(306, 'Demoniac Knight', 8, 'A Diabolic Lance', 'Good night, Sir Knight.', '', 302, 89, 84, 15, 11, '', 'Hank', 1, 1, NULL),
(307, 'Giant Zombie', 8, 'Gigantic Fists', 'They DO smell worse when they are bigger!', NULL, 302, 89, 84, 15, 11, NULL, 'Hank', 1, 1, NULL),
(308, 'Frost Spectre', 9, 'The Chill Touch of the Grave', 'As you recover from the fight, the Spectre melts away into the shadows.', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 1, NULL),
(309, 'Small Forest Dragon', 9, 'Snapping Jaws', 'Dragon? Check. Green? Check.  Huge? Nope.', '', 336, 101, 94, 17, 13, '', 'Hank', 1, 0, NULL),
(310, 'A Pack of Carnivorous Lemurs', 9, 'Hoots and Howls', 'What the heck is a Lemur??', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 0, NULL),
(311, 'Albino Crypt Bear', 9, 'Foul Stench and Claws', 'You dispatch the bear and wonder if there are more lurking about.', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 0, NULL),
(312, 'Black Knight of The Vale', 9, 'Ebony Sword', 'As he dies, he curses you and tells you that you will never defeat the dragon.', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 0, NULL),
(313, 'Elmearian Spy', 9, 'Small Dagger', 'He eats his information before he dies, so you learn nothing from him.', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 0, NULL),
(314, 'Stalking Shadow', 9, 'Fingers of Darkness', 'You send the ceature back to where it came from.', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 1, NULL),
(315, 'Necromantic Archmagus', 9, 'Screams of a Thousand Souls', 'With his dying breath he explodes into a pillar of black flame!', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 0, NULL),
(316, 'Iron Golem', 9, 'Rusted Fists', 'The golem seizes up and you push him over.', '', 336, 101, 94, 17, 13, '', 'Hank', 1, 0, NULL),
(317, 'A Hell Hound', 9, 'Fiery Breath', 'He bursts into flames and is sucked into the earth.', NULL, 336, 101, 94, 17, 13, NULL, 'Hank', 1, 1, NULL),
(318, 'Corporate Lackey', 7, 'Buzzwords', 'Well, you sure reprioritized his downsizing.', NULL, 268, 77, 74, 13, 10, NULL, 'Moonchilde', 1, 0, NULL),
(319, 'SCO Lawyer', 8, 'Court Papers', 'There''s one lawyer who''ll never trouble you again!', NULL, 302, 89, 84, 15, 11, NULL, 'Moonchilde', 1, 1, NULL),
(320, 'Gypsy Bandit', 14, 'Gemmed Dagger', 'That will put an end to his thieving days.', 'You''re dead, he''s free to take what he will.', 499, 172, 145, 27, 20, 'global $badguy, $session;\r\n\r\nif (!isset($badguy[''spellpoints''])) {\r\n	$badguy[''spellpoints''] = 1;\r\n}\r\n\r\n$gold = round($session[''user''][''gold''] * 0.2);\r\nif (e_rand(0,7) == 0 && $gold > 200 && $badguy[''spellpoints''] == 1) {\r\n	rawoutput("<br /><b><span style=''color: white''>The pickpocket takes <span style=''color: gold''>$gold gold</span>!</span></b><br /><br />");\r\n	$session[''user''][''gold''] -= $gold;\r\n	$badguy[''creaturegold''] += $gold;\r\n	$badguy[''spellpoints'']--;\r\n}', 'Talisman', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `free_debuglog`
--

CREATE TABLE IF NOT EXISTS `free_debuglog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actor` int(11) unsigned DEFAULT NULL,
  `target` int(11) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `field` varchar(20) NOT NULL,
  `value` float(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `field` (`actor`,`field`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `free_debuglog`
--

INSERT INTO `free_debuglog` (`id`, `date`, `actor`, `target`, `message`, `field`, `value`) VALUES
(1, '2011-11-05 18:05:54', 1, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0', '', 0.00),
(2, '2011-11-05 18:10:21', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Race (human): 2', '', 0.00),
(3, '2011-11-05 18:11:08', 1, 2, '`%Admin `&administrator`0`0 changed player name to Cousjava`0', '', 0.00),
(4, '2011-11-05 18:11:08', 1, 2, '`%Admin `&administrator`0`0 changed superuser to 10000000000000000000000000000000', '', 0.00),
(5, '2011-11-05 19:11:42', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(6, '2011-11-05 19:12:34', 2, 2, 'Cousjava`0 changed player name to Cousjava`0', '', 0.00),
(7, '2011-11-05 19:12:34', 2, 2, 'Cousjava`0 changed superuser to 11111111111111111111110111100000', '', 0.00),
(8, '2011-11-05 19:21:32', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Race (human): 2', '', 0.00),
(9, '2011-11-05 19:23:59', 2, 0, 'received gold for slaying a monster. (1)', 'forestwin', 1.00),
(10, '2011-11-05 19:24:08', 2, 0, 'spent gold on healing (0)', 'healing', 0.00),
(11, '2011-11-05 19:29:45', 2, 0, 'found 1 gems in the goldmine', '', 0.00),
(12, '2011-11-05 19:30:13', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(13, '2011-11-05 19:31:15', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Race (human): 2', '', 0.00),
(14, '2011-11-05 19:31:26', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(15, '2011-11-05 19:31:28', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(16, '2011-11-05 19:31:55', 2, 0, 'gave 1 gem to Foilwench', '', 0.00),
(17, '2011-11-05 19:33:06', 2, 2, 'Cousjava`0 changed player name to Cousjava`0', '', 0.00),
(18, '2011-11-05 19:33:06', 2, 2, 'Cousjava`0 changed gems to 9999', '', 0.00),
(19, '2011-11-05 19:33:06', 2, 2, 'Cousjava`0 changed gold to 10000', '', 0.00),
(20, '2011-11-05 19:33:06', 2, 2, 'Cousjava`0 changed goldinbank to 10000', '', 0.00),
(21, '2011-11-05 19:33:06', 2, 2, 'Cousjava`0 changed weapondmg to 100', '', 0.00),
(22, '2011-11-05 19:33:06', 2, 2, 'Cousjava`0 changed armordef to 600', '', 0.00),
(23, '2011-11-05 19:33:24', 2, 0, 'gave 1 gem to Foilwench', '', 0.00),
(24, '2011-11-05 19:33:32', 2, 0, 'gave 1 gem to Foilwench', '', 0.00),
(25, '2011-11-05 19:33:39', 2, 0, 'gave 1 gem to a fairy', '', 0.00),
(26, '2011-11-05 19:33:39', 2, 0, 'found 2 gem from a fairy', '', 0.00),
(27, '2011-11-05 19:34:22', 2, 0, 'has started a new clan (<MOD> Ministry of Defense) for 10000 gold and 15 gems.', '', 0.00),
(28, '2011-11-05 19:35:14', 2, 0, 'deposited 1000 gems in the clan bank', '', 0.00),
(29, '2011-11-05 19:39:40', 2, 2, 'Cousjava`0 changed player name to Cousjava`0', '', 0.00),
(30, '2011-11-05 19:39:40', 2, 2, 'Cousjava`0 changed gems to 89830', '', 0.00),
(31, '2011-11-05 19:39:40', 2, 2, 'Cousjava`0 changed gold to 10000', '', 0.00),
(32, '2011-11-05 19:40:01', 2, 0, 'deposited 2000 gems in the clan bank', '', 0.00),
(33, '2011-11-05 19:40:43', 2, 0, 'deposited 10000 gems in the clan bank', '', 0.00),
(34, '2011-11-05 19:41:31', 2, 0, 'deposited 10000 gems in the clan bank', '', 0.00),
(35, '2011-11-05 19:42:47', 2, 0, 'deposited 2500 gems in the clan bank', '', 0.00),
(36, '2011-11-05 19:43:44', 2, 0, 'deposited 2000 gems in the clan bank', '', 0.00),
(37, '2011-11-05 19:44:03', 2, 0, 'deposited 10000 gems in the clan bank', '', 0.00),
(38, '2011-11-05 19:45:02', 2, 0, 'deposited 5000 gems in the clan bank', '', 0.00),
(39, '2011-11-05 19:45:40', 2, 0, 'deposited 2000 gems in the clan bank', '', 0.00),
(40, '2011-11-05 19:46:01', 2, 0, 'deposited 2000 gems in the clan bank', '', 0.00),
(41, '2011-11-05 19:46:21', 2, 0, 'deposited 1500 gems in the clan bank', '', 0.00),
(42, '2011-11-05 19:47:31', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Race (human): 2', '', 0.00),
(43, '2011-11-05 19:47:40', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(44, '2011-11-05 19:47:42', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(45, '2011-11-06 20:13:09', 2, 0, 'New Day Turns: Base: 10, Spirits: 2, DK: 0, Race (human): 2', '', 0.00),
(46, '2011-11-06 20:52:56', 2, 0, 'spent 0 gold and spent 16 gems trading  for a new mount, a Stallion', '', 0.00),
(47, '2011-11-07 16:59:58', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Mount: 3, Race (human): 2', '', 0.00),
(48, '2011-12-27 12:36:37', 2, 0, 'New Day Turns: Base: 10, Spirits: -2, DK: 0, Mount: 3, Race (human): 2', '', 0.00),
(49, '2011-12-27 12:36:57', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(50, '2011-12-27 12:36:59', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(51, '2011-12-27 12:49:59', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(52, '2011-12-27 12:50:50', 2, 0, 'received gold for slaying a monster. (31)', 'forestwin', 31.00),
(53, '2011-12-27 13:49:44', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(54, '2011-12-27 19:06:54', 2, 0, 'New Day Turns: Base: 10, Spirits: 2, DK: 0, Mount: 3, Race (human): 2', '', 0.00),
(55, '2011-12-28 15:06:26', 2, 0, 'New Day Turns: ', '', 0.00),
(56, '2011-12-28 15:06:36', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(57, '2011-12-28 15:06:37', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(58, '2011-12-28 16:28:46', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Mount: 3, Race (human): 2', '', 0.00),
(59, '2011-12-28 16:29:00', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(60, '2011-12-28 16:29:01', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(61, '2012-02-19 18:32:34', 2, 0, 'New Day Turns: ', '', 0.00),
(62, '2012-02-19 18:36:02', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(63, '2012-02-19 23:20:22', 2, 0, 'received gold for slaying a monster. (30) (9) (4) (24) (20)', 'forestwin', 87.00),
(64, '2012-02-19 18:48:08', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(65, '2012-02-19 18:48:12', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(66, '2012-02-19 19:17:30', 2, 0, 'found 1 gems in the goldmine', '', 0.00),
(67, '2012-02-19 20:57:34', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Mount: 3, Race (human): 2', '', 0.00),
(68, '2012-02-19 23:15:47', 2, 0, 'found gem when slaying a monster. (1)', 'forestwingem', 1.00),
(69, '2012-02-19 23:20:06', 2, 0, 'spent 9000 gold on the Sharp Steel Wood-chopping Axe weapon', '', 0.00),
(70, '2012-02-19 23:20:45', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(71, '2012-02-19 23:20:59', 2, 0, 'spent 990 gold on the Homespun Undershirt armor', '', 0.00),
(72, '2012-02-20 16:25:59', 2, 0, 'New Day Turns: ', '', 0.00),
(73, '2012-02-20 16:45:31', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(74, '2012-02-20 17:18:18', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(75, '2012-02-20 17:18:21', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(76, '2012-02-20 17:19:00', 2, 0, 'received gold for slaying a monster. (26)', 'forestwin', 26.00),
(77, '2012-02-20 22:01:43', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Mount: 3', '', 0.00),
(78, '2012-02-20 22:04:31', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(79, '2012-03-24 15:36:29', 2, 0, 'New Day Turns: ', '', 0.00),
(80, '2012-03-24 16:05:29', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Mount: 3', '', 0.00),
(81, '2012-03-24 16:40:43', 2, 0, 'spent 5 gold to use the outhouse', '', 0.00),
(82, '2012-03-24 16:40:44', 2, 0, 'got 3 gold in the outhouse for washing', '', 0.00),
(83, '2012-03-30 11:07:03', 2, 0, 'New Day Turns: ', '', 0.00),
(84, '2012-03-30 15:59:49', 2, 0, 'New Day Turns: ', '', 0.00),
(85, '2012-03-30 16:48:28', 1, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0', '', 0.00),
(86, '2012-03-30 18:07:35', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Mount: 3', '', 0.00),
(87, '2012-03-30 19:27:26', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(88, '2012-03-30 22:44:05', 2, 0, 'New Day Turns: Base: 10, Spirits: 1, DK: 0, Mount: 3', '', 0.00),
(89, '2012-03-31 16:07:41', 2, 0, 'New Day Turns: ', '', 0.00),
(90, '2012-03-31 17:06:37', 2, 0, 'received gold for slaying a monster. (21) (24) (30)', 'forestwin', 75.00),
(91, '2012-03-31 16:52:08', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Mount: 3', '', 0.00),
(92, '2012-03-31 16:54:47', 2, 0, 'New Day Turns: Base: 10, Spirits: -2, DK: 0, Mount: 3', '', 0.00),
(93, '2012-03-31 16:55:45', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Mount: 3', '', 0.00),
(94, '2012-03-31 16:59:15', 2, 0, 'New Day Turns: Base: 10, Spirits: 2, DK: 0, Mount: 3', '', 0.00),
(95, '2012-03-31 17:05:03', 2, 0, 'New Day Turns: Base: 10, Spirits: -2, DK: 0, Mount: 3', '', 0.00),
(96, '2012-03-31 17:10:50', 2, 2, 'Cousjava`0 changed player name to Cousjava`0', '', 0.00),
(97, '2012-04-01 17:38:33', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Mount: 3', '', 0.00),
(98, '2012-04-05 13:46:45', 2, 0, 'New Day Turns: ', '', 0.00),
(99, '2012-04-05 13:46:53', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(100, '2012-04-05 14:20:10', 2, 0, 'Challenged master, setting seenmaster to 1', '', 0.00),
(101, '2012-04-05 14:20:10', 2, 0, 'Defeated master, setting seenmaster to 0', '', 0.00),
(102, '2012-04-05 17:22:17', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Mount: 3', '', 0.00),
(103, '2012-04-05 18:36:00', 2, 0, 'spent 5 gold to pet audrey''s pets', '', 0.00),
(104, '2012-04-08 18:30:29', 2, 0, 'New Day Turns: ', '', 0.00),
(105, '2012-04-08 20:11:42', 2, 0, 'received gold for slaying a monster. (24) (64) (36) (78)', 'forestwin', 202.00),
(106, '2012-04-09 13:49:48', 2, 0, 'New Day Turns: Base: 10, Spirits: -1, DK: 0, Mount: 3', '', 0.00),
(107, '2012-04-09 17:57:32', 2, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0, Mount: 3', '', 0.00),
(108, '2012-04-09 18:52:52', 2, 0, 'deposited 607 gold in the bank', '', 0.00),
(109, '2012-04-09 18:54:19', 2, 0, 'gave 1 gem to a fairy', '', 0.00),
(110, '2012-04-09 18:54:19', 2, 0, 'found 2 gem from a fairy', '', 0.00),
(111, '2012-04-09 19:11:25', 2, 0, 'found 62 gold and 1 gems in the goldmine', '', 0.00),
(112, '2012-04-09 19:11:33', 2, 0, 'found 1 gems in the goldmine', '', 0.00),
(113, '2012-04-09 19:42:40', 2, 0, 'New Day Turns: ', '', 0.00),
(114, '2012-04-09 19:56:19', 1, 0, 'New Day Turns: Base: 10, Spirits: 0, DK: 0', '', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `free_drinks`
--

CREATE TABLE IF NOT EXISTS `free_drinks` (
  `drinkid` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `costperlevel` int(11) NOT NULL DEFAULT '0',
  `hpchance` tinyint(4) NOT NULL DEFAULT '0',
  `turnchance` tinyint(4) NOT NULL DEFAULT '0',
  `alwayshp` tinyint(4) NOT NULL DEFAULT '0',
  `alwaysturn` tinyint(4) NOT NULL DEFAULT '0',
  `drunkeness` tinyint(4) NOT NULL DEFAULT '0',
  `harddrink` tinyint(4) NOT NULL DEFAULT '0',
  `hpmin` int(11) NOT NULL DEFAULT '0',
  `hpmax` int(11) NOT NULL DEFAULT '0',
  `hppercent` int(11) NOT NULL DEFAULT '0',
  `turnmin` int(11) NOT NULL DEFAULT '0',
  `turnmax` int(11) NOT NULL DEFAULT '0',
  `remarks` text NOT NULL,
  `buffname` varchar(50) NOT NULL DEFAULT '',
  `buffrounds` tinyint(4) NOT NULL DEFAULT '0',
  `buffroundmsg` varchar(75) NOT NULL DEFAULT '',
  `buffwearoff` varchar(75) NOT NULL DEFAULT '',
  `buffatkmod` text NOT NULL,
  `buffdefmod` text NOT NULL,
  `buffdmgmod` text NOT NULL,
  `buffdmgshield` text NOT NULL,
  `buffeffectfailmsg` varchar(255) NOT NULL DEFAULT '',
  `buffeffectnodmgmsg` varchar(255) NOT NULL DEFAULT '',
  `buffeffectmsg` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`drinkid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `free_drinks`
--

INSERT INTO `free_drinks` (`drinkid`, `name`, `active`, `costperlevel`, `hpchance`, `turnchance`, `alwayshp`, `alwaysturn`, `drunkeness`, `harddrink`, `hpmin`, `hpmax`, `hppercent`, `turnmin`, `turnmax`, `remarks`, `buffname`, `buffrounds`, `buffroundmsg`, `buffwearoff`, `buffatkmod`, `buffdefmod`, `buffdmgmod`, `buffdmgshield`, `buffeffectfailmsg`, `buffeffectnodmgmsg`, `buffeffectmsg`) VALUES
(1, 'Ale', 1, 10, 2, 1, 0, 0, 33, 0, 0, 0, 10, 1, 1, 'Cedrik pulls out a glass, and pours a foamy ale from a tapped barrel behind him.  He slides it down the bar, and you catch it with your warrior-like reflexes.`n`nTurning around, you take a big chug of the hearty draught, and give {lover} an ale-foam mustache smile.`n`n', '`#Buzz', 10, 'You''ve got a nice buzz going.', 'Your buzz fades.', '1.25', '0', '0', '0', '', '', ''),
(2, 'Habanero Martini', 1, 15, 0, 0, 1, 1, 50, 1, -5, 15, 0, -1, 1, 'Cedrik pulls out a bottle labeled with 3 X''s and a chile pepper and pours a miniscule shot into your glass.  You toss it back and grimace as smoke floods out of your ears.', '`$Hot Hands', 12, 'You feel like your hands are about to burn off.', 'Finally, your hands are no longer burning.', '1.1', '.9', '1.5', '0', '', '', ''),
(3, 'Mule Daniels', 1, 25, 2, 3, 0, 0, 50, 1, -10, -1, 0, 1, 3, 'Cedrik drags a large pony-keg out from behind the bar and pours a slug into a cast iron cup which rattles as the thick liquid is poured into it.  You toss it back in a gulp and make a face like a mule kicked you hard in the gut.  From across the room, you hear {lover} laugh at you.', '`#Mulekick', 15, 'You hear a donkey braying in the distance', 'That donkey finally shuts up.', '0', '0', '1.3', '1.3', 'Your head rings as the donkey kicks you instead.', 'That mule would have kicked {badguy} to the moon, but it missed!', '{badguy} sees`$ {damage}`) stars as the mule kicks him over the moon.');

-- --------------------------------------------------------

--
-- Table structure for table `free_faillog`
--

CREATE TABLE IF NOT EXISTS `free_faillog` (
  `eventid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post` tinytext NOT NULL,
  `ip` varchar(40) NOT NULL,
  `acctid` int(11) unsigned DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`eventid`),
  KEY `date` (`date`),
  KEY `acctid` (`acctid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_faillog`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_gamelog`
--

CREATE TABLE IF NOT EXISTS `free_gamelog` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `filed` tinyint(4) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `who` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `date` (`category`,`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=463 ;

--
-- Dumping data for table `free_gamelog`
--

INSERT INTO `free_gamelog` (`logid`, `message`, `category`, `filed`, `date`, `who`) VALUES
(1, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2011-11-05 18:05:54', 1),
(2, 'Cleaned up 0 from free_debuglog older than 2011-10-18 18:05:54.', 'maintenance', 0, '2011-11-05 18:05:54', 1),
(3, 'Cleaned up free_gamelog table removing 0 older than 2011-10-05 18:05:54.', 'maintenance', 0, '2011-11-05 18:05:54', 1),
(4, 'Deleted 0 old comments.', 'comment expiration', 0, '2011-11-05 18:05:54', 1),
(5, 'Deleted 0 old moderated comments.', 'comment expiration', 0, '2011-11-05 18:05:54', 1),
(6, '`@Changed core setting `^showFormTabIndex`@ from `#`@ to `&6`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(7, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(8, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(9, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(10, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(11, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(12, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:38', 2),
(13, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(14, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(15, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(16, '`@Changed core setting `^allowoddadminrenames`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(17, '`@Changed core setting `^selfdelete`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(18, '`@Changed core setting `^villagename`@ from `#Degolburg`@ to `&Improbable Central`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(19, '`@Changed core setting `^innname`@ from `#The Boar''s Head Inn`@ to `&The Prancing Spiderkitty`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(20, '`@Changed core setting `^barkeep`@ from `#`tCedrik`@ to `&`tDan`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(21, '`@Changed core setting `^barmaid`@ from `#`%Violet`@ to `&`%Emily`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(22, '`@Changed core setting `^deathoverlord`@ from `#`$Ramius`@ to `&`$The Watcher`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(23, '`@Changed core setting `^villagechance`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(24, '`@Changed core setting `^innchance`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(25, '`@Changed core setting `^gravechance`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(26, '`@Changed core setting `^gardenchance`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(27, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:14:39', 2),
(28, '`@Changed core setting `^paypalcountry-code`@ from `#us`@ to `&US`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(29, '`@Changed core setting `^autofight`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(30, '`@Changed core setting `^autofightfull`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(31, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(32, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(33, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(34, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(35, '`@Changed core setting `^multibasemin`@ from `#2`@ to `&1`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(36, '`@Changed core setting `^multibasemax`@ from `#3`@ to `&1`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(37, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(38, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(39, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(40, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(41, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(42, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(43, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(44, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(45, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(46, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(47, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(48, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:14:40', 2),
(49, '`@Changed core setting `^showFormTabIndex`@ from `#6`@ to `&8`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(50, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(51, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(52, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(53, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(54, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(55, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(56, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(57, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(58, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(59, '`@Changed core setting `^villagechance`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(60, '`@Changed core setting `^innchance`@ from `#`@ to `&5`0', 'settings', 0, '2011-11-05 19:15:00', 2),
(61, '`@Changed core setting `^gravechance`@ from `#`@ to `&2`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(62, '`@Changed core setting `^gardenchance`@ from `#`@ to `&2`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(63, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(64, '`@Changed core setting `^autofight`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(65, '`@Changed core setting `^autofightfull`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(66, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(67, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(68, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(69, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(70, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(71, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(72, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(73, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(74, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(75, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(76, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(77, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(78, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(79, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(80, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(81, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:01', 2),
(82, '`@Changed core setting `^showFormTabIndex`@ from `#8`@ to `&10`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(83, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(84, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(85, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(86, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(87, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(88, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(89, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(90, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(91, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(92, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(93, '`@Changed core setting `^autofight`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(94, '`@Changed core setting `^autofightfull`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(95, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(96, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:15', 2),
(97, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(98, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(99, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(100, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(101, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(102, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(103, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(104, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(105, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(106, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(107, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(108, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(109, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(110, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:16', 2),
(111, '`@Changed core setting `^showFormTabIndex`@ from `#10`@ to `&13`0', 'settings', 0, '2011-11-05 19:15:44', 2),
(112, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:44', 2),
(113, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:44', 2),
(114, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:44', 2),
(115, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:44', 2),
(116, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:44', 2),
(117, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(118, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(119, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(120, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(121, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(122, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(123, '`@Changed core setting `^daysperday`@ from `#4`@ to `&6`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(124, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(125, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(126, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(127, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(128, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(129, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(130, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(131, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(132, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(133, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(134, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(135, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(136, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(137, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(138, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:15:45', 2),
(139, '`@Changed core setting `^showFormTabIndex`@ from `#13`@ to `&17`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(140, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(141, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(142, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(143, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(144, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(145, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(146, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(147, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(148, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(149, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(150, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(151, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(152, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(153, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(154, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(155, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(156, '`@Changed core setting `^companionsallowed`@ from `#1`@ to `&2`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(157, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(158, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:07', 2),
(159, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(160, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(161, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(162, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(163, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(164, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(165, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(166, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:08', 2),
(167, '`@Changed core setting `^showFormTabIndex`@ from `#17`@ to `&20`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(168, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(169, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(170, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(171, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(172, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(173, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(174, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(175, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(176, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:27', 2),
(177, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(178, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(179, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(180, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(181, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(182, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(183, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(184, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(185, '`@Changed core setting `^pvp`@ from `#1`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(186, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(187, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(188, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(189, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(190, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(191, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(192, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(193, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(194, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:28', 2),
(195, '`@Changed core setting `^showFormTabIndex`@ from `#20`@ to `&21`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(196, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(197, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(198, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(199, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(200, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(201, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(202, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(203, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(204, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(205, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(206, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(207, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(208, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(209, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(210, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(211, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(212, '`@Changed core setting `^allowgoldtransfer`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(213, '`@Changed core setting `^expirecontent`@ from `#180`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(214, '`@Changed core setting `^expiretrashacct`@ from `#1`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(215, '`@Changed core setting `^expirenewacct`@ from `#10`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:51', 2),
(216, '`@Changed core setting `^expireoldacct`@ from `#45`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(217, '`@Changed core setting `^LOGINTIMEOUT`@ from `#900`@ to `&3600`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(218, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(219, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(220, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(221, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(222, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(223, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(224, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(225, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(226, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2011-11-05 19:16:52', 2),
(227, '`@Changed module(`5onslaught`@) setting `^showFormTabIndex`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:37:45', 2),
(228, '`@Changed module(`5onslaught`@) setting `^spawnrate`@ from `#100`@ to `&50`0', 'settings', 0, '2011-11-05 19:37:46', 2),
(229, '`@Changed module(`5onslaught`@) setting `^testmode`@ from `#1`@ to `&0`0', 'settings', 0, '2011-11-05 19:37:46', 2),
(230, '`@Changed module(`5onslaught`@) setting `^damagemultiplier`@ from `#1.0`@ to `&0`0', 'settings', 0, '2011-11-05 19:37:46', 2),
(231, '`@Changed module(`5darkhorse`@) setting `^showFormTabIndex`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:38:05', 2),
(232, '`@Changed module(`5darkhorse`@) setting `^tavernname`@ from `#Dark Horse Tavern`@ to `&Raven Inn`0', 'settings', 0, '2011-11-05 19:38:05', 2),
(233, '`@Changed module(`5clanbuffs`@) setting `^showFormTabIndex`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-05 19:38:48', 2),
(234, '`@Changed module(`5clanbuffs`@) setting `^maxcats`@ from `#0`@ to `&100`0', 'settings', 0, '2011-11-05 19:38:49', 2),
(235, '`@Changed module(`5clanbuffs`@) setting `^showFormTabIndex`@ from `#1`@ to `&4`0', 'settings', 0, '2011-11-05 19:39:11', 2),
(236, '`@Changed module(`5clanbuffs`@) setting `^maxatk`@ from `#10`@ to `&25`0', 'settings', 0, '2011-11-05 19:39:12', 2),
(237, '`@Changed module(`5clanbuffs`@) setting `^maxdef`@ from `#10`@ to `&25`0', 'settings', 0, '2011-11-05 19:39:12', 2),
(238, '`@Changed module(`5clanbuffs`@) setting `^maxdrain`@ from `#10`@ to `&25`0', 'settings', 0, '2011-11-05 19:39:12', 2),
(239, '`@Changed module(`5clanbuffs`@) setting `^maxthorn`@ from `#10`@ to `&25`0', 'settings', 0, '2011-11-05 19:39:13', 2),
(240, '`@Changed module(`5clanbuffs`@) setting `^maxregen`@ from `#10`@ to `&25`0', 'settings', 0, '2011-11-05 19:39:13', 2),
(241, '`@Changed module(`5clanbuffs`@) setting `^showFormTabIndex`@ from `#4`@ to `&1`0', 'settings', 0, '2011-11-05 19:47:08', 2),
(242, '`@Changed module(`5worldmapen`@) setting `^showFormTabIndex`@ from `#`@ to `&1`0', 'settings', 0, '2011-11-07 18:00:10', 2),
(243, '`@Changed module(`5worldmapen`@) setting `^worldmapsizeX`@ from `#5`@ to `&10`0', 'settings', 0, '2011-11-07 18:00:10', 2),
(244, '`@Changed module(`5worldmapen`@) setting `^worldmapsizeY`@ from `#5`@ to `&10`0', 'settings', 0, '2011-11-07 18:00:10', 2),
(245, '`@Changed module(`5worldmapen`@) setting `^viewRadius`@ from `#`@ to `&2`0', 'settings', 0, '2011-11-07 18:00:10', 2),
(246, '`@Changed module(`5worldmapen`@) setting `^showcompass`@ from `#0`@ to `&1`0', 'settings', 0, '2011-11-07 18:00:10', 2),
(247, '`@Changed module(`5worldmapen`@) setting `^compasspoints`@ from `#0`@ to `&1`0', 'settings', 0, '2011-11-07 18:00:10', 2),
(248, '`@Changed module(`5worldmapen`@) setting `^showcities`@ from `#0`@ to `&1`0', 'settings', 0, '2011-11-07 18:00:11', 2),
(249, '`@Changed module(`5worldmapen`@) setting `^randchance`@ from `#`@ to `&5`0', 'settings', 0, '2011-11-07 18:00:11', 2),
(250, '`@Changed module(`5worldmapen`@) setting `^showFormTabIndex`@ from `#1`@ to `&2`0', 'settings', 0, '2011-11-07 18:00:33', 2),
(251, '`@Changed module(`5worldmapen`@) setting `^usestamina`@ from `#0`@ to `&1`0', 'settings', 0, '2011-11-07 18:00:33', 2),
(252, '`@Changed module(`5worldmapen`@) setting `^showFormTabIndex`@ from `#2`@ to `&6`0', 'settings', 0, '2011-11-07 18:01:08', 2),
(253, '`@Changed module(`5onslaught`@) setting `^difficulty`@ from `#100`@ to `&90`0', 'settings', 0, '2011-12-27 12:42:07', 2),
(254, '`@Changed module(`5onslaught`@) setting `^spawnrate`@ from `#50`@ to `&100`0', 'settings', 0, '2011-12-27 12:42:07', 2),
(255, '`@Changed module(`5turretdefense`@) setting `^showFormTabIndex`@ from `#`@ to `&1`0', 'settings', 0, '2011-12-27 12:42:28', 2),
(256, '`@Changed module(`5turretdefense`@) setting `^maxcobbles`@ from `#0`@ to `&`0', 'settings', 0, '2011-12-27 12:42:28', 2),
(257, '`@Changed module(`5turretdefense`@) setting `^maxcobbles`@ from `#`@ to `&-1`0', 'settings', 0, '2011-12-27 12:43:02', 2),
(258, '`@Changed module(`5turretdefense`@) setting `^mincobbles`@ from `#0`@ to `&1`0', 'settings', 0, '2011-12-27 12:43:02', 2),
(259, '`@Changed module(`5turretdefense`@) setting `^mincobbles`@ from `#1`@ to `&100`0', 'settings', 0, '2011-12-27 13:49:25', 2),
(260, '`@Changed module(`5turretdefense`@) setting `^mincobbles`@ from `#100`@ to `&0`0', 'settings', 0, '2011-12-27 15:55:33', 2),
(261, '`@Changed module(`5vendingmachine`@) setting `^showFormTabIndex`@ from `#`@ to `&1`0', 'settings', 0, '2011-12-28 16:07:28', 2),
(262, '`@Changed core setting `^showFormTabIndex`@ from `#21`@ to `&5`0', 'settings', 0, '2012-02-19 18:56:32', 2),
(263, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:32', 2),
(264, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:32', 2),
(265, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:56:32', 2),
(266, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:32', 2),
(267, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(268, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(269, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(270, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(271, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(272, '`@Changed core setting `^maxcolors`@ from `#10`@ to `&16`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(273, '`@Changed core setting `^postinglimit`@ from `#1`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(274, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(275, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(276, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(277, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(278, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(279, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(280, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(281, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(282, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(283, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(284, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(285, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(286, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(287, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(288, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(289, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:56:33', 2),
(290, '`@Changed core setting `^showFormTabIndex`@ from `#5`@ to `&6`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(291, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(292, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(293, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(294, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(295, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(296, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(297, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(298, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(299, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(300, '`@Changed core setting `^barmaid`@ from `#`%Emily`@ to `&`%Charlotte`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(301, '`@Changed core setting `^bard`@ from `#`^Seth`@ to `&`^Simon`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(302, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(303, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(304, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(305, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(306, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(307, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(308, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(309, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(310, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(311, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(312, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(313, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(314, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(315, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(316, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(317, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:04', 2),
(318, '`@Changed core setting `^showFormTabIndex`@ from `#6`@ to `&9`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(319, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(320, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(321, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(322, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(323, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(324, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(325, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:33', 2),
(326, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(327, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(328, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(329, '`@Changed core setting `^paypalcurrency`@ from `#USD`@ to `&GBP`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(330, '`@Changed core setting `^officermoderate`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(331, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(332, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(333, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(334, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(335, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(336, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(337, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(338, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(339, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(340, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(341, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(342, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(343, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(344, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:34', 2),
(345, '`@Changed core setting `^showFormTabIndex`@ from `#9`@ to `&12`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(346, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(347, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(348, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(349, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(350, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(351, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(352, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(353, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(354, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(355, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(356, '`@Changed core setting `^officermoderate`@ from `#`@ to `&1`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(357, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(358, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(359, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(360, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(361, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(362, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(363, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(364, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(365, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(366, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(367, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(368, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(369, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(370, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:57:57', 2),
(371, '`@Changed core setting `^showFormTabIndex`@ from `#12`@ to `&18`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(372, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(373, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(374, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(375, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(376, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(377, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(378, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(379, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:05', 2),
(380, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(381, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(382, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(383, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(384, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(385, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(386, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(387, '`@Changed core setting `^fightsforinterest`@ from `#4`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(388, '`@Changed core setting `^maxinterest`@ from `#10`@ to `&5`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(389, '`@Changed core setting `^borrowperlevel`@ from `#20`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(390, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(391, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(392, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(393, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(394, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(395, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(396, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(397, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(398, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:59:06', 2),
(399, '`@Changed core setting `^showFormTabIndex`@ from `#18`@ to `&21`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(400, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(401, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(402, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(403, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(404, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(405, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(406, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(407, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(408, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(409, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(410, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(411, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(412, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(413, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(414, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(415, '`@Changed core setting `^LOGINTIMEOUT`@ from `#3600`@ to `&9000`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(416, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(417, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(418, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(419, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(420, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(421, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(422, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:32', 2),
(423, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 18:59:33', 2),
(424, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 18:59:33', 2),
(425, '`@Changed core setting `^showFormTabIndex`@ from `#21`@ to `&27`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(426, '`@Changed core setting `^maxonline`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(427, '`@Changed core setting `^emailpetitions`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(428, '`@Changed core setting `^impressum`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(429, '`@Changed core setting `^beta`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(430, '`@Changed core setting `^defaultsuperuser`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(431, '`@Changed core setting `^requireemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(432, '`@Changed core setting `^requirevalidemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(433, '`@Changed core setting `^blockdupeemail`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(434, '`@Changed core setting `^spaceinname`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(435, '`@Changed core setting `^paypalemail`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(436, '`@Changed core setting `^dropmingold`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(437, '`@Changed core setting `^suicide`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(438, '`@Changed core setting `^instantexp`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(439, '`@Changed core setting `^multislummin`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(440, '`@Changed core setting `^allowfeed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(441, '`@Changed core setting `^logdnet`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(442, '`@Changed core setting `^gameoffsetseconds`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(443, '`@Changed core setting `^cachetranslations`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(444, '`@Changed core setting `^permacollect`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(445, '`@Changed core setting `^tl_maxallowed`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(446, '`@Changed core setting `^show_notices`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(447, '`@Changed core setting `^notify_on_warn`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(448, '`@Changed core setting `^notify_on_error`@ from `#`@ to `&0`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(449, '`@Changed core setting `^notify_address`@ from `#`@ to `&`0', 'settings', 0, '2012-02-19 19:00:20', 2),
(450, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-03-24 15:36:18', 2);
INSERT INTO `free_gamelog` (`logid`, `message`, `category`, `filed`, `date`, `who`) VALUES
(451, 'Optimized tables: free_accounts, free_accounts_output, free_armor, free_bans, free_bounty, free_building_prefs, free_buildings, free_cityprefs, free_clans, free_commentary, free_companions, free_creatures, free_debuglog, free_drinks, free_faillog, free_gamelog, free_iitems, free_improbabledwellings, free_logdnet, free_logdnetbans, free_mail, free_masters, free_moderatedcomments, free_module_event_hooks, free_module_hooks, free_module_objprefs, free_module_settings, free_module_userprefs, free_modules, free_motd, free_mounts, free_nastywords, free_news, free_paylog, free_petitions, free_pollresults, free_purchaselog, free_referers, free_riddles, free_room_prefs, free_rooms, free_settings, free_taunts, free_temp_translations, free_titles, free_translations, free_untranslated, free_weapons in 8.38 seconds.', 'maintenance', 0, '2012-03-24 15:36:26', 2),
(452, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-03-30 11:06:50', 2),
(453, 'Optimized tables: free_accounts, free_accounts_output, free_armor, free_bans, free_bounty, free_building_prefs, free_buildings, free_cityprefs, free_clans, free_commentary, free_companions, free_creatures, free_debuglog, free_drinks, free_faillog, free_gamelog, free_hexprefs, free_iitems, free_improbabledwellings, free_logdnet, free_logdnetbans, free_mail, free_masters, free_moderatedcomments, free_module_event_hooks, free_module_hooks, free_module_objprefs, free_module_settings, free_module_userprefs, free_modules, free_motd, free_mounts, free_nastywords, free_news, free_paylog, free_petitions, free_pollresults, free_purchaselog, free_referers, free_riddles, free_room_prefs, free_rooms, free_settings, free_taunts, free_temp_translations, free_titles, free_translations, free_untranslated, free_weapons in 9.5 seconds.', 'maintenance', 0, '2012-03-30 11:07:00', 2),
(454, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-03-31 16:07:27', 2),
(455, 'Optimized tables: free_accounts, free_accounts_output, free_armor, free_bans, free_bounty, free_building_prefs, free_buildings, free_cityprefs, free_clans, free_commentary, free_companions, free_creatures, free_debuglog, free_drinks, free_faillog, free_gamelog, free_hexprefs, free_iitems, free_improbabledwellings, free_logdnet, free_logdnetbans, free_mail, free_masters, free_moderatedcomments, free_module_event_hooks, free_module_hooks, free_module_objprefs, free_module_settings, free_module_userprefs, free_modules, free_motd, free_mounts, free_nastywords, free_news, free_paylog, free_petitions, free_pollresults, free_purchaselog, free_referers, free_riddles, free_room_prefs, free_rooms, free_settings, free_taunts, free_temp_translations, free_titles, free_translations, free_untranslated, free_userprefs, free_weapons in 8.18 seconds.', 'maintenance', 0, '2012-03-31 16:07:35', 2),
(456, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-04-01 17:38:23', 2),
(457, 'Optimized tables: free_accounts, free_accounts_output, free_armor, free_bans, free_bounty, free_building_prefs, free_buildings, free_cityprefs, free_clans, free_commentary, free_companions, free_creatures, free_debuglog, free_drinks, free_faillog, free_gamelog, free_hexprefs, free_iitems, free_improbabledwellings, free_logdnet, free_logdnetbans, free_mail, free_masters, free_moderatedcomments, free_module_event_hooks, free_module_hooks, free_module_objprefs, free_module_settings, free_module_userprefs, free_modules, free_motd, free_mounts, free_nastywords, free_news, free_paylog, free_petitions, free_pollresults, free_purchaselog, free_referers, free_riddles, free_room_prefs, free_rooms, free_settings, free_taunts, free_temp_translations, free_titles, free_translations, free_untranslated, free_userprefs, free_weapons in 8.72 seconds.', 'maintenance', 0, '2012-04-01 17:38:32', 2),
(458, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-04-05 13:46:34', 2),
(459, 'Optimized tables: free_accounts, free_accounts_output, free_armor, free_bans, free_bounty, free_building_prefs, free_buildings, free_cityprefs, free_clans, free_commentary, free_companions, free_creatures, free_debuglog, free_drinks, free_faillog, free_gamelog, free_hexprefs, free_iitems, free_improbabledwellings, free_logdnet, free_logdnetbans, free_mail, free_masters, free_moderatedcomments, free_module_event_hooks, free_module_hooks, free_module_objprefs, free_module_settings, free_module_userprefs, free_modules, free_motd, free_mounts, free_nastywords, free_news, free_paylog, free_petitions, free_pollresults, free_purchaselog, free_referers, free_riddles, free_room_prefs, free_rooms, free_settings, free_taunts, free_temp_translations, free_titles, free_translations, free_untranslated, free_userprefs, free_weapons in 8.45 seconds.', 'maintenance', 0, '2012-04-05 13:46:42', 2),
(460, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-04-08 18:30:15', 2),
(461, 'Optimized tables: free_accounts, free_accounts_output, free_armor, free_badnavlog, free_bans, free_bounty, free_building_prefs, free_buildings, free_cityprefs, free_clans, free_commentary, free_companions, free_creatures, free_debuglog, free_drinks, free_faillog, free_gamelog, free_hexprefs, free_iitems, free_improbabledwellings, free_logdnet, free_logdnetbans, free_mail, free_masters, free_moderatedcomments, free_module_event_hooks, free_module_hooks, free_module_objprefs, free_module_settings, free_module_userprefs, free_modules, free_motd, free_mounts, free_nastywords, free_news, free_paylog, free_petitions, free_pollresults, free_purchaselog, free_referers, free_riddles, free_room_prefs, free_rooms, free_settings, free_taunts, free_temp_translations, free_titles, free_translations, free_untranslated, free_userprefs, free_weapons in 8.51 seconds.', 'maintenance', 0, '2012-04-08 18:30:23', 2),
(462, 'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ', 'char expiration', 0, '2012-04-09 17:57:30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `free_hexprefs`
--

CREATE TABLE IF NOT EXISTS `free_hexprefs` (
  `hexid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hexcoord` varchar(55) NOT NULL,
  `module` varchar(255) NOT NULL,
  `hexdesc` varchar(255) NOT NULL,
  `hexcode` varchar(255) NOT NULL,
  PRIMARY KEY (`hexid`),
  KEY `hexid` (`hexid`),
  KEY `hexcoord` (`hexcoord`),
  KEY `module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_hexprefs`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_iitems`
--

CREATE TABLE IF NOT EXISTS `free_iitems` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `localname` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_iitems`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_improbabledwellings`
--

CREATE TABLE IF NOT EXISTS `free_improbabledwellings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ownedby` int(11) unsigned NOT NULL,
  `location` text NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_improbabledwellings`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_logdnet`
--

CREATE TABLE IF NOT EXISTS `free_logdnet` (
  `serverid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` double NOT NULL DEFAULT '100',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` varchar(255) NOT NULL DEFAULT 'Unknown',
  `admin` varchar(255) NOT NULL DEFAULT 'unknown',
  `lastping` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recentips` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_logdnet`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_logdnetbans`
--

CREATE TABLE IF NOT EXISTS `free_logdnetbans` (
  `banid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bantype` varchar(20) NOT NULL,
  `banvalue` varchar(255) NOT NULL,
  PRIMARY KEY (`banid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_logdnetbans`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_mail`
--

CREATE TABLE IF NOT EXISTS `free_mail` (
  `messageid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msgfrom` varchar(255) NOT NULL DEFAULT '0',
  `msgto` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `originator` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`messageid`),
  KEY `msgto` (`msgto`),
  KEY `seen` (`seen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_mail`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_masters`
--

CREATE TABLE IF NOT EXISTS `free_masters` (
  `creatureid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `creaturename` varchar(50) DEFAULT NULL,
  `creaturelevel` int(11) DEFAULT NULL,
  `creatureweapon` varchar(50) DEFAULT NULL,
  `creaturelose` varchar(120) DEFAULT NULL,
  `creaturewin` varchar(120) DEFAULT NULL,
  `creaturegold` int(11) DEFAULT NULL,
  `creatureexp` int(11) DEFAULT NULL,
  `creaturehealth` int(11) DEFAULT NULL,
  `creatureattack` int(11) DEFAULT NULL,
  `creaturedefense` int(11) DEFAULT NULL,
  PRIMARY KEY (`creatureid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `free_masters`
--

INSERT INTO `free_masters` (`creatureid`, `creaturename`, `creaturelevel`, `creatureweapon`, `creaturelose`, `creaturewin`, `creaturegold`, `creatureexp`, `creaturehealth`, `creatureattack`, `creaturedefense`) VALUES
(1, 'Mireraband', 1, 'Small Dagger', 'Well done %w`&, I should have guessed you''d grown some.', 'As I thought, %w`^, your skills are no match for my own!', NULL, NULL, 12, 2, 2),
(2, 'Fie', 2, 'Short Sword', 'Well done %w`&, you really know how to use your %x.', 'You should have known you were no match for my %X', NULL, NULL, 22, 4, 4),
(3, 'Glynyc', 3, 'Hugely Spiked Mace', 'Aah, defeated by the likes of you!  Next thing you know, Mireraband will be hunting me down!', 'Haha, maybe you should go back to Mireraband''s class.', NULL, NULL, 33, 6, 6),
(4, 'Guth', 4, 'Spiked Club', 'Ha!  Hahaha, excellent fight %w`&!  Haven''t had a battle like that since I was in the RAF!', 'Back in the RAF, we''d have eaten the likes of you alive!  Go work on your skills some old boy!', NULL, NULL, 44, 8, 8),
(5, 'Unï¿½lith', 5, 'Thought Control', 'Your mind is greater than mine.  I concede defeat.', 'Your mental powers are lacking.  Meditate on this failure and perhaps some day you will defeat me.', NULL, NULL, 55, 10, 10),
(6, 'Adwares', 6, 'Dwarven Battle Axe', 'Ach!  Y'' do hold yer %x with skeel!', 'Har!  Y'' do be needin moore praktise y'' wee cub!', NULL, NULL, 66, 12, 12),
(7, 'Gerrard', 7, 'Battle Bow', 'Hmm, mayhaps I underestimated you.', 'As I thought.', NULL, NULL, 77, 14, 14),
(8, 'Ceiloth', 8, 'Orkos Broadsword', 'Well done %w`&, I can see that great things lie in the future for you!', 'You are becoming powerful, but not yet that powerful.', NULL, NULL, 88, 16, 16),
(9, 'Dwiredan', 9, 'Twin Swords', 'Perhaps I should have considered your %x...', 'Perhaps you''ll reconsider my twin swords before you try that again?', NULL, NULL, 99, 18, 18),
(10, 'Sensei Noetha', 10, 'Martial Arts Skills', 'Your style was superior, your form greater.  I bow to you.', 'Learn to adapt your style, and you shall prevail.', NULL, NULL, 110, 20, 20),
(11, 'Celith', 11, 'Throwing Halos', 'Wow, how did you dodge all those halos?', 'Watch out for that last halo, it''s coming back this way!', NULL, NULL, 121, 22, 22),
(12, 'Gadriel the Elven Ranger', 12, 'Elven Long Bow', 'I can accept that you defeated me, because after all elves are immortal while you are not, so the victory will be mine.', 'Do not forget that elves are immortal.  Mortals will likely never defeat one of the fey.', NULL, NULL, 132, 24, 24),
(13, 'Adoawyr', 13, 'Gargantuan Broad Sword', 'If I could have picked up this sword, I probably would have done better!', 'Haha, I couldn''t even pick the sword UP and I still won!', NULL, NULL, 143, 26, 26),
(14, 'Yoresh', 14, 'Death Touch', 'Well, you evaded my touch.  I salute you!', 'Watch out for my touch next time!', NULL, NULL, 154, 28, 28);

-- --------------------------------------------------------

--
-- Table structure for table `free_moderatedcomments`
--

CREATE TABLE IF NOT EXISTS `free_moderatedcomments` (
  `modid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text,
  `moderator` int(11) unsigned NOT NULL DEFAULT '0',
  `moddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`modid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_moderatedcomments`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_modules`
--

CREATE TABLE IF NOT EXISTS `free_modules` (
  `modulename` varchar(50) NOT NULL,
  `formalname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `moduleauthor` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL,
  `installdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `installedby` varchar(50) NOT NULL,
  `filemoddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `extras` text,
  `category` varchar(50) NOT NULL,
  `infokeys` text NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `download` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`modulename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_modules`
--

INSERT INTO `free_modules` (`modulename`, `formalname`, `description`, `moduleauthor`, `active`, `filename`, `installdate`, `installedby`, `filemoddate`, `type`, `extras`, `category`, `infokeys`, `version`, `download`) VALUES
('ajaxcommentary', 'AJAX Commentary', '', '<a href=''http://www.capslog.info/lotgd''>`!Nicholas Moline`0</a>, Petko Bossakov', 0, 'ajaxcommentary.php', '2012-02-20 17:19:59', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Commentary', '|name|version|author|category|download|settings|prefs|description|requires|', '1.21', 'http://bossakov.eu/uploads/logd/ajaxcommentary.zip'),
('allhof', 'HoF in All Villages', '', 'DaveS, idea by Caesar', 1, 'allhof.php', '2012-02-20 17:19:58', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Administrative', '|name|version|author|category|download|requires|description|', '1.0', ''),
('badnavlog', 'Badnav Log', 'Records what happens to a badnav to try to test it.', 'Cousjava', 1, 'badnavlog.php', '2012-04-05 19:47:45', 'Cousjava', '2012-04-05 20:38:09', 0, NULL, 'Administrative', '|name|version|author|category|download|description|requires|', '1.0.1', ''),
('bioextension', 'Bio Extension', '', 'Dan Hall', 1, 'bioextension.php', '2011-11-05 19:27:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Bio', '|name|version|author|category|download|settings|prefs|description|', '2009-11-10', ''),
('bugtracker', 'Bug Tracker', '', 'Dan Hall', 1, 'bugtracker.php', '2011-11-05 19:27:06', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Administrative', '|name|version|author|category|download|override_forced_nav|description|requires|', '2009-12-17', ''),
('cakeordeath', 'Cake Or Death', '', 'Dan Hall', 1, 'cakeordeath.php', '2011-11-05 19:23:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Village', '|name|version|author|category|download|settings|requires|description|', '2009-10-02', ''),
('cedrikspotions', 'Cedrik''s Potion Shop', '', 'Eric Stevens<br>Modifications by: Chris Vorndran', 1, 'cedrikspotions.php', '2011-11-05 17:36:07', '`@System`0', '2008-01-26 19:29:21', 0, NULL, 'Inn', '|name|version|author|category|download|settings|prefs|description|', '2.6', 'core_module'),
('cities', 'Multiple Cities, Simplified Version', '', 'Eric Stevens, great big chunks ripped out by Dan Hall', 1, 'cities.php', '2011-11-05 19:19:46', 'Cousjava', '2012-03-13 16:47:12', 0, NULL, 'Village', '|name|version|author|category|download|allowanonymous|override_forced_nav|prefs|0|requires|description|', '1.0', 'core_module'),
('cityprefs', 'City Preferences Addon', 'Gives the ability to use prefs based on cities', 'Sixf00t4', 1, 'cityprefs.php', '2011-11-05 19:22:09', 'Cousjava', '2012-03-10 19:51:30', 0, NULL, 'General', '|name|version|author|category|description|vertxtloc|download|', '20070417', 'http://dragonprime.net/index.php?module=Downloads;sa=dlview;id=1155'),
('clanbuffs', 'Clan Buffs', '', 'Aelia', 1, 'clanbuffs.php', '2011-11-05 19:22:10', 'Cousjava', '2012-02-20 22:01:34', 0, NULL, 'Clan', '|name|author|version|category|download|settings|prefs|prefs-clans|requires|description|', '2.1', 'http://dragonprime.net/index.php?module=Downloads;sa=dlview;id=1036'),
('clancommentaryoverview', 'Clan Commentary Overview', '', 'dying', 1, 'clancommentaryoverview.php', '2011-11-05 19:22:12', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Administrative', '|name|category|author|version|download|settings|description|requires|', '0.1', 'core_module'),
('claneditor', 'Clan Editor', '', '<a href=''http://cortalux.tczhost.net'' class=''colLtGreen''>CortalUX</a>', 1, 'claneditor.php', '2011-11-05 19:22:12', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Administrative', '|name|version|author|category|download|description|', '1.2', 'core_module'),
('clanmembercap', 'Clan Member Cap', 'Limits the number of members a clan can have', 'Dan Hall, based on original Clan Member Cap by Sixf00t4', 1, 'clanmembercap.php', '2011-11-05 19:22:12', 'Cousjava', '2012-04-05 18:38:29', 0, NULL, 'Clan', '|name|version|author|category|download|description|settings|prefs-clans|requires|', '20101018', ''),
('class_wizard', 'Class - Wizard', '', 'Dan Hall, based on generic speciality files by Eric Stevens et al, text modifcations by Cousjava', 1, 'class_wizard.php', '2012-03-30 11:09:34', 'Cousjava', '2012-03-30 11:09:51', 0, NULL, 'Classes', '|name|author|version|download|category|prefs|requires|description|', '2008-11-22', ''),
('commentarycommands_flavour', 'Commentary Commands: Flavour Text', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'commentarycommands_flavour.php', '2012-02-20 17:19:59', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Commentary Commands', '|name|version|author|category|download|description|requires|', '2010-07-23', ''),
('commentaryicons_paranoia', 'Commentary Icons: Paranoia', '', 'Dan Hall', 1, 'commentaryicons_paranoia.php', '2011-11-05 19:25:33', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Commentary Icons', '|name|version|author|category|download|description|requires|', '2010-06-24', ''),
('commentaryicons_physdesc', 'Commentary Icons: Avatar and Physical Description', '', 'Dan Hall', 1, 'commentaryicons_physdesc.php', '2011-11-05 19:25:33', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Commentary Icons', '|name|version|author|category|download|prefs|description|', '2010-06-02', ''),
('commentaryicons_race', 'Commentary Icons: Race', '', 'Dan Hall', 1, 'commentaryicons_race.php', '2011-11-05 19:25:33', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Commentary Icons', '|name|version|author|category|download|prefs|description|', '2010-06-02', ''),
('commentaryicons_weapon', 'Commentary Icons: Weapons', '', 'Dan Hall', 1, 'commentaryicons_weapon.php', '2011-11-05 19:25:33', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Commentary Icons', '|name|version|author|category|download|prefs|description|', '2010-06-02', ''),
('commontimetext', 'Common Ground: Time-dependant Flavour Text', '', 'Dan Hall', 1, 'commontimetext.php', '2011-11-05 19:23:06', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Time and Weather', '|name|version|author|category|download|description|requires|', '2010-03-31', ''),
('counciloffices', 'Council Offices', '', 'Cousjava', 1, 'counciloffices.php', '2011-11-05 19:25:33', 'Cousjava', '2012-02-20 22:04:11', 0, NULL, 'Council Offices', '|name|author|version|category|download|requires|description|', '2010-12-10', ''),
('crazyaudrey', 'Crazy Audrey''s Petting Zoo', '', 'Eric Stevens, modified for stamina by Cousjava', 1, 'crazyaudrey.php', '2011-11-05 17:36:02', '`@System`0', '2012-03-17 12:47:15', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs|requires|description|', '1.1', 'core_module'),
('creatureadmin', 'Improbable Creature Admin Spreadsheet Thing', '', 'Dan Hall', 1, 'creatureadmin.php', '2011-11-05 19:27:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Administrative', '|name|version|author|category|download|prefs|description|', '2009-08-17', ''),
('dag', 'Dag Durnick Bounties', '', 'Darrel Morrone<br>Updates by Andrew Senger, JT Traub, and Eric Stevens', 1, 'dag.php', '2011-11-05 17:36:09', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Inn', '|name|author|version|category|download|settings|prefs|description|', '1.3', 'core_module'),
('darkhorse', 'Dark Horse Tavern', '', 'Eric Stevens', 1, 'darkhorse.php', '2011-11-05 17:36:03', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs-mounts|requires|description|', '1.1', 'core_module'),
('drinks', 'Exotic Drinks', '', 'John J. Collins<br>Heavily modified by JT Traub', 1, 'drinks.php', '2011-11-05 17:36:10', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Inn', '|name|author|category|download|settings|prefs|version|description|', '1.1', 'core_module'),
('drpap', 'Dr. Paprika MD', 'Allows users to get a sex change operation.', 'Chris Vorndran', 1, 'drpap.php', '2011-11-05 19:23:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Village', '|name|author|version|category|download|vertxtloc|description|settings|prefs|requires|', '1.0', 'http://dragonprime.net/index.php?module=Downloads;sa=dlview;id=21'),
('example', 'Three-Door Shuffle', '', 'Dan Hall', 1, 'example.php', '2011-12-27 15:28:25', 'Cousjava', '2011-12-27 15:40:07', 0, NULL, 'Improbable Labs', '|name|version|author|category|download|prefs|requires|description|', '2009-04-19', ''),
('expbar', 'Experience Bar', '', 'JT Traub<br>based on idea by Dan Van Dyke', 0, 'expbar.php', '2011-11-05 19:23:05', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stat Display', '|name|version|author|category|download|description|requires|', '1.0', 'core_module'),
('fairy', 'Forest Fairy', '', 'Eric Stevens', 1, 'fairy.php', '2011-11-05 17:36:04', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs|description|', '1.1', 'core_module'),
('findgem', 'Find Gems', '', 'Eric Stevens', 1, 'findgem.php', '2011-11-05 17:36:04', '`@System`0', '0000-00-00 00:00:00', 0, NULL, 'Forest Specials', '|name|version|author|category|download|description|requires|', '1.1', 'core_module'),
('findgold', 'Find Gold', '', 'Eric Stevens', 1, 'findgold.php', '2011-11-05 17:36:05', '`@System`0', '0000-00-00 00:00:00', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|description|requires|', '1.1', 'core_module'),
('foilwench', 'Foilwench', '', 'Eric Stevens', 1, 'foilwench.php', '2011-11-05 17:36:05', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Forest Specials', '|name|version|author|category|download|description|', '1.1', 'core_module'),
('game_dice', 'Dice Game for DarkHorse', '', 'Eric Stevens', 1, 'game_dice.php', '2011-11-05 17:35:58', '`@System`0', '0000-00-00 00:00:00', 0, NULL, 'Darkhorse Game', '|name|author|version|category|download|description|requires|', '1.1', 'core_module'),
('game_fivesix', 'Five Sixes Dice Game', '', '`4Talisman', 1, 'game_fivesix.php', '2011-11-05 17:35:59', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Darkhorse Game', '|name|author|version|category|download|settings|prefs|description|', '1.7', 'core_module'),
('game_stones', 'Stones Game for DarkHorse', '', 'Eric Stevens', 1, 'game_stones.php', '2011-11-05 18:08:32', '`%Admin `&administrator`0', '0000-00-00 00:00:00', 0, NULL, 'Darkhorse Game', '|name|author|version|category|download|description|requires|', '1.1', 'core_module'),
('gender', 'Gender Prefs', '', 'Cousjava', 1, 'gender.php', '2011-12-27 14:50:50', 'Cousjava', '2011-12-27 15:18:53', 0, NULL, 'General', '|name|author|version|category|download|prefs|requires|description|', '1.0 27-12-', 'https://github.com/Cousjava/Improbable-Island'),
('glowingstream', 'Glowing Stream', '', 'Eric Stevens', 1, 'glowingstream.php', '2011-11-05 17:36:05', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Forest Specials', '|name|version|author|category|download|requires|description|', '1.1', 'core_module'),
('goldmine', 'Gold Mine', '', 'Ville Valtokari', 1, 'goldmine.php', '2011-11-05 17:36:06', '`@System`0', '2012-04-09 19:11:16', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs-mounts|description|', '1.0', 'core_module'),
('gravebless', 'Ramius'' Blessing', 'For a (large) favor cost, Ramius will bless (possibly curse) a player''s armor or weapon.', 'Ben Wong', 0, 'gravebless.php', '2011-11-05 19:27:14', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Graveyard', '|name|author|version|category|download|description|settings|prefs|', '1.1', 'core_module'),
('healthbar', 'Health Bar', '', 'JT Traub', 0, 'healthbar.php', '2011-11-05 19:23:05', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stat Display', '|name|version|author|category|download|description|requires|', '1.0', 'core_module'),
('homepage', 'Improbable Island Home Page', '', 'Dan Hall, text modifications by Cousjava', 1, 'homepage.php', '2011-11-05 19:27:06', 'Cousjava', '2012-03-16 18:46:11', 0, NULL, 'Administrative', '|name|version|author|category|download|allowanonymous|requires|description|', '2009-07-08', ''),
('iitemcrates', 'IItems - Crates on World Map', '', 'Dan Hall', 1, 'iitemcrates.php', '2011-11-05 19:19:06', 'Cousjava', '2012-02-19 20:01:11', 0, NULL, 'IItems', '|name|author|version|category|download|settings|prefs|requires|description|', '2009-09-27', ''),
('iitems', 'IItems', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems.php', '2011-11-05 19:19:06', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|prefs|settings|requires|description|', '20090503', ''),
('iitemstestextension', 'IItems - Test Extension', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitemstestextension.php', '2011-11-05 19:19:10', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|requires|description|', '20090503', ''),
('iitems_buffs', 'IItems - Buffs', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_buffs.php', '2011-11-05 19:19:07', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|description|requires|', '20090523', ''),
('iitems_catcher', 'IItems - Catcher Script', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_catcher.php', '2011-11-05 19:19:07', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|requires|description|', '2009-06-14', ''),
('iitems_cratelocator', 'IItems - Crate Locator', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_cratelocator.php', '2011-11-05 19:19:07', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|requires|description|', '2009-09-30', ''),
('iitems_crates_gypsy', 'IItems - Crate Drop Gypsy Integration', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_crates_gypsy.php', '2011-11-05 19:19:07', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|settings|description|requires|', '2009-09-28', ''),
('iitems_dwelling_reconstructor', 'IItems - Emergency Dwelling Reconstructor', '', 'Dan Hall', 0, 'iitems_dwelling_reconstructor.php', '2011-11-05 19:19:07', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Emergency', '|name|version|author|category|download|description|requires|', '2010-08-26', ''),
('iitems_eboy_gypsy', 'IItems - eBoy''s Trading Station Gypsy Integration', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_eboy_gypsy.php', '2011-11-05 19:19:08', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|settings|description|requires|', '2009-08-04', ''),
('iitems_eboy_intelligent', 'IItems - eBoy''s Trading Station', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_eboy_intelligent.php', '2011-11-05 19:19:08', 'Cousjava', '2012-03-13 16:43:18', 0, NULL, 'IItems', '|name|version|author|category|download|requires|description|', '2009-10-01', ''),
('iitems_edibles', 'IItems - Edible IItems', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_edibles.php', '2011-11-05 19:19:08', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|description|requires|', '20090523', ''),
('iitems_giftstation', 'IItems - Gifting Station', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_giftstation.php', '2011-11-05 19:19:08', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|settings|requires|description|', '2009-06-07', ''),
('iitems_hunterslodge', 'IItems - Hunter''s Lodge replacement', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_hunterslodge.php', '2011-11-05 19:19:08', 'Cousjava', '2012-02-19 23:01:04', 0, NULL, 'Lodge IItems', '|name|version|author|category|download|requires|description|', '2010-08-11', ''),
('iitems_invshop', 'Inventory Item Shop', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'iitems_invshop.php', '2011-11-05 19:19:08', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Items', '|name|version|author|category|download|description|requires|', '2010-09-15', ''),
('iitems_meatsystem', 'IItems Meat System', '', 'Dan Hall AKA CavemanJoe, ImprobableIsland.com', 1, 'iitems_meatsystem.php', '2011-11-05 19:19:09', 'Cousjava', '2012-04-09 20:22:11', 0, NULL, 'IItems', '|name|author|version|category|download|prefs-creatures|prefs|requires|description|', '2009-06-13', ''),
('iitems_moduleprefs', 'IItems - ModulePrefs', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'iitems_moduleprefs.php', '2012-02-20 17:20:35', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|description|requires|', '20090523', ''),
('iitems_mountaccessories', 'Iitems: Mount Accessories', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_mountaccessories.php', '2011-11-05 19:19:09', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Mount Accessories', '|name|version|author|category|download|requires|description|', '2010-05-18', ''),
('iitems_session_vars', 'IItems - Session Vars', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_session_vars.php', '2011-11-05 19:19:09', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|description|requires|', '20090523', ''),
('iitems_stamina', 'IItems - Stamina', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_stamina.php', '2011-11-05 19:19:09', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'IItems', '|name|version|author|category|download|description|requires|', '2009-06-16', ''),
('iitems_trader', 'IItems - Player Trading', '', 'Sylvia Li', 1, 'iitems_trader.php', '2011-11-05 19:19:09', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|prefs|description|', '2010-09-24', ''),
('iitems_weightandmass', 'IItems - Weight and Mass', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'iitems_weightandmass.php', '2011-11-05 19:19:10', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|requires|description|', '20090523', ''),
('iitems_worldmapdrop', 'IItems: Drop IItems on World Map', '', 'Dan Hall', 1, 'iitems_worldmapdrop.php', '2011-11-05 19:19:10', 'Cousjava', '2012-02-19 19:26:04', 0, NULL, 'IItems', '|name|version|author|category|download|settings|requires|description|', '2009-11-09', ''),
('iitems_world_map_gathering', 'IItems - World Map Materials Gathering', '', 'Dan Hall', 1, 'iitems_world_map_gathering.php', '2011-11-05 19:19:10', 'Cousjava', '2012-02-19 23:15:21', 0, NULL, 'IItems', '|name|version|author|category|download|requires|description|', '2009-11-25', ''),
('implantchemicalpack', 'Implant - Chemical Pack', '', 'Dan Hall, based on generic speciality files by Eric Stevens et al', 1, 'implantchemicalpack.php', '2011-11-05 19:19:10', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Implants', '|name|author|version|download|category|prefs|requires|description|', '2009-07-05', ''),
('implantlaser', 'Implant - Skull-Mounted Laser', '', 'Dan Hall, based on generic speciality files by Eric Stevens et al', 0, 'implantlaser.php', '2011-11-05 19:19:11', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Implants', '|name|author|version|download|category|prefs|requires|description|', '2008-11-22', ''),
('implantservoarms', 'Implant - Servo Arms', '', 'Dan Hall, based on generic Specialty files by Eric Stevens et al', 1, 'implantservoarms.php', '2011-11-05 19:19:11', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Implants', '|name|author|version|download|category|prefs|requires|description|', '2008-11-24', ''),
('implantsleepsuppression', 'Implant - Sleep Suppression System', '', 'Dan Hall, based on generic speciality files by Eric Stevens et al', 1, 'implantsleepsuppression.php', '2011-11-05 19:19:12', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Implants', '|name|author|version|download|category|requires|description|', '2009-07-05', ''),
('implantspatialawareness', 'Implant - Spatial Awareness', '', 'Dan Hall, based on generic speciality files by Eric Stevens et al', 1, 'implantspatialawareness.php', '2011-11-05 19:19:12', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Implants', '|name|author|version|download|category|prefs|requires|description|', '2008-11-22', 'fix this'),
('implantteslaframe', 'Implant - Tesla Frame', '', 'Dan Hall, based on generic speciality files by Eric Stevens et al', 1, 'implantteslaframe.php', '2011-11-05 19:19:12', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Implants', '|name|author|version|download|category|prefs|requires|description|', '2008-11-22', 'fix this'),
('improbablehousing', 'Improbable Housing', '', 'Dan Hall', 0, 'improbablehousing.php', '2012-02-20 17:20:34', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Housing', '|name|version|author|category|download|prefs|description|requires|', '2009-11-09', ''),
('improbablehousing_furnitureshop', 'Improbable Housing: Furniture Shop', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'improbablehousing_furnitureshop.php', '2012-02-20 17:20:35', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Housing', '|name|version|author|category|download|description|requires|', '2010-11-29', ''),
('improbablehousing_mementos', 'Improbable Housing: Memento Support', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'improbablehousing_mementos.php', '2012-02-20 17:20:35', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Housing', '|name|version|author|category|download|description|requires|', '2011-03-08', ''),
('improbablehousing_secretrooms', 'Improbable Housing: Secret Rooms', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'improbablehousing_secretrooms.php', '2012-02-20 17:20:35', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Housing', '|name|version|author|category|download|settings|description|requires|', '2010-07-20', ''),
('improbablehousing_teleportbeacon', 'Improbable Housing: Teleportation Beacons', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'improbablehousing_teleportbeacon.php', '2012-02-20 17:20:35', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Housing', '|name|version|author|category|download|settings|description|requires|', '2010-11-30', ''),
('insultschool', 'Insult School', '', 'Dan Hall AKA CavemanJoe, ImprobableIsland.com', 0, 'insultschool.php', '2011-11-05 19:27:14', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Insults', '|name|author|version|category|download|description|requires|', '2009-09-23', ''),
('labs', 'Improbable Labs', '', 'Dan Hall', 1, 'labs.php', '2011-12-27 15:33:17', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Improbable Labs', '|name|version|author|category|download|requires|description|', '2010-01-22', ''),
('lovers', 'Violet and Seth Lovers', '', 'Eric Stevens', 1, 'lovers.php', '2011-11-05 17:36:11', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Inn', '|name|author|version|category|download|prefs|requires|description|', '1.0', 'core_module'),
('newdaybar', 'New Day Bar', '', 'Joshua Ecklund', 0, 'newdaybar.php', '2011-11-05 19:23:05', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stat Display', '|name|version|author|download|category|description|requires|', '1.2', 'http://dragonprime.net/users/mProwler/newdaybar.zip'),
('oldman', 'Old Man', '', 'Eric Stevens<br>Necromancer by Colin Harvie', 1, 'oldman.php', '2011-11-05 19:27:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs|requires|description|', '1.1', 'core_module'),
('oneshotteleporter', 'One Shot Teleporter', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'oneshotteleporter.php', '2011-11-05 19:27:14', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Item support modules', '|name|version|author|category|download|description|requires|', '2010-09-15', ''),
('onslaught', 'Onslaught', '', 'Dan Hall, modified by Cousjava', 1, 'onslaught.php', '2011-11-05 19:27:32', 'Cousjava', '2012-03-17 20:54:00', 0, NULL, 'Improbable', '|name|version|author|category|download|settings|prefs-city|prefs|requires|description|', '2012-03-17', ''),
('outhouse', 'Gnomish Outhouse', '', 'John Collins', 1, 'outhouse.php', '2011-11-05 17:36:00', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Forest', '|name|author|version|category|download|prefs|settings|requires|description|', '2.0', 'core_module'),
('parsetest', 'Parse Test', '', 'Dan Hall AKA CavemanJoe, ImprobableIsland.com', 1, 'parsetest.php', '2011-12-27 15:26:44', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'parse', '|name|author|version|category|download|description|', '2009-04-11', ''),
('petitionfixnavs', 'Fixnavs in petitions', '', '`2Oliver Brendel', 1, 'petitionfixnavs.php', '2012-02-20 17:19:58', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Administrative', '|name|version|author|category|download|requires|description|', '1.0', 'http://dragonprime.net/dls/petitionfixnavs.zip'),
('pinata', 'Pinata', '', '`@Elessa and `4Talisman', 1, 'pinata.php', '2011-11-05 19:27:07', 'Cousjava', '2012-04-09 19:18:01', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs|description|', '2.2', 'core_module'),
('pktrack', 'PK Tracking', 'This module will track the amount of PKs (Player Kills) that a user has, and generate a Hall of Fame page from the information.', 'Chris Vorndran', 0, 'pktrack.php', '2011-11-05 19:25:33', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stat Display', '|name|author|version|category|download|vertxtloc|description|settings|user_prefs|prefs|requires|', '1.51', 'http://dragonprime.net/index.php?module=Downloads;sa=dlview;id=66'),
('racedwarf', 'Race - Dwarf', '', 'Cousjava, based on the Humans race by Eric Stevens', 1, 'racedwarf.php', '2011-11-05 17:36:13', '`@System`0', '2012-03-24 15:59:35', 0, NULL, 'Races', '|name|version|author|category|download|settings|requires|description|', '2008-11-08', ''),
('raceelf', 'Race - Elf', '', 'Eric Stevens', 1, 'raceelf.php', '2011-11-05 17:36:15', '`@System`0', '2012-03-10 22:34:34', 0, NULL, 'Races', '|name|version|author|category|download|settings|requires|description|', '1.0', 'core_module'),
('racegobot', 'Race - Gobot', '', 'Dan Hall, based on the Humans race by Eric Stevens', 1, 'racegobot.php', '2011-11-05 19:19:13', 'Cousjava', '2012-03-10 22:34:58', 0, NULL, 'Races', '|name|version|author|category|settings|prefs|requires|download|description|', '2008-11-08', ''),
('racehuman', 'Race - Human (Improbable Edition)', '', 'Dan Hall, based on core DragonPrime Race files', 1, 'racehuman.php', '2011-11-05 17:36:17', '`@System`0', '2012-03-10 22:35:50', 0, NULL, 'Races', '|name|version|author|category|download|description|', '2009-07-21', 'fix_this'),
('racejoker', 'Race - Joker', '', 'Dan Hall', 1, 'racejoker.php', '2011-11-05 19:19:13', 'Cousjava', '2012-03-10 22:36:41', 0, NULL, 'Races', '|name|version|author|category|download|prefs|requires|description|', '2009-09-21', 'fix this'),
('racekittymorph', 'Race - Kittymorph', '', 'Dan Hall, based on the Humans race by Eric Stevens', 1, 'racekittymorph.php', '2011-11-05 19:19:14', 'Cousjava', '2012-03-10 22:32:36', 0, NULL, 'Races', '|name|version|author|category|download|requires|description|', '2009-07-01', 'fix this'),
('racemidget', 'Race - Midget', '', 'Dan Hall, based on the Humans race by Eric Stevens', 1, 'racemidget.php', '2011-11-05 19:19:14', 'Cousjava', '2012-03-10 22:30:44', 0, NULL, 'Races', '|name|version|author|category|download|settings|prefs|requires|description|', '2009-06-29', 'fix this'),
('racemutant', 'Race - Mutant', '', 'Dan Hall, based on the Humans race by Eric Stevens', 1, 'racemutant.php', '2011-11-05 19:19:15', 'Cousjava', '2012-03-10 22:37:25', 0, NULL, 'Races', '|name|version|author|category|download|prefs|requires|description|', '2008-11-08', 'fix this'),
('racerobot', 'Race - Robot', '', 'Dan Hall', 1, 'racerobot.php', '2011-11-05 19:19:16', 'Cousjava', '2012-03-10 22:38:31', 0, NULL, 'Races', '|name|version|author|category|download|prefs|requires|description|', '2009-09-14', 'fix this'),
('racetroll', 'Race - Troll', '', 'Eric Stevens', 1, 'racetroll.php', '2011-11-05 17:36:18', '`@System`0', '2012-03-10 22:39:38', 0, NULL, 'Races', '|name|version|author|category|download|settings|requires|description|', '1.0', 'core_module'),
('racezombie', 'Race - Zombie', '', 'Dan Hall, based on the Humans race by Eric Stevens', 1, 'racezombie.php', '2011-11-05 19:19:16', 'Cousjava', '2012-03-10 22:40:11', 0, NULL, 'Races', '|name|version|author|category|download|requires|description|', '2008-11-08', 'fix this'),
('riddles', 'Riddling Gnome', '', 'Joe Naylor, modifications by Dan Hall to make it all Jokery and Improbable', 1, 'riddles.php', '2011-11-05 19:27:07', 'Cousjava', '2012-04-09 19:20:15', 0, NULL, 'Forest Specials', '|name|version|author|category|download|prefs|description|', '1.2', 'core_module'),
('rspmutant', 'The RSP Mutant', '', 'Markus Wienhoefer, Improbable changes by Dan Hall', 1, 'rspmutant.php', '2011-11-05 19:27:13', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Forest Specials', '|name|version|author|category|download|prefs|description|', '2008-11-09', ''),
('sethsong', 'Seth the Bard''s Songs', '', 'Eric Stevens', 1, 'sethsong.php', '2011-11-05 17:36:11', '`@System`0', '2009-06-21 00:26:48', 0, NULL, 'Inn', '|name|version|author|category|download|settings|prefs|requires|description|', '1.1', 'core_module'),
('specialtydarkarts', 'Specialty - Dark Arts', '', 'Eric Stevens', 1, 'specialtydarkarts.php', '2011-11-05 17:36:20', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Specialties', '|name|author|version|download|category|prefs|requires|description|', '1.1', 'core_module'),
('specialtymysticpower', 'Specialty - Mystical Powers', '', 'Eric Stevens', 1, 'specialtymysticpower.php', '2011-11-05 17:36:21', '`@System`0', '2007-02-06 01:46:13', 0, NULL, 'Specialties', '|name|author|version|download|category|prefs|requires|description|', '1.0', 'core_module'),
('specialtythiefskills', 'Specialty - Thieving Skills', '', 'Eric Stevens', 1, 'specialtythiefskills.php', '2011-11-05 17:36:23', '`@System`0', '2008-02-29 21:36:36', 0, NULL, 'Specialties', '|name|author|version|download|category|prefs|requires|description|', '1.0', 'core_module'),
('staminacorecombat', 'Stamina System - Core Combat', '', 'Dan Hall', 1, 'staminacorecombat.php', '2011-11-05 19:19:17', 'Cousjava', '2012-04-09 19:30:20', 0, NULL, 'Stamina', '|name|version|author|category|download|requires|description|', '2009-03-29', ''),
('staminafood', 'Food for the Stamina System', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'staminafood.php', '2011-11-05 19:23:05', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Stamina', '|name|version|author|category|download|prefs|requires|description|', '20090127', ''),
('staminahof', 'Stamina System - HOF', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 1, 'staminahof.php', '2011-11-05 19:23:05', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stamina', '|name|version|author|category|download|description|requires|', '2009-08-12', ''),
('staminamounts', 'Stamina System - Mounts', '', 'Dan Hall', 0, 'staminamounts.php', '2011-11-05 19:23:05', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stamina', '|name|version|author|category|download|prefs-mounts|description|requires|', '2009-01-12', ''),
('staminasystem', 'Expanded Stamina System - Core', '', 'Dan Hall, aka Caveman Joe, improbableisland.com', 0, 'staminasystem.php', '2011-11-05 19:19:17', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Stamina', '|name|version|author|override_forced_nav|category|download|settings|prefs|requires|description|', '20090329', ''),
('staminatest', 'Stamina Test Module', '', 'Dan Hall, based on Abilities system by Nicolas Harter', 1, 'staminatest.php', '2011-11-05 19:23:05', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Stamina', '|name|version|author|override_forced_nav|category|download|description|', '2008-12-29', ''),
('stocks', 'Village Stocks', '', 'Eric Stevens', 1, 'stocks.php', '2011-12-27 14:43:30', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Village', '|name|author|version|category|download|settings|requires|description|', '1.0', 'core_module'),
('stonehenge', 'Stonehenge', '', 'Colin Harvie<br>Updates by JT Traub', 1, 'stonehenge.php', '2011-11-05 19:27:13', 'Cousjava', '2012-04-09 19:22:42', 0, NULL, 'Forest Specials', '|name|version|author|category|download|settings|prefs|description|', '1.1', 'core_module'),
('timeandweather', 'Time and Weather', '', 'Dan Hall', 1, 'timeandweather.php', '2011-11-05 19:23:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Time and Weather', '|name|version|author|category|download|settings|requires|description|', '2010-10-27', ''),
('timeandweather_outposts', 'Time and Weather: Outposts', '', 'Dan Hall / Emily Hall, ImprobableIsland.com', 1, 'timeandweather_outposts.php', '2011-11-05 19:23:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Time and Weather', '|name|version|author|category|download|requires|description|', '2011-03-31', ''),
('tips', 'Tips', '', 'Dan Hall', 0, 'tips.php', '2011-11-05 19:23:05', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Stat Display', '|name|author|version|category|download|prefs|description|requires|', '2009-07-21', ''),
('translationconvert', 'Translations Convertor Thing', '', 'Dan Hall', 0, 'translationconvert.php', '2012-02-20 17:19:58', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Administrative', '|name|version|author|category|download|prefs|description|', '2010-06-08', ''),
('translationwizard', 'Translation Wizard', '', 'Originally Written by Christian Rutsch`nFilescan by `qEdorian`n`2enhanced by  Oliver Brendel', 0, 'translationwizard.php', '2012-02-20 17:19:59', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Administrative', '|name|version|author|category|download|settings|prefs|description|', '1.44', 'http://lotgd-downloads.com'),
('turretdefense', 'Turret Defense', '', 'Cousjava', 1, 'turretdefense.php', '2011-12-27 12:36:26', 'Cousjava', '2011-12-27 19:06:25', 0, NULL, 'Village', '|name|version|author|category|download|settings|prefs-city|requires|description|', '2011-12-27', 'https://github.com/Cousjava/Improbable-Island'),
('tynan', 'Tynan the Bodybuilder', '', 'Eric Stevens', 1, 'tynan.php', '2011-11-05 19:27:13', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'General', '|name|version|author|category|download|prefs|settings|requires|description|', '1.0', 'core_module'),
('uniqueforests', 'Unique Forests', 'Allows renaming of forests', '<a href=''http://www.joshuadhall.com''>Sixf00t4</a> blatantly ripped from XChrisX with love', 1, 'uniqueforests.php', '2011-11-05 19:27:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'Cities', '|name|version|author|category|download|description|prefs-city|requires|', '20070427', 'http://dragonprime.net/index.php?module=Downloads;sa=dlview;id=1242'),
('vendingmachine', 'Vending Machine', '', 'Cousjava', 0, 'vendingmachine.php', '2011-12-28 16:05:57', 'Cousjava', '2011-12-28 16:28:19', 0, NULL, 'Village', '|name|version|author|category|download|settings|prefs|description|', '2011-12-28', 'https://github.com/Cousjava/Improbable-Island'),
('viewmybio', 'View My Bio', '', 'Dan Hall', 1, 'viewmybio.php', '2011-11-05 19:27:06', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'Bio', '|name|version|author|category|download|description|requires|', '2009-11-10', ''),
('watcher_quests', 'Watcher Quests', '', 'Dan Hall', 1, 'watcher_quests.php', '2011-11-05 19:23:06', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'The Watcher', '|name|version|author|category|download|prefs|requires|description|', '2009-07-04', ''),
('wcgpoints', 'Cobblestone Cottage - World Community Grid Points Integration', '', 'Dan Hall AKA CavemanJoe, ImprobableIsland.com', 1, 'wcgpoints.php', '2011-11-05 19:19:18', 'Cousjava', '2011-11-05 19:01:51', 0, NULL, 'WCG Points', '|name|author|version|category|download|settings|prefs|requires|description|', '2009-08-10', ''),
('wcgpoints_newdaystamina', 'Cobblestone Cottage - Give Stamina at New Day', '', 'Dan Hall AKA CavemanJoe, ImprobableIsland.com', 0, 'wcgpoints_newdaystamina.php', '2011-12-27 12:33:26', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'WCG Points', '|name|author|version|category|download|prefs|description|requires|', '2010-10-08', ''),
('wcgpoints_supporterpoints', 'Cobblestone Cottage - Supporter Points', '', 'Dan Hall AKA CavemanJoe, ImprobableIsland.com', 0, 'wcgpoints_supporterpoints.php', '2011-12-27 12:33:27', 'Cousjava', '0000-00-00 00:00:00', 0, NULL, 'WCG Points', '|name|author|version|category|download|settings|prefs|description|requires|', '2010-10-08', ''),
('worldmapen', 'World Map', '', 'Originally: AES and Kevin Hatfield, Maintained by Roland Lichti, Stamina and Mount interaction added by Caveman Joe', 1, 'worldmapen.php', '2011-11-07 17:31:26', 'Cousjava', '2012-03-10 19:52:32', 0, NULL, 'Map', '|name|version|author|category|download|vertxtloc|requires|settings|prefs|prefs-mounts|description|', '0.9x', 'http://www.paladins-inn.de/download/worldmapen09.zip'),
('worldmapwn', 'World Map', '', 'Cousjava', 1, 'worldmapwn.php', '2012-03-24 15:37:06', 'Cousjava', '2012-04-05 16:37:07', 0, NULL, 'World Map', '|name|version|author|category|download|vertxtloc|requires|settings|prefs|prefs-city|description|', '0.4.2', '');

-- --------------------------------------------------------

--
-- Table structure for table `free_module_event_hooks`
--

CREATE TABLE IF NOT EXISTS `free_module_event_hooks` (
  `event_type` varchar(20) NOT NULL,
  `modulename` varchar(50) NOT NULL,
  `event_chance` text NOT NULL,
  KEY `modulename` (`modulename`),
  KEY `event_type` (`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_module_event_hooks`
--

INSERT INTO `free_module_event_hooks` (`event_type`, `modulename`, `event_chance`) VALUES
('forest', 'findgem', 'return 100;'),
('travel', 'findgem', 'return 20;'),
('forest', 'findgold', 'return 100;'),
('travel', 'findgold', 'return 20;'),
('forest', 'darkhorse', 'require_once("modules/darkhorse.php");\n			return (darkhorse_tavernmount() ? 0 : 100);'),
('travel', 'darkhorse', 'require_once("modules/darkhorse.php");\n			return (darkhorse_tavernmount() ? 0 : 100);'),
('forest', 'fairy', 'return 100;'),
('forest', 'oldman', 'return 100;'),
('forest', 'foilwench', 'return 100;'),
('forest', 'rspmutant', 'return 100;'),
('forest', 'crazyaudrey', 'return 100;'),
('forest', 'glowingstream', 'return 100;'),
('travel', 'glowingstream', 'return 100;'),
('forest', 'goldmine', 'return 100;'),
('forest', 'pinata', 'return 100;'),
('forest', 'stonehenge', 'return 100;'),
('forest', 'riddles', 'return 100;');

-- --------------------------------------------------------

--
-- Table structure for table `free_module_hooks`
--

CREATE TABLE IF NOT EXISTS `free_module_hooks` (
  `modulename` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `whenactive` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`modulename`,`location`,`function`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_module_hooks`
--

INSERT INTO `free_module_hooks` (`modulename`, `location`, `function`, `whenactive`, `priority`) VALUES
('ajaxcommentary', 'commentarytalkline', 'ajaxcommentary_dohook', '', 50),
('ajaxcommentary', 'everyheader', 'ajaxcommentary_dohook', '', 50),
('ajaxcommentary', 'viewcommentaryfooter', 'ajaxcommentary_dohook', '', 50),
('ajaxcommentary', 'viewcommentaryheader', 'ajaxcommentary_dohook', '', 50),
('allhof', 'village', 'allhof_dohook', '', 50),
('badnavlog', 'badnav', 'badnavlog_dohook', '', 50),
('bioextension', 'bioinfo', 'bioextension_dohook', '', 50),
('bioextension', 'footer-prefs', 'bioextension_dohook', '', 50),
('cakeordeath', 'village', 'cakeordeath_dohook', 'if ($session[''user''][''location''] == "AceHigh") {return true;} else {return false;};', 50),
('cedrikspotions', 'header-inn', 'cedrikspotions_dohook', '', 50),
('cedrikspotions', 'hprecalc', 'cedrikspotions_dohook', '', 50),
('cedrikspotions', 'newday-runonce', 'cedrikspotions_dohook', '', 50),
('clanbuffs', 'changesetting', 'clanbuffs_dohook', '', 50),
('clanbuffs', 'clanhall', 'clanbuffs_dohook', '', 49),
('clanbuffs', 'footer-clan', 'clanbuffs_dohook', '', 50),
('clanbuffs', 'footer-hof', 'clanbuffs_dohook', '', 50),
('clanbuffs', 'forest', 'clanbuffs_dohook', '', 49),
('clanbuffs', 'newday', 'clanbuffs_dohook', '', 50),
('clanbuffs', 'village', 'clanbuffs_dohook', '', 49),
('clancommentaryoverview', 'header-moderate', 'clancommentaryoverview_dohook', '', 50),
('claneditor', 'superuser', 'claneditor_dohook', '', 50),
('clanmembercap', 'footer-clan', 'clanmembercap_dohook', '', 50),
('clanmembercap', 'header-clan', 'clanmembercap_dohook', '', 100),
('class_wizard', 'apply-specialties', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'battle-defeat', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'battle-victory', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'choose-specialty', 'class_wizard_dohook', '', 50),
('class_wizard', 'dragonkill', 'class_wizard_dohook', '', 50),
('class_wizard', 'fightnav-specialties', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'forest', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'newday', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'set-specialty', 'class_wizard_dohook', '', 50),
('class_wizard', 'specialtycolor', 'class_wizard_dohook', '', 50),
('class_wizard', 'specialtymodules', 'class_wizard_dohook', '', 50),
('class_wizard', 'specialtynames', 'class_wizard_dohook', '', 50),
('class_wizard', 'village', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('class_wizard', 'worldnav', 'class_wizard_dohook', 'if ($session[''user''][''specialty''] == "WS") {return true;} else {return false;};', 50),
('commentarycommands_flavour', 'commentarycommand', 'commentarycommands_flavour_dohook', '', 100),
('commentaryicons_paranoia', 'commentbuffer-preformat', 'commentaryicons_paranoia_dohook', '', 50),
('commentaryicons_physdesc', 'commentbuffer', 'commentaryicons_physdesc_dohook', '', 50),
('commentaryicons_physdesc', 'postcomment', 'commentaryicons_physdesc_dohook', '', 50),
('commentaryicons_race', 'commentbuffer', 'commentaryicons_race_dohook', '', 50),
('commentaryicons_race', 'postcomment', 'commentaryicons_race_dohook', '', 10),
('commentaryicons_weapon', 'commentbuffer', 'commentaryicons_weapon_dohook', '', 50),
('commentaryicons_weapon', 'postcomment', 'commentaryicons_weapon_dohook', '', 70),
('commontimetext', 'gardentext', 'commontimetext_dohook', '', 50),
('counciloffices', 'village', 'counciloffices_dohook', '', 50),
('crazyaudrey', 'newday', 'crazyaudrey_dohook', '', 50),
('crazyaudrey', 'newday-runonce', 'crazyaudrey_dohook', '', 50),
('crazyaudrey', 'village', 'crazyaudrey_dohook', '', 50),
('crazyaudrey', 'village-desc', 'crazyaudrey_dohook', '', 50),
('creatureadmin', 'superuser', 'creatureadmin_dohook', '', 50),
('dag', 'delete_character', 'dag_dohook', '', 50),
('dag', 'dragonkill', 'dag_dohook', '', 50),
('dag', 'inn', 'dag_dohook', '', 50),
('dag', 'inn-desc', 'dag_dohook', '', 50),
('dag', 'newday', 'dag_dohook', '', 50),
('dag', 'pvpwin', 'dag_dohook', '', 50),
('dag', 'showsettings', 'dag_dohook', '', 50),
('dag', 'superuser', 'dag_dohook', '', 50),
('darkhorse', 'forest', 'darkhorse_dohook', '', 50),
('darkhorse', 'moderate', 'darkhorse_dohook', '', 50),
('darkhorse', 'mountfeatures', 'darkhorse_dohook', '', 50),
('drinks', 'ale', 'drinks_dohook', '', 50),
('drinks', 'commentary', 'drinks_dohook', '', 50),
('drinks', 'dragonkill', 'drinks_dohook', '', 50),
('drinks', 'header-graveyard', 'drinks_dohook', '', 50),
('drinks', 'newday', 'drinks_dohook', '', 50),
('drinks', 'soberup', 'drinks_dohook', '', 50),
('drinks', 'superuser', 'drinks_dohook', '', 50),
('drpap', 'changesetting', 'drpap_dohook', '', 50),
('drpap', 'dragonkilltext', 'drpap_dohook', '', 50),
('drpap', 'moderate', 'drpap_dohook', '', 50),
('drpap', 'village', 'drpap_dohook', 'if ($session[''user''][''location''] == "Pleasantville") {return true;} else {return false;};', 50),
('example', 'labs-ic', 'example_dohook', '', 50),
('example', 'newday', 'example_dohook', '', 50),
('expbar', 'charstats', 'expbar_dohook', '', 50),
('fairy', 'hprecalc', 'fairy_dohook', '', 50),
('game_dice', 'darkhorsegame', 'game_dice_dohook', '', 50),
('game_fivesix', 'darkhorsegame', 'game_fivesix_dohook', '', 50),
('game_fivesix', 'newday', 'game_fivesix_dohook', '', 50),
('game_stones', 'darkhorsegame', 'game_stones_dohook', '', 50),
('gender', 'moderate', 'gender_dohook', '', 50),
('gravebless', 'dragonkilltext', 'gravebless_dohook', '', 50),
('gravebless', 'newday', 'gravebless_dohook', '', 50),
('gravebless', 'ramiusfavors', 'gravebless_dohook', '', 50),
('healthbar', 'charstats', 'healthbar_dohook', '', 50),
('homepage', 'index', 'homepage_dohook', '', 50),
('homepage', 'onlinecharlist', 'homepage_dohook', '', 50),
('iitemcrates', 'donation', 'iitemcrates_dohook', '', 50),
('iitemcrates', 'newday-runonce', 'iitemcrates_dohook', '', 50),
('iitemcrates', 'worldnav', 'iitemcrates_dohook', '', 50),
('iitems', 'apply-specialties', 'iitems_dohook', '', 50),
('iitems', 'dragonkill', 'iitems_dohook', '', 50),
('iitems', 'fightnav-specialties', 'iitems_dohook', '', 50),
('iitems', 'forest', 'iitems_dohook', '', 50),
('iitems', 'newday', 'iitems_dohook', '', 50),
('iitems', 'superuser', 'iitems_dohook', '', 50),
('iitems', 'village', 'iitems_dohook', '', 50),
('iitems', 'worldnav', 'iitems_dohook', '', 50),
('iitemstestextension', 'forest', 'iitemstestextension_dohook', '', 50),
('iitemstestextension', 'iitems-give-item', 'iitemstestextension_dohook', '', 50),
('iitemstestextension', 'iitems-inventory', 'iitemstestextension_dohook', '', 50),
('iitemstestextension', 'iitems-use-item', 'iitemstestextension_dohook', '', 50),
('iitemstestextension', 'village', 'iitemstestextension_dohook', '', 50),
('iitems_buffs', 'iitems-superuser', 'iitems_buffs_dohook', '', 50),
('iitems_buffs', 'iitems-use-item', 'iitems_buffs_dohook', '', 50),
('iitems_catcher', 'iitems-use-item', 'iitems_catcher_dohook', '', 50),
('iitems_catcher', 'newday', 'iitems_catcher_dohook', '', 50),
('iitems_cratelocator', 'iitems-use-item', 'iitems_cratelocator_dohook', '', 50),
('iitems_cratelocator', 'worldnav', 'iitems_cratelocator_dohook', '', 50),
('iitems_crates_gypsy', 'gypsy', 'iitems_crates_gypsy_dohook', '', 50),
('iitems_dwelling_reconstructor', 'iitems-use-item', 'iitems_dwelling_reconstructor_dohook', '', 50),
('iitems_eboy_gypsy', 'gypsy', 'iitems_eboy_gypsy_dohook', '', 50),
('iitems_eboy_intelligent', 'items-returnlinks', 'iitems_eboy_intelligent_dohook', '', 50),
('iitems_eboy_intelligent', 'newday-runonce', 'iitems_eboy_intelligent_dohook', '', 50),
('iitems_eboy_intelligent', 'village', 'iitems_eboy_intelligent_dohook', '', 50),
('iitems_edibles', 'iitems-inventory', 'iitems_edibles_dohook', '', 50),
('iitems_edibles', 'iitems-superuser', 'iitems_edibles_dohook', '', 50),
('iitems_edibles', 'iitems-use-item', 'iitems_edibles_dohook', '', 1),
('iitems_edibles', 'iitems-use-item-after', 'iitems_edibles_dohook', '', 50),
('iitems_giftstation', 'iitems-superuser', 'iitems_giftstation_dohook', '', 50),
('iitems_giftstation', 'iitems_inventory_from', 'iitems_giftstation_dohook', '', 50),
('iitems_giftstation', 'newday', 'iitems_giftstation_dohook', '', 50),
('iitems_giftstation', 'village', 'iitems_giftstation_dohook', '', 50),
('iitems_hunterslodge', 'items-returnlinks', 'iitems_hunterslodge_dohook', '', 50),
('iitems_hunterslodge', 'newday', 'iitems_hunterslodge_dohook', '', 50),
('iitems_hunterslodge', 'superuser', 'iitems_hunterslodge_dohook', '', 50),
('iitems_hunterslodge', 'village', 'iitems_hunterslodge_dohook', '', 50),
('iitems_invshop', 'village', 'iitems_invshop_dohook', 'if ($session[''user''][''location''] == "Improbable Central") {return true;} else {return false;};', 50),
('iitems_meatsystem', 'battle-victory', 'iitems_meatsystem_dohook', '', 50),
('iitems_meatsystem', 'creatureencounter', 'iitems_meatsystem_dohook', '', 50),
('iitems_meatsystem', 'forest', 'iitems_meatsystem_dohook', '', 50),
('iitems_meatsystem', 'newday', 'iitems_meatsystem_dohook', '', 50),
('iitems_meatsystem', 'worldnav', 'iitems_meatsystem_dohook', '', 50),
('iitems_moduleprefs', 'iitems-superuser', 'iitems_moduleprefs_dohook', '', 50),
('iitems_moduleprefs', 'iitems-use-item', 'iitems_moduleprefs_dohook', '', 50),
('iitems_mountaccessories', 'boughtmount', 'iitems_mountaccessories_dohook', '', 50),
('iitems_mountaccessories', 'iitems-give-item', 'iitems_mountaccessories_dohook', '', 50),
('iitems_mountaccessories', 'iitems-superuser', 'iitems_mountaccessories_dohook', '', 50),
('iitems_mountaccessories', 'soldmount', 'iitems_mountaccessories_dohook', '', 50),
('iitems_mountaccessories', 'stables_footer', 'iitems_mountaccessories_dohook', '', 50),
('iitems_session_vars', 'iitems-superuser', 'iitems_session_vars_dohook', '', 50),
('iitems_session_vars', 'iitems-use-item', 'iitems_session_vars_dohook', '', 50),
('iitems_stamina', 'iitems-superuser', 'iitems_stamina_dohook', '', 50),
('iitems_stamina', 'iitems-use-item', 'iitems_stamina_dohook', '', 50),
('iitems_trader', 'biostat', 'iitems_trader_dohook', '', 50),
('iitems_weightandmass', 'iitems-give-item', 'iitems_weightandmass_dohook', '', 50),
('iitems_weightandmass', 'iitems-inventory', 'iitems_weightandmass_dohook', '', 50),
('iitems_weightandmass', 'iitems-use-item', 'iitems_weightandmass_dohook', '', 50),
('iitems_weightandmass', 'iitems-use-item-after', 'iitems_weightandmass_dohook', '', 50),
('iitems_weightandmass', 'stamina-newday', 'iitems_weightandmass_dohook', '', 50),
('iitems_worldmapdrop', 'iitems-inventory', 'iitems_worldmapdrop_dohook', '', 50),
('iitems_worldmapdrop', 'iitems-show-inventory', 'iitems_worldmapdrop_dohook', '', 50),
('iitems_worldmapdrop', 'iitems-superuser', 'iitems_worldmapdrop_dohook', '', 50),
('iitems_worldmapdrop', 'worldnav', 'iitems_worldmapdrop_dohook', '', 50),
('iitems_world_map_gathering', 'worldnav', 'iitems_world_map_gathering_dohook', '', 50),
('implantchemicalpack', 'apply-specialties', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'choose-specialty', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'endofpage', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'endofround', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'fightnav-specialties', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'set-specialty', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'specialtycolor', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'specialtymodules', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'specialtynames', 'implantchemicalpack_dohook', '', 50),
('implantchemicalpack', 'startofround', 'implantchemicalpack_dohook', '', 50),
('implantlaser', 'apply-specialties', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'battle-defeat', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'battle-victory', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'choose-specialty', 'implantlaser_dohook', '', 50),
('implantlaser', 'dragonkill', 'implantlaser_dohook', '', 50),
('implantlaser', 'fightnav-specialties', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'forest', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'newday', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'set-specialty', 'implantlaser_dohook', '', 50),
('implantlaser', 'specialtycolor', 'implantlaser_dohook', '', 50),
('implantlaser', 'specialtymodules', 'implantlaser_dohook', '', 50),
('implantlaser', 'specialtynames', 'implantlaser_dohook', '', 50),
('implantlaser', 'village', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantlaser', 'worldnav', 'implantlaser_dohook', 'if ($session[''user''][''specialty''] == "HL") {return true;} else {return false;};', 50),
('implantservoarms', 'apply-specialties', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantservoarms', 'battle-defeat', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantservoarms', 'battle-victory', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantservoarms', 'choose-specialty', 'implantservoarms_dohook', '', 50),
('implantservoarms', 'dragonkill', 'implantservoarms_dohook', '', 50),
('implantservoarms', 'fightnav-specialties', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantservoarms', 'incrementspecialty', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantservoarms', 'newday', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantservoarms', 'set-specialty', 'implantservoarms_dohook', '', 50),
('implantservoarms', 'specialtycolor', 'implantservoarms_dohook', '', 50),
('implantservoarms', 'specialtymodules', 'implantservoarms_dohook', '', 50),
('implantservoarms', 'specialtynames', 'implantservoarms_dohook', '', 50),
('implantservoarms', 'village', 'implantservoarms_dohook', 'if ($session[''user''][''specialty''] == "SR") {return true;} else {return false;};', 50),
('implantsleepsuppression', 'choose-specialty', 'implantsleepsuppression_dohook', '', 50),
('implantsleepsuppression', 'set-specialty', 'implantsleepsuppression_dohook', '', 50),
('implantsleepsuppression', 'specialtycolor', 'implantsleepsuppression_dohook', '', 50),
('implantsleepsuppression', 'specialtymodules', 'implantsleepsuppression_dohook', '', 50),
('implantsleepsuppression', 'specialtynames', 'implantsleepsuppression_dohook', '', 50),
('implantsleepsuppression', 'stamina-newday', 'implantsleepsuppression_dohook', '', 50),
('implantspatialawareness', 'apply-specialties', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'battle-victory', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'choose-specialty', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'dragonkill', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'fightnav-specialties', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'incrementspecialty', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'newday', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'set-specialty', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'specialtycolor', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'specialtymodules', 'implantspatialawareness_dohook', '', 50),
('implantspatialawareness', 'specialtynames', 'implantspatialawareness_dohook', '', 50),
('implantteslaframe', 'apply-specialties', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'battle-victory', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'choose-specialty', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'dragonkill', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'fightnav-specialties', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'set-specialty', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'specialtycolor', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'specialtymodules', 'implantteslaframe_dohook', '', 50),
('implantteslaframe', 'specialtynames', 'implantteslaframe_dohook', '', 50),
('improbablehousing', 'newday', 'improbablehousing_dohook', '', 50),
('improbablehousing', 'stamina-newday', 'improbablehousing_dohook', '', 50),
('improbablehousing', 'village', 'improbablehousing_dohook', '', 50),
('improbablehousing', 'worldnav', 'improbablehousing_dohook', '', 50),
('improbablehousing_furnitureshop', 'improbablehousing_sleepslot', 'improbablehousing_furnitureshop_dohook', '', 50),
('improbablehousing_furnitureshop', 'village', 'improbablehousing_furnitureshop_dohook', 'if ($session[''user''][''location''] == "Improbable Central") {return true;} else {return false;};', 50),
('improbablehousing_mementos', 'improbablehousing_interior', 'improbablehousing_mementos_dohook', '', 50),
('improbablehousing_secretrooms', 'commentarycommand', 'improbablehousing_secretrooms_dohook', '', 50),
('improbablehousing_secretrooms', 'improbablehousing_interior', 'improbablehousing_secretrooms_dohook', '', 50),
('improbablehousing_teleportbeacon', 'improbablehousing_interior', 'improbablehousing_teleportbeacon_dohook', '', 50),
('improbablehousing_teleportbeacon', 'newday-runonce', 'improbablehousing_teleportbeacon_dohook', '', 50),
('improbablehousing_teleportbeacon', 'teleport', 'improbablehousing_teleportbeacon_dohook', '', 50),
('insultschool', 'village', 'insultschool_dohook', 'if ($session[''user''][''location''] == "Pleasantville") {return true;} else {return false;};', 50),
('labs', 'village', 'labs_dohook', '', 50),
('lovers', 'inn', 'lovers_dohook', '', 50),
('lovers', 'newday', 'lovers_dohook', '', 50),
('newdaybar', 'charstats', 'newdaybar_dohook', '', 50),
('oldman', 'hprecalc', 'oldman_dohook', '', 50),
('onslaught', 'alternativeresurrect', 'onslaught_dohook', '', 50),
('onslaught', 'battle-victory', 'onslaught_dohook', '', 50),
('onslaught', 'counciloffices', 'onslaught_dohook', '', 50),
('onslaught', 'creatureencounter', 'onslaught_dohook', '', 50),
('onslaught', 'newday', 'onslaught_dohook', '', 50),
('onslaught', 'newday-runonce', 'onslaught_dohook', '', 50),
('onslaught', 'village', 'onslaught_dohook', '', 50),
('onslaught', 'worldnav', 'onslaught_dohook', '', 50),
('outhouse', 'forest', 'outhouse_dohook', '', 50),
('outhouse', 'newday', 'outhouse_dohook', '', 50),
('parsetest', 'superuser', 'parsetest_dohook', '', 50),
('petitionfixnavs', 'footer-viewpetition', 'petitionfixnavs_dohook', '', 50),
('pinata', 'gardens', 'pinata_dohook', '', 50),
('pinata', 'newday', 'pinata_dohook', '', 50),
('pktrack', 'biostat', 'pktrack_dohook', '', 50),
('pktrack', 'charstats', 'pktrack_dohook', '', 50),
('pktrack', 'footer-hof', 'pktrack_dohook', '', 50),
('pktrack', 'pvploss', 'pktrack_dohook', '', 50),
('pktrack', 'pvpwin', 'pktrack_dohook', '', 50),
('racedwarf', 'apply-specialties', 'racedwarf_dohook', '', 50),
('racedwarf', 'battle-victory', 'racedwarf_dohook', '', 50),
('racedwarf', 'changesetting', 'racedwarf_dohook', '', 50),
('racedwarf', 'chooserace', 'racedwarf_dohook', '', 50),
('racedwarf', 'fightnav-specialties', 'racedwarf_dohook', '', 50),
('racedwarf', 'moderate', 'racedwarf_dohook', '', 50),
('racedwarf', 'racenames', 'racedwarf_dohook', '', 50),
('racedwarf', 'setrace', 'racedwarf_dohook', '', 50),
('racedwarf', 'stamina-newday', 'racedwarf_dohook', '', 50),
('racedwarf', 'validforestloc', 'racedwarf_dohook', '', 50),
('racedwarf', 'validlocation', 'racedwarf_dohook', '', 50),
('racedwarf', 'villagetext', 'racedwarf_dohook', '', 50),
('raceelf', 'adjuststats', 'raceelf_dohook', '', 50),
('raceelf', 'changesetting', 'raceelf_dohook', '', 50),
('raceelf', 'moderate', 'raceelf_dohook', '', 50),
('raceelf', 'newday', 'raceelf_dohook', '', 50),
('raceelf', 'pvpadjust', 'raceelf_dohook', '', 50),
('raceelf', 'raceminedeath', 'raceelf_dohook', '', 50),
('raceelf', 'racenames', 'raceelf_dohook', '', 50),
('raceelf', 'setrace', 'raceelf_dohook', '', 50),
('raceelf', 'travel', 'raceelf_dohook', '', 50),
('raceelf', 'validforestloc', 'raceelf_dohook', '', 50),
('raceelf', 'validlocation', 'raceelf_dohook', '', 50),
('raceelf', 'villagetext', 'raceelf_dohook', '', 50),
('raceelf', 'weaponstext', 'raceelf_dohook', '', 50),
('racegobot', 'apply-specialties', 'racegobot_dohook', '', 50),
('racegobot', 'chooserace', 'racegobot_dohook', '', 50),
('racegobot', 'count-travels', 'racegobot_dohook', '', 50),
('racegobot', 'fightnav-specialties', 'racegobot_dohook', '', 50),
('racegobot', 'newday', 'racegobot_dohook', '', 50),
('racegobot', 'potion', 'racegobot_dohook', '', 50),
('racegobot', 'raceminedeath', 'racegobot_dohook', '', 50),
('racegobot', 'racenames', 'racegobot_dohook', '', 50),
('racegobot', 'setrace', 'racegobot_dohook', '', 50),
('racegobot', 'village', 'racegobot_dohook', '', 50),
('racehuman', 'changesetting', 'racehuman_dohook', '', 50),
('racehuman', 'chooserace', 'racehuman_dohook', '', 50),
('racehuman', 'moderate', 'racehuman_dohook', '', 50),
('racehuman', 'raceminedeath', 'racehuman_dohook', '', 50),
('racehuman', 'racenames', 'racehuman_dohook', '', 50),
('racehuman', 'setrace', 'racehuman_dohook', '', 50),
('racehuman', 'stablelocs', 'racehuman_dohook', '', 50),
('racehuman', 'stabletext', 'racehuman_dohook', '', 50),
('racehuman', 'validforestloc', 'racehuman_dohook', '', 50),
('racehuman', 'validlocation', 'racehuman_dohook', '', 50),
('racehuman', 'villagetext', 'racehuman_dohook', '', 50),
('racejoker', 'changesetting', 'racejoker_dohook', '', 50),
('racejoker', 'chooserace', 'racejoker_dohook', '', 50),
('racejoker', 'moderate', 'racejoker_dohook', '', 50),
('racejoker', 'racenames', 'racejoker_dohook', '', 50),
('racejoker', 'setrace', 'racejoker_dohook', '', 50),
('racejoker', 'stablelocs', 'racejoker_dohook', '', 50),
('racejoker', 'stabletext', 'racejoker_dohook', '', 50),
('racejoker', 'stamina-newday', 'racejoker_dohook', '', 50),
('racejoker', 'startofround-prebuffs', 'racejoker_dohook', '', 50),
('racejoker', 'validforestloc', 'racejoker_dohook', '', 50),
('racejoker', 'validlocation', 'racejoker_dohook', '', 50),
('racejoker', 'villagetext', 'racejoker_dohook', '', 50),
('racekittymorph', 'battle-victory', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'changesetting', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'chooserace', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'creatureencounter', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'moderate', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'racenames', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'setrace', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'stablelocs', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'stabletext', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'stamina-newday', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'validforestloc', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'validlocation', 'racekittymorph_dohook', '', 50),
('racekittymorph', 'villagetext', 'racekittymorph_dohook', '', 50),
('racemidget', 'apply-specialties', 'racemidget_dohook', '', 50),
('racemidget', 'battle-victory', 'racemidget_dohook', '', 50),
('racemidget', 'changesetting', 'racemidget_dohook', '', 50),
('racemidget', 'chooserace', 'racemidget_dohook', '', 50),
('racemidget', 'creatureencounter', 'racemidget_dohook', '', 50),
('racemidget', 'endofround', 'racemidget_dohook', '', 50),
('racemidget', 'fightnav-specialties', 'racemidget_dohook', '', 50),
('racemidget', 'moderate', 'racemidget_dohook', '', 50),
('racemidget', 'racenames', 'racemidget_dohook', '', 50),
('racemidget', 'setrace', 'racemidget_dohook', '', 50),
('racemidget', 'stablelocs', 'racemidget_dohook', '', 50),
('racemidget', 'stabletext', 'racemidget_dohook', '', 50),
('racemidget', 'stamina-newday', 'racemidget_dohook', '', 50),
('racemidget', 'startofround', 'racemidget_dohook', '', 50),
('racemidget', 'validforestloc', 'racemidget_dohook', '', 50),
('racemidget', 'validlocation', 'racemidget_dohook', '', 50),
('racemidget', 'villagetext', 'racemidget_dohook', '', 50),
('racemutant', 'apply-specialties', 'racemutant_dohook', '', 50),
('racemutant', 'battle-victory', 'racemutant_dohook', '', 50),
('racemutant', 'changesetting', 'racemutant_dohook', '', 50),
('racemutant', 'chooserace', 'racemutant_dohook', '', 50),
('racemutant', 'fightnav-specialties', 'racemutant_dohook', '', 50),
('racemutant', 'moderate', 'racemutant_dohook', '', 50),
('racemutant', 'racenames', 'racemutant_dohook', '', 50),
('racemutant', 'setrace', 'racemutant_dohook', '', 50),
('racemutant', 'stablelocs', 'racemutant_dohook', '', 50),
('racemutant', 'stabletext', 'racemutant_dohook', '', 50),
('racemutant', 'stamina-newday', 'racemutant_dohook', '', 50),
('racemutant', 'validforestloc', 'racemutant_dohook', '', 50),
('racemutant', 'validlocation', 'racemutant_dohook', '', 50),
('racemutant', 'villagetext', 'racemutant_dohook', '', 50),
('racerobot', 'alternativeresurrect', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'changesetting', 'racerobot_dohook', '', 50),
('racerobot', 'charstats', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'chooserace', 'racerobot_dohook', '', 50),
('racerobot', 'forest', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'load_inventory', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'moderate', 'racerobot_dohook', '', 50),
('racerobot', 'potion', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'racenames', 'racerobot_dohook', '', 50),
('racerobot', 'setrace', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'stablelocs', 'racerobot_dohook', '', 50),
('racerobot', 'stabletext', 'racerobot_dohook', 'if ($session[''user''][''location''] == "Cyber City 404") {return true;} else {return false;};', 50),
('racerobot', 'stamina-newday', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'startofround', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'validforestloc', 'racerobot_dohook', '', 50),
('racerobot', 'validlocation', 'racerobot_dohook', '', 50),
('racerobot', 'village', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racerobot', 'villagetext', 'racerobot_dohook', 'if ($session[''user''][''location''] == "Cyber City 404") {return true;} else {return false;};', 50),
('racerobot', 'worldnav', 'racerobot_dohook', 'if ($session[''user''][''race''] == "Robot") {return true;} else {return false;};', 50),
('racetroll', 'adjuststats', 'racetroll_dohook', '', 50),
('racetroll', 'changesetting', 'racetroll_dohook', '', 50),
('racetroll', 'chooserace', 'racetroll_dohook', '', 50),
('racetroll', 'moderate', 'racetroll_dohook', '', 50),
('racetroll', 'newday', 'racetroll_dohook', '', 50),
('racetroll', 'pvpadjust', 'racetroll_dohook', '', 50),
('racetroll', 'raceminedeath', 'racetroll_dohook', '', 50),
('racetroll', 'racenames', 'racetroll_dohook', '', 50),
('racetroll', 'setrace', 'racetroll_dohook', '', 50),
('racetroll', 'travel', 'racetroll_dohook', '', 50),
('racetroll', 'validforestloc', 'racetroll_dohook', '', 50),
('racetroll', 'validlocation', 'racetroll_dohook', '', 50),
('racetroll', 'villagetext', 'racetroll_dohook', '', 50),
('racezombie', 'battle-victory', 'racezombie_dohook', '', 50),
('racezombie', 'changesetting', 'racezombie_dohook', '', 50),
('racezombie', 'chooserace', 'racezombie_dohook', '', 50),
('racezombie', 'moderate', 'racezombie_dohook', '', 50),
('racezombie', 'racenames', 'racezombie_dohook', '', 50),
('racezombie', 'setrace', 'racezombie_dohook', '', 50),
('racezombie', 'stablelocs', 'racezombie_dohook', '', 50),
('racezombie', 'stabletext', 'racezombie_dohook', '', 50),
('racezombie', 'stamina-newday', 'racezombie_dohook', '', 50),
('racezombie', 'validforestloc', 'racezombie_dohook', '', 50),
('racezombie', 'validlocation', 'racezombie_dohook', '', 50),
('racezombie', 'villagetext', 'racezombie_dohook', '', 50),
('riddles', 'superuser', 'riddles_dohook', '', 50),
('sethsong', 'inn', 'sethsong_dohook', '', 50),
('sethsong', 'newday', 'sethsong_dohook', '', 50),
('specialtydarkarts', 'apply-specialties', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'choose-specialty', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'dragonkill', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'fightnav-specialties', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'incrementspecialty', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'newday', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'set-specialty', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'specialtycolor', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'specialtymodules', 'specialtydarkarts_dohook', '', 50),
('specialtydarkarts', 'specialtynames', 'specialtydarkarts_dohook', '', 50),
('specialtymysticpower', 'apply-specialties', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'choose-specialty', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'dragonkill', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'fightnav-specialties', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'incrementspecialty', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'newday', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'set-specialty', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'specialtycolor', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'specialtymodules', 'specialtymysticpower_dohook', '', 50),
('specialtymysticpower', 'specialtynames', 'specialtymysticpower_dohook', '', 50),
('specialtythiefskills', 'apply-specialties', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'choose-specialty', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'dragonkill', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'fightnav-specialties', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'incrementspecialty', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'newday', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'set-specialty', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'specialtycolor', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'specialtymodules', 'specialtythiefskills_dohook', '', 50),
('specialtythiefskills', 'specialtynames', 'specialtythiefskills_dohook', '', 50),
('staminafood', 'dragonkill', 'staminafood_dohook', '', 50),
('staminafood', 'stamina-newday', 'staminafood_dohook', '', 50),
('staminafood', 'stamina-newday-intercept', 'staminafood_dohook', '', 50),
('staminafood', 'village', 'staminafood_dohook', '', 50),
('staminahof', 'footer-hof', 'staminahof_dohook', '', 50),
('staminamounts', 'boughtmount', 'staminamounts_dohook', '', 50),
('staminamounts', 'soldmount', 'staminamounts_dohook', '', 50),
('staminamounts', 'stamina-newday', 'staminamounts_dohook', '', 50),
('staminasystem', 'charstats', 'staminasystem_dohook', '', 99),
('staminasystem', 'dragonkill', 'staminasystem_dohook', '', 50),
('staminasystem', 'newday', 'staminasystem_dohook', '', 99),
('staminasystem', 'superuser', 'staminasystem_dohook', '', 50),
('staminatest', 'superuser', 'staminatest_dohook', '', 50),
('stocks', 'dragonkill', 'stocks_dohook', '', 50),
('stocks', 'namechange', 'stocks_dohook', '', 50),
('stocks', 'village-desc', 'stocks_dohook', '', 50),
('stonehenge', 'hprecalc', 'stonehenge_dohook', '', 50),
('timeandweather', 'charstats', 'timeandweather_dohook', '', 50),
('timeandweather', 'prerender', 'timeandweather_dohook', '', 50),
('timeandweather', 'worldnav', 'timeandweather_dohook', '', 50),
('timeandweather_outposts', 'villagetext', 'timeandweather_outposts_dohook', '', 100),
('tips', 'charstats', 'tips_dohook', '', 50),
('translationconvert', 'superuser', 'translationconvert_dohook', '', 50),
('translationwizard', 'header-modules', 'translationwizard_dohook', '', 50),
('translationwizard', 'superuser', 'translationwizard_dohook', '', 50),
('turretdefense', 'onslaught', 'turretdefense_dohook', '', 50),
('turretdefense', 'village', 'turretdefense_dohook', '', 50),
('tynan', 'adjuststats', 'tynan_dohook', '', 50),
('tynan', 'changesetting', 'tynan_dohook', '', 50),
('tynan', 'newday', 'tynan_dohook', '', 10),
('tynan', 'pvpadjust', 'tynan_dohook', '', 50),
('tynan', 'village', 'tynan_dohook', '', 50),
('uniqueforests', 'collect-events', 'uniqueforests_dohook', '', 50),
('uniqueforests', 'footer-forest', 'uniqueforests_dohook', '', 50),
('uniqueforests', 'forest-desc', 'uniqueforests_dohook', '', 50),
('uniqueforests', 'header-forest', 'uniqueforests_dohook', '', 50),
('uniqueforests', 'village', 'uniqueforests_dohook', '', 20),
('vendingmachine', 'newday', 'vendingmachine_dohook', '', 50),
('vendingmachine', 'village', 'vendingmachine_dohook', '', 50),
('viewmybio', 'commentaryoptions', 'viewmybio_dohook', '', 50),
('watcher_quests', 'mausoleum', 'watcher_quests_dohook', '', 50),
('watcher_quests', 'village', 'watcher_quests_dohook', '', 50),
('wcgpoints', 'gardens', 'wcgpoints_dohook', '', 50),
('wcgpoints', 'moderate', 'wcgpoints_dohook', '', 50),
('wcgpoints', 'newday', 'wcgpoints_dohook', '', 50),
('wcgpoints_newdaystamina', 'stamina-newday', 'wcgpoints_newdaystamina_dohook', '', 50),
('wcgpoints_newdaystamina', 'wcg-features-desc', 'wcgpoints_newdaystamina_dohook', '', 50),
('wcgpoints_newdaystamina', 'wcgpoints_increased', 'wcgpoints_newdaystamina_dohook', '', 50),
('wcgpoints_supporterpoints', 'wcg-features-desc', 'wcgpoints_supporterpoints_dohook', '', 50),
('wcgpoints_supporterpoints', 'wcgpoints_increased', 'wcgpoints_supporterpoints_dohook', '', 50),
('worldmapen', 'boughtmount', 'worldmapen_dohook', '', 50),
('worldmapen', 'changesetting', 'worldmapen_dohook', '', 50),
('worldmapen', 'count-travels', 'worldmapen_dohook', '', 50),
('worldmapen', 'footer-gypsy', 'worldmapen_dohook', '', 50),
('worldmapen', 'items-returnlinks', 'worldmapen_dohook', '', 50),
('worldmapen', 'mundanenav', 'worldmapen_dohook', '', 50),
('worldmapen', 'newday', 'worldmapen_dohook', '', 50),
('worldmapen', 'pvpcount', 'worldmapen_dohook', '', 50),
('worldmapen', 'superuser', 'worldmapen_dohook', '', 50),
('worldmapen', 'village', 'worldmapen_dohook', '', 50),
('worldmapen', 'villagenav', 'worldmapen_dohook', '', 50),
('worldmapwn', 'changesetting', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'footer-gypsy', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'iitems_eboy_gypsy', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'items-returnlinks', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'mundanenav', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'newday', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'superuser', 'worldmapwn_dohook', '', 50),
('worldmapwn', 'village', 'worldmapwn_dohook', '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `free_module_objprefs`
--

CREATE TABLE IF NOT EXISTS `free_module_objprefs` (
  `modulename` varchar(50) NOT NULL,
  `objtype` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `objid` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`modulename`,`objtype`,`setting`,`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_module_objprefs`
--

INSERT INTO `free_module_objprefs` (`modulename`, `objtype`, `setting`, `objid`, `value`) VALUES
('cities', 'drinks', 'servedcapital', 1, '1'),
('cities', 'drinks', 'servedcapital', 2, '1'),
('cities', 'drinks', 'servedcapital', 3, '1'),
('clanbuffs', 'clans', 'atkactive', 1, '1'),
('clanbuffs', 'clans', 'atklevel', 1, '25'),
('clanbuffs', 'clans', 'buffactive', 1, '1'),
('clanbuffs', 'clans', 'catsactive', 1, '6'),
('clanbuffs', 'clans', 'defactive', 1, '1'),
('clanbuffs', 'clans', 'deflevel', 1, '25'),
('clanbuffs', 'clans', 'drainactive', 1, '1'),
('clanbuffs', 'clans', 'drainlevel', 1, '25'),
('clanbuffs', 'clans', 'gems', 1, '1375'),
('clanbuffs', 'clans', 'regenactive', 1, '1'),
('clanbuffs', 'clans', 'regenlevel', 1, '25'),
('clanbuffs', 'clans', 'roundlevel', 1, '15'),
('clanbuffs', 'clans', 'thornactive', 1, '1'),
('clanbuffs', 'clans', 'thornlevel', 1, '25'),
('clanbuffs', 'clans', 'totallevel', 1, '25.1'),
('clanbuffs', 'clans', 'ultactive', 1, '0'),
('clanbuffs', 'clans', 'ultready', 1, '0'),
('darkhorse', 'mounts', 'findtavern', 0, '0'),
('darkhorse', 'mounts', 'findtavern', 1, '0'),
('darkhorse', 'mounts', 'findtavern', 2, '0'),
('darkhorse', 'mounts', 'findtavern', 3, '0'),
('goldmine', 'mounts', 'entermine', 3, '0'),
('goldmine', 'mounts', 'tethermsg', 3, ''),
('onslaught', 'city', 'breachpoint', 1, '1000'),
('onslaught', 'city', 'breachpoint', 2, '1000'),
('onslaught', 'city', 'breachpoint', 3, '1000'),
('onslaught', 'city', 'breachpoint', 4, '1000'),
('onslaught', 'city', 'breachpoint', 5, '1000'),
('onslaught', 'city', 'breachpoint', 6, '1000'),
('onslaught', 'city', 'breachpoint', 7, '1000'),
('onslaught', 'city', 'breachpoint', 8, '1000'),
('onslaught', 'city', 'breachpoint', 9, '1000'),
('onslaught', 'city', 'breachpoint', 10, '1000'),
('onslaught', 'city', 'breachpoint', 11, '1000'),
('onslaught', 'city', 'creatures', 1, '0'),
('onslaught', 'city', 'creatures', 2, '0'),
('onslaught', 'city', 'creatures', 3, '0'),
('onslaught', 'city', 'creatures', 4, '0'),
('onslaught', 'city', 'creatures', 5, '0'),
('onslaught', 'city', 'creatures', 6, '0'),
('onslaught', 'city', 'creatures', 7, '0'),
('onslaught', 'city', 'creatures', 8, '0'),
('onslaught', 'city', 'creatures', 9, '0'),
('onslaught', 'city', 'creatures', 10, '0'),
('onslaught', 'city', 'creatures', 11, '0'),
('onslaught', 'city', 'defences', 1, '1000000'),
('onslaught', 'city', 'defences', 2, '1000000'),
('onslaught', 'city', 'defences', 3, '1000000'),
('onslaught', 'city', 'defences', 4, '1000000'),
('onslaught', 'city', 'defences', 5, '1000000'),
('onslaught', 'city', 'defences', 6, '1000000'),
('onslaught', 'city', 'defences', 7, '1000000'),
('onslaught', 'city', 'defences', 8, '1000000'),
('onslaught', 'city', 'defences', 9, '1000000'),
('onslaught', 'city', 'defences', 10, '1000000'),
('onslaught', 'city', 'defences', 11, '1000000'),
('onslaught', 'city', 'spawnrate', 1, '10'),
('onslaught', 'city', 'spawnrate', 2, '9'),
('onslaught', 'city', 'spawnrate', 3, '169'),
('onslaught', 'city', 'spawnrate', 4, '67'),
('onslaught', 'city', 'spawnrate', 5, '179'),
('onslaught', 'city', 'spawnrate', 6, '52'),
('onslaught', 'city', 'spawnrate', 7, '54'),
('onslaught', 'city', 'spawnrate', 8, '78'),
('onslaught', 'city', 'spawnrate', 9, '107'),
('onslaught', 'city', 'spawnrate', 10, '36'),
('onslaught', 'city', 'spawnrate', 11, '110'),
('racedwarf', 'drinks', 'servedkeg', 1, '0'),
('racedwarf', 'drinks', 'servedkeg', 2, '0'),
('racedwarf', 'drinks', 'servedkeg', 3, '0'),
('turretdefense', 'city', 'citycobbles', 1, '906'),
('uniqueforests', 'city', 'use', 1, '0'),
('uniqueforests', 'city', 'use', 4, '0'),
('uniqueforests', 'city', 'use', 5, '0'),
('uniqueforests', 'city', 'use', 6, '0'),
('uniqueforests', 'city', 'use', 9, '0'),
('uniqueforests', 'city', 'use', 10, '0'),
('uniqueforests', 'city', 'use', 11, '0'),
('worldmapen', 'mounts', 'encounterForest', 3, '1'),
('worldmapwn', 'city', 'worldXYZ', 1, '5,6,1'),
('worldmapwn', 'city', 'worldXYZ', 2, '8,6,1'),
('worldmapwn', 'city', 'worldXYZ', 3, '6,4,1'),
('worldmapwn', 'city', 'worldXYZ', 4, '4,3,1'),
('worldmapwn', 'city', 'worldXYZ', 5, '1,8,1'),
('worldmapwn', 'city', 'worldXYZ', 6, '4,9,1'),
('worldmapwn', 'city', 'worldXYZ', 7, '6,9,1'),
('worldmapwn', 'city', 'worldXYZ', 8, '3,1,1'),
('worldmapwn', 'city', 'worldXYZ', 9, '4,4,1'),
('worldmapwn', 'city', 'worldXYZ', 10, '10,9,1'),
('worldmapwn', 'city', 'worldXYZ', 11, '8,3,1');

-- --------------------------------------------------------

--
-- Table structure for table `free_module_settings`
--

CREATE TABLE IF NOT EXISTS `free_module_settings` (
  `modulename` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`modulename`,`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_module_settings`
--

INSERT INTO `free_module_settings` (`modulename`, `setting`, `value`) VALUES
('ajaxcommentary', 'timeout', '15'),
('bioextension', 'charlimit', '10000'),
('bioextension', 'threshhold', '500'),
('cakeordeath', 'counter', '100'),
('cedrikspotions', 'atkmod', '.75'),
('cedrikspotions', 'carrydk', '1'),
('cedrikspotions', 'charmcost', '2'),
('cedrikspotions', 'charmgain', '1'),
('cedrikspotions', 'defmod', '.75'),
('cedrikspotions', 'forgcost', '2'),
('cedrikspotions', 'ischarm', '1'),
('cedrikspotions', 'isforget', '1'),
('cedrikspotions', 'ismax', '1'),
('cedrikspotions', 'istemp', '1'),
('cedrikspotions', 'istrans', '1'),
('cedrikspotions', 'maxcost', '2'),
('cedrikspotions', 'maxrand', '5'),
('cedrikspotions', 'minrand', '2'),
('cedrikspotions', 'randcost', '2'),
('cedrikspotions', 'random', '0'),
('cedrikspotions', 'survive', '1'),
('cedrikspotions', 'tempcost', '2'),
('cedrikspotions', 'tempgain', '20'),
('cedrikspotions', 'transcost', '2'),
('cedrikspotions', 'transmuteturns', '10'),
('cedrikspotions', 'vitalgain', '1'),
('clanbuffs', 'allowatk', '1'),
('clanbuffs', 'allowdef', '1'),
('clanbuffs', 'allowdrain', '1'),
('clanbuffs', 'allowinpvp', '0'),
('clanbuffs', 'allowintrain', '0'),
('clanbuffs', 'allowregen', '1'),
('clanbuffs', 'allowthorn', '1'),
('clanbuffs', 'allowult', '1'),
('clanbuffs', 'atkaprice', '150'),
('clanbuffs', 'atkbase', '25'),
('clanbuffs', 'atkinc', '25'),
('clanbuffs', 'buffaprice', '100'),
('clanbuffs', 'costarray', 'a:8:{s:3:"atk";a:27:{s:6:"active";s:3:"150";i:0;i:0;i:1;s:2:"25";i:2;i:75;i:3;i:150;i:4;i:250;i:5;i:375;i:6;i:525;i:7;i:700;i:8;i:900;i:9;i:1125;i:10;i:1375;i:11;i:1650;i:12;i:1950;i:13;i:2275;i:14;i:2625;i:15;i:3000;i:16;i:3400;i:17;i:3825;i:18;i:4275;i:19;i:4750;i:20;i:5250;i:21;i:5775;i:22;i:6325;i:23;i:6900;i:24;i:7500;i:25;i:8125;}s:3:"def";a:27:{s:6:"active";s:3:"150";i:0;i:0;i:1;s:2:"25";i:2;i:75;i:3;i:150;i:4;i:250;i:5;i:375;i:6;i:525;i:7;i:700;i:8;i:900;i:9;i:1125;i:10;i:1375;i:11;i:1650;i:12;i:1950;i:13;i:2275;i:14;i:2625;i:15;i:3000;i:16;i:3400;i:17;i:3825;i:18;i:4275;i:19;i:4750;i:20;i:5250;i:21;i:5775;i:22;i:6325;i:23;i:6900;i:24;i:7500;i:25;i:8125;}s:5:"drain";a:27:{s:6:"active";s:3:"150";i:0;i:0;i:1;s:2:"25";i:2;i:75;i:3;i:150;i:4;i:250;i:5;i:375;i:6;i:525;i:7;i:700;i:8;i:900;i:9;i:1125;i:10;i:1375;i:11;i:1650;i:12;i:1950;i:13;i:2275;i:14;i:2625;i:15;i:3000;i:16;i:3400;i:17;i:3825;i:18;i:4275;i:19;i:4750;i:20;i:5250;i:21;i:5775;i:22;i:6325;i:23;i:6900;i:24;i:7500;i:25;i:8125;}s:5:"thorn";a:27:{s:6:"active";s:3:"150";i:0;i:0;i:1;s:2:"25";i:2;i:75;i:3;i:150;i:4;i:250;i:5;i:375;i:6;i:525;i:7;i:700;i:8;i:900;i:9;i:1125;i:10;i:1375;i:11;i:1650;i:12;i:1950;i:13;i:2275;i:14;i:2625;i:15;i:3000;i:16;i:3400;i:17;i:3825;i:18;i:4275;i:19;i:4750;i:20;i:5250;i:21;i:5775;i:22;i:6325;i:23;i:6900;i:24;i:7500;i:25;i:8125;}s:5:"regen";a:27:{s:6:"active";s:3:"150";i:0;i:0;i:1;s:2:"25";i:2;i:75;i:3;i:150;i:4;i:250;i:5;i:375;i:6;i:525;i:7;i:700;i:8;i:900;i:9;i:1125;i:10;i:1375;i:11;i:1650;i:12;i:1950;i:13;i:2275;i:14;i:2625;i:15;i:3000;i:16;i:3400;i:17;i:3825;i:18;i:4275;i:19;i:4750;i:20;i:5250;i:21;i:5775;i:22;i:6325;i:23;i:6900;i:24;i:7500;i:25;i:8125;}s:5:"round";a:16:{i:0;i:0;i:1;s:2:"15";i:2;i:45;i:3;i:90;i:4;i:150;i:5;i:225;i:6;i:315;i:7;i:420;i:8;i:540;i:9;i:675;i:10;i:825;i:11;i:990;i:12;i:1170;i:13;i:1365;i:14;i:1575;i:15;i:1800;}s:3:"ult";a:2:{s:5:"allow";i:43175;s:6:"active";s:3:"750";}s:5:"total";i:43925;}'),
('clanbuffs', 'defaprice', '150'),
('clanbuffs', 'defbase', '25'),
('clanbuffs', 'definc', '25'),
('clanbuffs', 'drainaprice', '150'),
('clanbuffs', 'drainbase', '25'),
('clanbuffs', 'draininc', '25'),
('clanbuffs', 'eatkbase', '0'),
('clanbuffs', 'eatkinc', '0.05'),
('clanbuffs', 'edefbase', '0'),
('clanbuffs', 'edefinc', '0.05'),
('clanbuffs', 'edrainbase', '0'),
('clanbuffs', 'edraininc', '0.03'),
('clanbuffs', 'eregenbase', '0'),
('clanbuffs', 'eregeninc', '0.1'),
('clanbuffs', 'eroundbase', '0'),
('clanbuffs', 'eroundinc', '10'),
('clanbuffs', 'ethornbase', '0'),
('clanbuffs', 'ethorninc', '0.03'),
('clanbuffs', 'hof', '1'),
('clanbuffs', 'maxatk', '25'),
('clanbuffs', 'maxcats', '100'),
('clanbuffs', 'maxdef', '25'),
('clanbuffs', 'maxdrain', '25'),
('clanbuffs', 'maxregen', '25'),
('clanbuffs', 'maxround', '15'),
('clanbuffs', 'maxthorn', '25'),
('clanbuffs', 'regenaprice', '150'),
('clanbuffs', 'regenbase', '25'),
('clanbuffs', 'regeninc', '25'),
('clanbuffs', 'remakecost', '0'),
('clanbuffs', 'roundbase', '15'),
('clanbuffs', 'roundinc', '15'),
('clanbuffs', 'showFormTabIndex', '1'),
('clanbuffs', 'thornaprice', '150'),
('clanbuffs', 'thornbase', '25'),
('clanbuffs', 'thorninc', '25'),
('clanbuffs', 'ultaprice', '750'),
('clancommentaryoverview', 'numcomments', '20'),
('clanmembercap', 'apps', '0'),
('clanmembercap', 'cost', '200'),
('clanmembercap', 'costincrease', '1.1'),
('clanmembercap', 'lim', '20'),
('crazyaudrey', 'animal', 'Kitten'),
('crazyaudrey', 'animals', 'Kittens'),
('crazyaudrey', 'buffname', 'Warm Fuzzies'),
('crazyaudrey', 'cost', '5'),
('crazyaudrey', 'defaultanimal', 'Kitten'),
('crazyaudrey', 'defaultanimals', 'Kittens'),
('crazyaudrey', 'defaultbuffname', 'Warm Fuzzies'),
('crazyaudrey', 'defaultsound', 'mew'),
('crazyaudrey', 'gamedaysremaining', '-1'),
('crazyaudrey', 'lanimal', 'kitten'),
('crazyaudrey', 'lanimals', 'kittens'),
('crazyaudrey', 'profit', '45'),
('crazyaudrey', 'sound', 'mew'),
('crazyaudrey', 'villagepercent', '20'),
('dag', 'bountyfee', '10'),
('dag', 'bountylevel', '3'),
('dag', 'bountymax', '200'),
('dag', 'bountymin', '50'),
('dag', 'maxbounties', '5'),
('darkhorse', 'showFormTabIndex', '1'),
('darkhorse', 'tavernname', 'Raven Inn'),
('drinks', 'hardlimit', '3'),
('drinks', 'maxdrunk', '66'),
('drpap', 'dk', '5'),
('drpap', 'gems', '10'),
('drpap', 'gold', '5000'),
('drpap', 'reset', '0'),
('drpap', 'times', '2'),
('fairy', 'carrydk', '1'),
('fairy', 'fftoaward', '1'),
('fairy', 'hptoaward', '1'),
('findgold', 'maxgold', '50'),
('findgold', 'mingold', '10'),
('game_fivesix', 'cost', '5'),
('game_fivesix', 'dailyuses', '10'),
('game_fivesix', 'jackpot', '100'),
('game_fivesix', 'lastpot3', '0'),
('game_fivesix', 'lastpot4', '0'),
('game_fivesix', 'lastpot5', '0'),
('game_fivesix', 'lastwin3', 'Nobody...yet'),
('game_fivesix', 'lastwin4', 'Nobody...yet'),
('game_fivesix', 'lastwin5', 'Nobody...yet'),
('game_fivesix', 'maxjackpot', '5000'),
('goldmine', 'alwaystether', '10'),
('goldmine', 'percentgemloss', '0'),
('goldmine', 'percentgoldloss', '0'),
('gravebless', 'basemultiplier', '1.0'),
('gravebless', 'blesscost', '500'),
('gravebless', 'cursechance', '1'),
('gravebless', 'cursemultiplier', '0.8'),
('gravebless', 'curserate', '1'),
('gravebless', 'minrez', '0'),
('iitemcrates', 'crates', 'a:238:{i:0;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:3;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:1;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:5;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:2;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:4;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:3;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:1;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:4;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:1;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:5;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:4;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:6;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:4;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:7;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:2;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:8;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:1;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:9;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:4;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:10;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:4;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:11;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:5;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:12;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:4;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:13;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:4;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:14;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:5;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:15;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:2;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:17;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:1;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:18;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:2;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:19;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:20;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:2;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:21;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:1;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:22;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:5;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:23;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:8;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:24;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:1;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:25;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:7;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:26;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:2;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:27;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:28;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:3;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:29;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:9;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:30;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:3;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:31;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:8;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:33;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:1;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:34;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:10;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:35;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:4;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:36;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:2;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:37;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:9;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:38;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:6;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:39;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:7;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:40;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:6;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:41;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:7;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:42;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:9;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:43;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:4;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:44;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:4;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:45;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:4;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:46;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:47;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:7;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:48;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:1;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:49;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:8;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:50;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:10;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:51;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:3;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:52;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:10;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:53;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:3;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:54;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:6;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:55;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:8;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:56;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:4;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:57;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:1;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:58;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:4;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:59;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:60;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:5;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:61;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:7;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:62;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:2;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:63;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:8;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:64;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:8;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:65;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:6;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:66;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:67;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:10;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:68;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:5;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:69;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:7;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:70;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:2;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:71;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:9;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:72;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:1;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:73;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:10;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:74;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:9;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:75;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:5;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:76;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:7;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:77;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:1;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:78;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:6;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:79;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:6;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:80;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:1;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:81;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:9;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:82;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:5;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:83;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:2;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:84;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:5;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:85;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:7;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:86;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:4;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:87;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:7;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:88;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:7;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:89;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:10;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:90;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:1;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:91;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:3;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:92;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:3;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:93;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:3;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:94;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:5;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:95;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:8;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:96;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:9;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:97;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:8;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:98;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:99;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:2;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:100;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:5;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:101;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:9;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:102;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:5;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:103;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:1;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:104;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:5;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:105;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:8;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:106;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:8;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:107;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:108;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:5;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:109;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:4;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:110;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:10;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:111;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:112;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:7;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:113;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:2;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:114;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:115;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:6;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:116;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:8;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:117;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:8;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:118;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:8;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:119;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:4;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:120;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:9;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:121;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:6;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:122;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:8;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:123;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:10;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:124;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:1;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:125;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:1;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:126;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:4;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:127;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:1;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:128;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:5;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:129;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:5;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:130;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:1;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:131;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:10;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:132;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:4;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:133;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:4;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:134;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:10;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:135;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:5;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:136;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:6;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:137;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:6;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:138;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:2;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:139;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:1;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:140;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:8;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:141;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:7;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:142;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:3;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:143;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:9;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:144;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:4;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:145;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:1;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:146;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:6;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:147;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:10;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:148;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:6;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:149;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:2;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:150;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:7;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:151;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:3;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:152;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:4;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:153;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:6;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:154;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:4;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:155;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:4;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:156;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:3;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:157;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:5;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:158;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:3;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:159;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:10;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:160;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:6;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:161;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:4;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:162;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:4;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:163;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:3;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:164;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:3;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:165;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:8;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:166;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:1;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:167;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:3;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:168;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:5;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:169;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:170;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:1;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:171;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:4;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:172;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:4;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:173;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:8;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:174;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:10;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:175;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:7;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:176;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:3;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:177;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:3;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:178;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:4;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:179;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:7;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:180;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:6;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:181;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:3;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:182;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:3;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:183;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:184;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:7;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:185;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:9;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:186;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:4;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:187;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:188;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:7;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:189;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:4;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:190;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:7;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:191;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:8;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:192;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:2;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:193;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:4;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:194;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:5;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:195;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:7;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:196;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:5;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:197;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:198;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:199;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:200;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:10;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:201;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:7;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:202;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:1;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:203;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:10;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:204;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:10;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:205;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:7;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:206;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:7;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:207;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:6;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:208;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:9;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:209;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:1;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:210;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:7;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:211;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:8;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:212;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:213;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:4;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:214;a:2:{s:3:"loc";a:2:{s:1:"x";i:9;s:1:"y";i:2;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:215;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:4;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:216;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:3;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:217;a:2:{s:3:"loc";a:2:{s:1:"x";i:3;s:1:"y";i:5;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:218;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:7;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}i:219;a:2:{s:3:"loc";a:2:{s:1:"x";i:2;s:1:"y";i:5;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:220;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:2;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:221;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:10;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:222;a:2:{s:3:"loc";a:2:{s:1:"x";i:7;s:1:"y";i:3;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:223;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:3;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:224;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:9;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:225;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:8;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:226;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:3;}s:8:"contents";a:3:{i:0;N;i:1;N;i:2;N;}}i:227;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:6;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:228;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:9;}s:8:"contents";a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;}}i:229;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:5;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:230;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:5;}s:8:"contents";a:5:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;}}i:231;a:2:{s:3:"loc";a:2:{s:1:"x";i:8;s:1:"y";i:1;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:232;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:3;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:233;a:2:{s:3:"loc";a:2:{s:1:"x";i:6;s:1:"y";i:9;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:234;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:10;}s:8:"contents";a:9:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;}}i:235;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:5;}s:8:"contents";a:2:{i:0;N;i:1;N;}}i:236;a:2:{s:3:"loc";a:2:{s:1:"x";i:10;s:1:"y";i:10;}s:8:"contents";a:7:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}}i:237;a:2:{s:3:"loc";a:2:{s:1:"x";i:4;s:1:"y";i:4;}s:8:"contents";a:8:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;}}i:238;a:2:{s:3:"loc";a:2:{s:1:"x";i:1;s:1:"y";i:7;}s:8:"contents";a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}}i:239;a:2:{s:3:"loc";a:2:{s:1:"x";i:5;s:1:"y";i:10;}s:8:"contents";a:10:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}}}'),
('iitemcrates', 'dailyadditions', '10'),
('iitemcrates', 'donationaddition', '100'),
('iitemcrates', 'maxitems', '10'),
('iitemcrates', 'minitems', '2'),
('iitems', 'fightinventory', '0'),
('iitems_crates_gypsy', 'cost', '4'),
('iitems_eboy_gypsy', 'cost', '2'),
('iitems_giftstation', 'itemlimit', '5'),
('iitems_giftstation', 'weightlimit', '3'),
('iitems_worldmapdrop', 'iitemsquares', 'a:0:{}'),
('improbablehousing_secretrooms', 'cost', '500'),
('improbablehousing_teleportbeacon', 'costperday', '4'),
('improbablehousing_teleportbeacon', 'startupcost', '50'),
('oldman', 'carrydk', '1'),
('onslaught', 'damagemultiplier', '0'),
('onslaught', 'difficulty', '90'),
('onslaught', 'lastspawn', '1334000700'),
('onslaught', 'showFormTabIndex', '1'),
('onslaught', 'spawnevery', '600'),
('onslaught', 'spawnrate', '99'),
('onslaught', 'testmode', '0'),
('outhouse', 'badmusthit', '50'),
('outhouse', 'cost', '5'),
('outhouse', 'giveback', '3'),
('outhouse', 'givegempercent', '25'),
('outhouse', 'giveturnchance', '0'),
('outhouse', 'goldinhand', '1'),
('outhouse', 'goodmusthit', '60'),
('outhouse', 'takeback', '1'),
('pinata', 'active', '0'),
('pinata', 'maxhit', '1'),
('pinata', 'party', '1'),
('pktrack', 'dispad', '1'),
('pktrack', 'losses', '0'),
('pktrack', 'pp', '50'),
('pktrack', 'shz', '1'),
('pktrack', 'wo', '0'),
('racedwarf', 'minedeathchance', '5'),
('racedwarf', 'villagename', 'Qexelcrag'),
('raceelf', 'minedeathchance', '90'),
('raceelf', 'villagename', 'Glorfindal'),
('racegobot', 'minedeathchance', '90'),
('racehuman', 'bonus', '2'),
('racehuman', 'minedeathchance', '90'),
('racehuman', 'villagename', 'Romar'),
('racetroll', 'minedeathchance', '90'),
('racetroll', 'villagename', 'Glukmoore'),
('sethsong', 'bhploss', '10'),
('sethsong', 'goldloss', '5'),
('sethsong', 'hpgain', '20'),
('sethsong', 'maxgems', '1'),
('sethsong', 'maxgold', '50'),
('sethsong', 'mingems', '1'),
('sethsong', 'mingold', '10'),
('sethsong', 'shploss', '20'),
('sethsong', 'visits', '1'),
('staminasystem', 'actionsarray', 'a:32:{s:20:"Cleaning the Carcass";a:6:{s:7:"maxcost";i:15000;s:7:"mincost";i:2000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0700000000000000621724893790087662637233734130859375;s:13:"costreduction";i:130;s:5:"class";s:4:"Meat";}s:7:"Cooking";a:6:{s:7:"maxcost";i:8000;s:7:"mincost";i:1000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:70;s:5:"class";s:4:"Meat";}s:7:"Logging";a:6:{s:7:"maxcost";i:50000;s:7:"mincost";i:20000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:300;s:5:"class";s:8:"Building";}s:12:"Stonecutting";a:6:{s:7:"maxcost";i:50000;s:7:"mincost";i:20000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:300;s:5:"class";s:8:"Building";}s:16:"Hunting - Normal";a:6:{s:7:"maxcost";i:25000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:150;s:5:"class";s:7:"Hunting";}s:21:"Hunting - Big Trouble";a:6:{s:7:"maxcost";i:30000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:200;s:5:"class";s:7:"Hunting";}s:21:"Hunting - Easy Fights";a:6:{s:7:"maxcost";i:20000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:100;s:5:"class";s:7:"Hunting";}s:18:"Hunting - Suicidal";a:6:{s:7:"maxcost";i:35000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:250;s:5:"class";s:7:"Hunting";}s:19:"Fighting - Standard";a:6:{s:7:"maxcost";i:2000;s:7:"mincost";i:500;s:11:"firstlvlexp";i:2000;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:15;s:5:"class";s:6:"Combat";}s:12:"Running Away";a:6:{s:7:"maxcost";i:1000;s:7:"mincost";i:200;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:8;s:5:"class";s:6:"Combat";}s:21:"Taking It on the Chin";a:6:{s:7:"maxcost";i:2000;s:7:"mincost";i:200;s:11:"firstlvlexp";i:5000;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:15;s:5:"class";s:6:"Combat";}s:13:"Reinforcement";a:6:{s:7:"maxcost";i:5000;s:7:"mincost";i:2000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:30;s:5:"class";s:8:"Building";}s:19:"Travelling - Plains";a:6:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";}s:19:"Travelling - Jungle";a:6:{s:7:"maxcost";i:10000;s:7:"mincost";i:4000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:60;s:5:"class";s:10:"Travelling";}s:18:"Travelling - River";a:6:{s:7:"maxcost";i:15000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:100;s:5:"class";s:10:"Travelling";}s:18:"Travelling - Ocean";a:6:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";}s:22:"Travelling - Mountains";a:6:{s:7:"maxcost";i:20000;s:7:"mincost";i:6000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:140;s:5:"class";s:10:"Travelling";}s:17:"Travelling - Snow";a:6:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";}s:18:"Travelling - Beach";a:6:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";}s:18:"Travelling - Swamp";a:6:{s:7:"maxcost";i:12500;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:75;s:5:"class";s:10:"Travelling";}s:7:"Masonry";a:6:{s:7:"maxcost";i:50000;s:7:"mincost";i:20000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:300;s:5:"class";s:8:"Building";}s:9:"Carpentry";a:6:{s:7:"maxcost";i:50000;s:7:"mincost";i:20000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:300;s:5:"class";s:8:"Building";}s:10:"Decorating";a:6:{s:7:"maxcost";i:50000;s:7:"mincost";i:20000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:300;s:5:"class";s:8:"Building";}s:17:"Travelling - Flat";a:6:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";}s:19:"Travelling - Forest";a:6:{s:7:"maxcost";i:10000;s:7:"mincost";i:4000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:60;s:5:"class";s:10:"Travelling";}s:18:"Travelling - Hills";a:6:{s:7:"maxcost";i:17000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:120;s:5:"class";s:10:"Travelling";}s:17:"Travelling - Cave";a:6:{s:7:"maxcost";i:17000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:120;s:5:"class";s:10:"Travelling";}s:19:"Travelling - Frozen";a:6:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";}s:17:"Travelling - Sand";a:6:{s:7:"maxcost";i:6000;s:7:"mincost";i:3000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:30;s:5:"class";s:10:"Travelling";}s:26:"Travelling - Shallow Water";a:6:{s:7:"maxcost";i:15000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:100;s:5:"class";s:10:"Travelling";}s:23:"Travelling - Deep Water";a:6:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";}s:19:"Travelling - Flying";a:6:{s:7:"maxcost";i:15000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:76;s:5:"class";s:10:"Travelling";}}'),
('staminasystem', 'turns_emulation_base', '20000'),
('staminasystem', 'turns_emulation_ceiling', '30000'),
('stocks', 'victim', '2'),
('stonehenge', 'carrydk', '1'),
('stonehenge', 'maxhp', '3'),
('timeandweather', 'changeevery', '1200'),
('timeandweather', 'currentweather', '3'),
('timeandweather', 'lastupdate', '1334000700'),
('timeandweather', 'lastweather', '4'),
('translationwizard', 'autoscan', '0'),
('translationwizard', 'blockcentral', '0'),
('translationwizard', 'blocktrans', '0'),
('translationwizard', 'page', '20'),
('translationwizard', 'query', '0'),
('translationwizard', 'restricted', '0'),
('translationwizard', 'translationdelete', '0'),
('turretdefense', 'cobbledamage', '1'),
('turretdefense', 'maxcobbles', '-1'),
('turretdefense', 'maxmonsterhp', '150'),
('turretdefense', 'mincobbles', '0'),
('turretdefense', 'minmonsterhp', '50'),
('turretdefense', 'minthreatlevel', '40'),
('turretdefense', 'monstereachchance', '10'),
('turretdefense', 'showFormTabIndex', '1'),
('tynan', 'all_locs', '1'),
('tynan', 'gymloc', 'Improbable Central'),
('vendingmachine', 'daysinplace', '0'),
('vendingmachine', 'daysstationary', '42'),
('vendingmachine', 'location', '1'),
('vendingmachine', 'showFormTabIndex', '1'),
('wcgpoints', 'teamid', '13F2W0053V1'),
('wcgpoints_supporterpoints', 'initialrequirement', '86400'),
('wcgpoints_supporterpoints', 'initialreward', '500'),
('worldmapen', 'AceHighX', '8'),
('worldmapen', 'AceHighY', '6'),
('worldmapen', 'AceHighZ', '1'),
('worldmapen', 'allowzeroturns', '1'),
('worldmapen', 'colorAir', '#0000FF'),
('worldmapen', 'colorDesert', '#DDDD33'),
('worldmapen', 'colorEarth', '#000000'),
('worldmapen', 'colorForest', '#005500'),
('worldmapen', 'colorMount', '#999999'),
('worldmapen', 'colorOcean', '#000066'),
('worldmapen', 'colorPlains', '#008800'),
('worldmapen', 'colorRiver', '#0000CC'),
('worldmapen', 'colorSnow', '#FFFFFF'),
('worldmapen', 'colorSwamp', '#669900'),
('worldmapen', 'colorUserLoc', '#FF9900'),
('worldmapen', 'compasspoints', '1'),
('worldmapen', 'Cyber City 404X', '6'),
('worldmapen', 'Cyber City 404Y', '4'),
('worldmapen', 'Cyber City 404Z', '1'),
('worldmapen', 'eBoundary', 'The vast ocean of silence lay to your east.  Long before you can remember ships stopped sailing across to the other continents.  But why?'),
('worldmapen', 'enableTerrains', '1'),
('worldmapen', 'encounterAir', '0'),
('worldmapen', 'encounterDesert', '85'),
('worldmapen', 'encounterEarth', '1'),
('worldmapen', 'encounterForest', '85'),
('worldmapen', 'encounterMount', '20'),
('worldmapen', 'encounterOcean', '20'),
('worldmapen', 'encounterPlains', '20'),
('worldmapen', 'encounterRiver', '20'),
('worldmapen', 'encounterSnow', '20'),
('worldmapen', 'encounterSwamp', '85'),
('worldmapen', 'extraTravels', '5'),
('worldmapen', 'GlorfindalX', '4'),
('worldmapen', 'GlorfindalY', '3'),
('worldmapen', 'GlorfindalZ', '1'),
('worldmapen', 'GlukmooreX', '1'),
('worldmapen', 'GlukmooreY', '8'),
('worldmapen', 'GlukmooreZ', '1'),
('worldmapen', 'Improbable CentralX', '5'),
('worldmapen', 'Improbable CentralY', '6'),
('worldmapen', 'Improbable CentralZ', '1'),
('worldmapen', 'KittaniaX', '4'),
('worldmapen', 'KittaniaY', '9'),
('worldmapen', 'KittaniaZ', '1'),
('worldmapen', 'LeaveGates1', 'A shiver runs down your back as you face the forest around you.'),
('worldmapen', 'LeaveGates2', 'You''re all alone now...'),
('worldmapen', 'LeaveGates3', 'The sound of the forest settles in around you as you think to yourself what evil must lurk within.'),
('worldmapen', 'LeaveGates4', 'Perhaps I should go back in...'),
('worldmapen', 'LeaveGates5', 'A howling noise bellows from deep within the forest.  You hear the guards from the other side of the gates yell "Good Luck!" and what sounds like "they''ll never make it.'),
('worldmapen', 'manualmove', '0'),
('worldmapen', 'moveCostAir', '1000'),
('worldmapen', 'moveCostDesert', '2'),
('worldmapen', 'moveCostEarh', '1000'),
('worldmapen', 'moveCostForest', '1'),
('worldmapen', 'moveCostMount', '3'),
('worldmapen', 'moveCostOcean', '5'),
('worldmapen', 'moveCostPlains', '1'),
('worldmapen', 'moveCostRiver', '1'),
('worldmapen', 'moveCostSnow', '3'),
('worldmapen', 'moveCostSwamp', '2'),
('worldmapen', 'nBoundary', 'To the north are the impenetrable mountains of Loa.'),
('worldmapen', 'New PittsburghX', '6'),
('worldmapen', 'New PittsburghY', '9'),
('worldmapen', 'New PittsburghZ', '1'),
('worldmapen', 'PleasantvilleX', '3'),
('worldmapen', 'PleasantvilleY', '1'),
('worldmapen', 'PleasantvilleZ', '1'),
('worldmapen', 'QexelcragX', '4'),
('worldmapen', 'QexelcragY', '4'),
('worldmapen', 'QexelcragZ', '1'),
('worldmapen', 'randchance', '5'),
('worldmapen', 'randevent', 'forest'),
('worldmapen', 'RomarX', '10'),
('worldmapen', 'RomarY', '9'),
('worldmapen', 'RomarZ', '1'),
('worldmapen', 'sBoundary', 'To the south you can see a great ravine that seems to stretch on forever.'),
('worldmapen', 'showcities', '1'),
('worldmapen', 'showcompass', '1'),
('worldmapen', 'showforestnav', '0'),
('worldmapen', 'showFormTabIndex', '6'),
('worldmapen', 'smallmap', '1'),
('worldmapen', 'Squat HoleX', '8'),
('worldmapen', 'Squat HoleY', '3'),
('worldmapen', 'Squat HoleZ', '1'),
('worldmapen', 'TerrainDefinition', 'a:3:{i:0;a:5:{i:1;a:5:{i:1;s:5:"Earth";i:2;s:5:"Earth";i:3;s:5:"Earth";i:4;s:5:"Earth";i:5;s:5:"Earth";}i:2;a:5:{i:1;s:5:"Earth";i:2;s:5:"Earth";i:3;s:5:"Earth";i:4;s:5:"Earth";i:5;s:5:"Earth";}i:3;a:5:{i:1;s:5:"Earth";i:2;s:5:"Earth";i:3;s:5:"Earth";i:4;s:5:"Earth";i:5;s:5:"Earth";}i:4;a:5:{i:1;s:5:"Earth";i:2;s:5:"Earth";i:3;s:5:"Earth";i:4;s:5:"Earth";i:5;s:5:"Earth";}i:5;a:5:{i:1;s:5:"Earth";i:2;s:5:"Earth";i:3;s:5:"Earth";i:4;s:5:"Earth";i:5;s:5:"Earth";}}i:1;a:10:{i:1;a:10:{i:1;s:6:"Desert";i:2;s:6:"Desert";i:3;s:6:"Desert";i:4;s:6:"Forest";i:5;s:6:"Forest";i:10;s:5:"Ocean";i:9;s:5:"River";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";}i:2;a:10:{i:1;s:6:"Desert";i:2;s:6:"Desert";i:3;s:6:"Forest";i:4;s:6:"Forest";i:5;s:6:"Forest";i:10;s:5:"River";i:9;s:5:"River";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";}i:3;a:10:{i:1;s:6:"Desert";i:2;s:6:"Desert";i:3;s:6:"Plains";i:4;s:5:"Swamp";i:5;s:6:"Forest";i:10;s:6:"Forest";i:9;s:6:"Forest";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";}i:4;a:10:{i:1;s:6:"Desert";i:2;s:6:"Forest";i:3;s:6:"Plains";i:4;s:6:"Forest";i:5;s:6:"Forest";i:10;s:6:"Forest";i:9;s:6:"Forest";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";}i:5;a:10:{i:1;s:6:"Forest";i:2;s:6:"Forest";i:3;s:6:"Plains";i:4;s:6:"Forest";i:5;s:6:"Forest";i:10;s:6:"Forest";i:9;s:6:"Forest";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";}i:6;a:10:{i:10;s:6:"Forest";i:9;s:6:"Forest";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";i:5;s:6:"Forest";i:4;s:6:"Forest";i:3;s:6:"Forest";i:2;s:6:"Forest";i:1;s:6:"Forest";}i:7;a:10:{i:10;s:5:"Mount";i:9;s:6:"Forest";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";i:5;s:6:"Forest";i:4;s:6:"Forest";i:3;s:6:"Forest";i:2;s:6:"Forest";i:1;s:6:"Forest";}i:8;a:10:{i:10;s:5:"Mount";i:9;s:5:"Mount";i:8;s:6:"Forest";i:7;s:6:"Forest";i:6;s:6:"Forest";i:5;s:6:"Forest";i:4;s:6:"Forest";i:3;s:6:"Forest";i:2;s:6:"Forest";i:1;s:6:"Forest";}i:9;a:10:{i:10;s:4:"Snow";i:9;s:5:"Mount";i:8;s:5:"Mount";i:7;s:6:"Forest";i:6;s:6:"Forest";i:5;s:6:"Forest";i:4;s:6:"Forest";i:3;s:6:"Forest";i:2;s:6:"Forest";i:1;s:6:"Forest";}i:10;a:10:{i:10;s:4:"Snow";i:9;s:4:"Snow";i:8;s:5:"Mount";i:7;s:5:"Mount";i:6;s:6:"Forest";i:5;s:6:"Forest";i:4;s:6:"Forest";i:3;s:6:"Forest";i:2;s:6:"Forest";i:1;s:6:"Forest";}}i:2;a:5:{i:1;a:5:{i:1;s:3:"Air";i:2;s:3:"Air";i:3;s:3:"Air";i:4;s:3:"Air";i:5;s:3:"Air";}i:2;a:5:{i:1;s:3:"Air";i:2;s:3:"Air";i:3;s:3:"Air";i:4;s:3:"Air";i:5;s:3:"Air";}i:3;a:5:{i:1;s:3:"Air";i:2;s:3:"Air";i:3;s:3:"Air";i:4;s:3:"Air";i:5;s:3:"Air";}i:4;a:5:{i:1;s:3:"Air";i:2;s:3:"Air";i:3;s:3:"Air";i:4;s:3:"Air";i:5;s:3:"Air";}i:5;a:5:{i:1;s:3:"Air";i:2;s:3:"Air";i:3;s:3:"Air";i:4;s:3:"Air";i:5;s:3:"Air";}}}'),
('worldmapen', 'turntravel', '0'),
('worldmapen', 'usestamina', '1'),
('worldmapen', 'useturns', '0'),
('worldmapen', 'viewRadius', '2'),
('worldmapen', 'wBoundary', 'To the west lays the barren wasteland of the Goiu desert.  No one has ever survived out there.'),
('worldmapen', 'wmspecialchance', '7'),
('worldmapen', 'worldmapAcquire', '1'),
('worldmapen', 'worldmapCostGold', '10000'),
('worldmapen', 'worldmapenInstalled', '1');
INSERT INTO `free_module_settings` (`modulename`, `setting`, `value`) VALUES
('worldmapen', 'worldmapsizeX', '10'),
('worldmapen', 'worldmapsizeY', '10'),
('worldmapwn', 'compasspoints', '0'),
('worldmapwn', 'LeaveGates1', 'A shiver runs down your back as you face the forest around you.'),
('worldmapwn', 'LeaveGates2', 'You''re all alone now...'),
('worldmapwn', 'LeaveGates3', 'The sound of the forest settles in around you as you think to yourself what evil must lurk within.'),
('worldmapwn', 'LeaveGates4', 'Perhaps I should go back in...'),
('worldmapwn', 'LeaveGates5', 'A howling noise bellows from deep within the forest.  You hear the guards from the other side of the gates yell "Good Luck!" and what sounds like "they''ll never make it.'),
('worldmapwn', 'randevent', 'forest'),
('worldmapwn', 'roadbonus', '0.75'),
('worldmapwn', 'showcompass', '0'),
('worldmapwn', 'showforestnav', '0'),
('worldmapwn', 'wmspecialchance', '7'),
('worldmapwn', 'worldmapAcquire', '1'),
('worldmapwn', 'worldmapCostGold', '10000'),
('worldmapwn', 'wraptype', '0');

-- --------------------------------------------------------

--
-- Table structure for table `free_module_userprefs`
--

CREATE TABLE IF NOT EXISTS `free_module_userprefs` (
  `modulename` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`modulename`,`setting`,`userid`),
  KEY `modulename` (`modulename`,`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_module_userprefs`
--

INSERT INTO `free_module_userprefs` (`modulename`, `setting`, `userid`, `value`) VALUES
('2', 'stamina_actions', 2, 'a:0:{}'),
('2', 'stamina_amber', 2, '400000'),
('2', 'stamina_amount', 2, '27044'),
('2', 'stamina_buffs', 2, 'N;'),
('2', 'stamina_red', 2, '200000'),
('bioextension', 'user_extendedbio', 2, ''),
('bioextension', 'user_extlink', 2, ''),
('cities', 'homecity', 1, 'NewHome'),
('cities', 'homecity', 2, 'NewHome'),
('cities', 'traveltoday', 2, '1'),
('clanbuffs', 'refreshbuff', 1, '0'),
('clanbuffs', 'refreshbuff', 2, '0'),
('commentaryicons_physdesc', 'user_physdesc', 2, ''),
('crazyaudrey', 'played', 1, '0'),
('crazyaudrey', 'played', 2, '0'),
('creatureadmin', 'access', 1, '0'),
('creatureadmin', 'access', 2, '0'),
('dag', 'bounties', 1, '0'),
('dag', 'bounties', 2, '0'),
('drinks', 'drunkeness', 1, '0'),
('drinks', 'drunkeness', 2, '0'),
('drinks', 'harddrinks', 1, '0'),
('drinks', 'harddrinks', 2, '0'),
('example', 'playedtoday', 1, '0'),
('example', 'playedtoday', 2, '0'),
('example', 'playedtotal', 2, '0'),
('game_fivesix', 'playstoday', 1, '0'),
('game_fivesix', 'playstoday', 2, '0'),
('gender', 'user_Gender', 2, 'person'),
('gender', 'user_Objective', 2, 'them'),
('gender', 'user_Subjective', 2, 'they'),
('iitemcrates', 'cratesfound', 2, '2'),
('iitems', 'items', 1, 'a:0:{}'),
('iitems', 'items', 2, 'a:0:{}'),
('iitems', 'showFormTabIndex', 2, '1'),
('iitems', 'superuser', 1, '0'),
('iitems', 'superuser', 2, '1'),
('iitems_meatsystem', 'carcasses', 2, ''),
('iitems_meatsystem', 'hooks-since-last', 2, '2'),
('iitems_meatsystem', 'meatsmith', 1, '0'),
('iitems_meatsystem', 'meatsmith', 2, '1'),
('iitems_meatsystem', 'showFormTabIndex', 2, '1'),
('implantspatialawareness', 'skill', 1, '0'),
('implantspatialawareness', 'skill', 2, '0'),
('implantspatialawareness', 'uses', 1, '0'),
('implantspatialawareness', 'uses', 2, '0'),
('implantteslaframe', 'charge', 2, '0'),
('lovers', 'seenlover', 1, '0'),
('lovers', 'seenlover', 2, '0'),
('onslaught', 'info', 1, 'a:1:{s:25:"companions_this_onslaught";a:0:{}}'),
('onslaught', 'info', 2, 'a:1:{s:25:"companions_this_onslaught";a:0:{}}'),
('onslaught', 'justresurrected', 1, '0'),
('onslaught', 'justresurrected', 2, '0'),
('onslaught', 'user_optin', 1, '0'),
('onslaught', 'user_optin', 2, '0'),
('outhouse', 'usedouthouse', 1, '0'),
('outhouse', 'usedouthouse', 2, '0'),
('pinata', 'hittoday', 1, '0'),
('pinata', 'hittoday', 2, '0'),
('sethsong', 'been', 1, '0'),
('sethsong', 'been', 2, '0'),
('specialtydarkarts', 'skill', 1, '0'),
('specialtydarkarts', 'skill', 2, '0'),
('specialtydarkarts', 'uses', 1, '0'),
('specialtydarkarts', 'uses', 2, '0'),
('specialtymysticpower', 'skill', 1, '0'),
('specialtymysticpower', 'skill', 2, '4'),
('specialtymysticpower', 'uses', 1, '1'),
('specialtymysticpower', 'uses', 2, '2'),
('specialtythiefskills', 'skill', 1, '0'),
('specialtythiefskills', 'skill', 2, '0'),
('specialtythiefskills', 'uses', 1, '0'),
('specialtythiefskills', 'uses', 2, '0'),
('staminafood', 'fat', 1, '-122'),
('staminafood', 'fat', 2, '-200'),
('staminafood', 'fullness', 1, '-100'),
('staminafood', 'fullness', 2, '-100'),
('staminafood', 'nutrition', 1, '-122'),
('staminafood', 'nutrition', 2, '-200'),
('staminasystem', 'actions', 1, 'b:0;'),
('staminasystem', 'actions', 2, 'a:15:{s:16:"Hunting - Normal";a:8:{s:7:"maxcost";i:25000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:150;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:25000;}s:21:"Hunting - Easy Fights";a:8:{s:7:"maxcost";i:20000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:100;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:20000;}s:21:"Hunting - Big Trouble";a:8:{s:7:"maxcost";i:30000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:200;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:30000;}s:18:"Hunting - Suicidal";a:8:{s:7:"maxcost";i:35000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:250;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:35000;}s:19:"Fighting - Standard";a:8:{s:7:"maxcost";i:2000;s:7:"mincost";i:500;s:11:"firstlvlexp";i:2000;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:15;s:5:"class";s:6:"Combat";s:3:"lvl";i:0;s:11:"naturalcost";i:2000;}s:12:"Running Away";a:8:{s:7:"maxcost";i:1000;s:7:"mincost";i:200;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:8;s:5:"class";s:6:"Combat";s:3:"lvl";i:0;s:11:"naturalcost";i:1000;}s:19:"Travelling - Plains";a:8:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:5000;}s:19:"Travelling - Jungle";a:9:{s:7:"maxcost";i:10000;s:7:"mincost";i:4000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:60;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:10000;s:3:"exp";i:103;}s:18:"Travelling - River";a:8:{s:7:"maxcost";i:15000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:100;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:15000;}s:18:"Travelling - Ocean";a:8:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:25000;}s:18:"Travelling - Beach";a:8:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:5000;}s:18:"Travelling - Swamp";a:8:{s:7:"maxcost";i:12500;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:75;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:12500;}s:22:"Travelling - Mountains";a:8:{s:7:"maxcost";i:20000;s:7:"mincost";i:6000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:140;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:20000;}s:17:"Travelling - Snow";a:8:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:25000;}s:13:"Reinforcement";a:8:{s:7:"maxcost";i:5000;s:7:"mincost";i:2000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:30;s:5:"class";s:8:"Building";s:3:"lvl";i:0;s:11:"naturalcost";i:5000;}}'),
('staminasystem', 'amber', 1, '400000'),
('staminasystem', 'amber', 2, '400000'),
('staminasystem', 'buffs', 1, 'array()'),
('staminasystem', 'buffs', 2, 'array()'),
('staminasystem', 'red', 1, '200000'),
('staminasystem', 'red', 2, '200000'),
('staminasystem', 'stamina', 1, '825654'),
('staminasystem', 'stamina', 2, '1047030'),
('staminasystem', 'user_minihof', 2, '0'),
('tynan', 'attack', 1, '0'),
('tynan', 'attack', 2, '0'),
('tynan', 'defense', 1, '0'),
('tynan', 'defense', 2, '0'),
('tynan', 'hitpoints', 1, '0'),
('tynan', 'hitpoints', 2, '0'),
('watcher_quests', 'plotpoint3', 1, '0'),
('watcher_quests', 'plotpoint3', 2, '0'),
('wcgpoints', 'fail', 2, '0'),
('wcgpoints', 'points', 2, '507104'),
('wcgpoints', 'runtime', 2, '10380687'),
('wcgpoints', 'spent', 2, '1106'),
('wcgpoints', 'uidok', 2, '1'),
('wcgpoints', 'user_vcode', 2, '220447299bdd9d8879f74ebfa21b2e04'),
('wcgpoints', 'wcgid', 2, 'Cousjava'),
('worldmapen', 'canedit', 2, '0'),
('worldmapen', 'encounterchance', 1, '100'),
('worldmapen', 'encounterchance', 2, '100'),
('worldmapen', 'lastCity', 2, ''),
('worldmapen', 'user_blindoutput', 2, '0'),
('worldmapen', 'worldmapbuy', 2, '0'),
('worldmapen', 'worldXYZ', 2, ',,'),
('ztestmovement', 'user_extendedbio', 1, 'NewHome'),
('ztestmovement', 'user_extendedbio', 2, 'NewHome');

-- --------------------------------------------------------

--
-- Table structure for table `free_motd`
--

CREATE TABLE IF NOT EXISTS `free_motd` (
  `motditem` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `motdtitle` varchar(200) DEFAULT NULL,
  `motdbody` text,
  `motddate` datetime DEFAULT NULL,
  `motdtype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `motdauthor` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`motditem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_motd`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_mounts`
--

CREATE TABLE IF NOT EXISTS `free_mounts` (
  `mountid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mountname` varchar(50) NOT NULL,
  `mountdesc` text,
  `mountcategory` varchar(50) NOT NULL,
  `mountbuff` text,
  `mountcostgems` int(11) unsigned NOT NULL DEFAULT '0',
  `mountcostgold` int(11) unsigned NOT NULL DEFAULT '0',
  `mountactive` int(11) unsigned NOT NULL DEFAULT '1',
  `mountforestfights` int(11) NOT NULL DEFAULT '0',
  `newday` text NOT NULL,
  `recharge` text NOT NULL,
  `partrecharge` text NOT NULL,
  `mountfeedcost` int(11) unsigned NOT NULL DEFAULT '20',
  `mountlocation` varchar(25) NOT NULL DEFAULT 'all',
  `mountdkcost` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mountid`),
  KEY `mountid` (`mountid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `free_mounts`
--

INSERT INTO `free_mounts` (`mountid`, `mountname`, `mountdesc`, `mountcategory`, `mountbuff`, `mountcostgems`, `mountcostgold`, `mountactive`, `mountforestfights`, `newday`, `recharge`, `partrecharge`, `mountfeedcost`, `mountlocation`, `mountdkcost`) VALUES
(1, 'Pony', 'This docile beast is young yet.', 'Horses', 'a:5:{s:4:"name";s:13:"`&Pony Attack";s:8:"roundmsg";s:26:"Your pony fights with you!";s:6:"rounds";s:2:"20";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";}', 6, 0, 1, 1, 'You strap your {weapon} to your pony''s saddle bags, and head out for some adventure!', '`&Remembering that is has been quite some time since you last fed your pony, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0', '`&You dismount in the field to allow your pony to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your pony whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it''ll return.  A short time later, your pony trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`0', 20, 'all', 0),
(2, 'Gelding', 'This powerful beast is fiercely loyal.', 'Horses', 'a:5:{s:4:"name";s:16:"`&Gelding Attack";s:8:"roundmsg";s:29:"Your gelding fights with you!";s:6:"rounds";s:2:"40";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";}', 10, 0, 1, 2, 'You strap your {weapon} to your gelding''s saddle bags, and head out for some adventure!', '`&Remembering that is has been quite some time since you last fed your gelding, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0', '`&You dismount in the field to allow your gelding to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your gelding whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it''ll return.  A short time later, your gelding trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`n`nAnd here you thought geldings weren''t equipped that way any longer!`0', 25, 'all', 0),
(3, 'Stallion', 'This noble beast is huge and powerful!', 'Horses', 'a:5:{s:4:"name";s:17:"`&Stallion Attack";s:8:"roundmsg";s:30:"Your stallion fights with you!";s:6:"rounds";s:2:"60";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";}', 16, 0, 1, 3, 'You strap your {weapon} to your stallion''s saddle bags, and head out for some adventure!', '`&Remembering that is has been quite some time since you last fed your stallion, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0', '`&You dismount in the field to allow your stallion to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your stallion whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it''ll return.  A short time later, your stallion trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`0', 30, 'all', 0);

-- --------------------------------------------------------

--
-- Table structure for table `free_nastywords`
--

CREATE TABLE IF NOT EXISTS `free_nastywords` (
  `words` text,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_nastywords`
--

INSERT INTO `free_nastywords` (`words`, `type`) VALUES
('*damn* *dyke *fuck* *nigger* *phuck* *shit* amcik andskota arschloch arse* ass asshole atouche ayir bastard bitch* boiolas bollock* buceta butt* butt-pirate cabron cawk cazzo chink chraa chuj cipa clit cock* cum cunt* dago daygo dego dick* dike dildo dirsa dupa dziwka ejaculate ejackulate ekrem* ekto enculer faen fag* fanculo fanny fatass fcuk feces feg felcher ficken fitta fitte flikker foreskin phuck fuk* fut futkretzn fuxor gay gook guiena hell helvete hoer* honkey honky hor hore huevon hui injun jism jizz kanker* kawk kike klootzak knulle kraut kuk kuksuger kurac kurwa kusi* kyrpï¿½* leitch lesbian lesbo mamhoon masturbat* merd merde mibun monkleigh mouliewop muie mulkku muschi nazis nepesaurio nigga* nigger nutsack orospu paska* pendejo penis perse phuck picka pierdol* pillu* pimmel pimpis piss* pizda poontsee poop porn preteen preud prick pron pula pule pusse pussy puta puto qahbeh queef* queer* qweef rautenberg schaffer scheiss* scheisse schlampe schmuck screw scrotum sharmuta sharmute shemale shipal shiz skribz skurwysyn slut smut sphencter shpincter spic spierdalaj splooge suka teets teez testicle tits titties titty twat twaty vittu votze wank* wetback* whoar whore wichser woose wop yed zabourah', 'nasty');

-- --------------------------------------------------------

--
-- Table structure for table `free_news`
--

CREATE TABLE IF NOT EXISTS `free_news` (
  `newsid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newstext` text NOT NULL,
  `newsdate` date NOT NULL DEFAULT '0000-00-00',
  `accountid` int(11) unsigned NOT NULL DEFAULT '0',
  `arguments` text NOT NULL,
  `tlschema` varchar(255) NOT NULL DEFAULT 'news',
  PRIMARY KEY (`newsid`,`newsdate`),
  KEY `accountid` (`accountid`),
  KEY `newsdate` (`newsdate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `free_news`
--

INSERT INTO `free_news` (`newsid`, `newstext`, `newsdate`, `accountid`, `arguments`, `tlschema`) VALUES
(1, '`^A strange awakening takes place in the world.`0', '2011-11-05', 0, '', ''),
(2, '`%%s`3 has defeated his master, `%%s`3 to advance to level `^%s`3 after `^%s`3 days!!', '2012-04-05', 2, 'a:4:{i:0;s:8:"Cousjava";i:1;s:10:"Mireraband";i:2;i:2;i:3;s:2:"28";}', 'train'),
(3, '%s has been gone for a while, and those who have looked for him do not come back.', '2012-04-09', 2, 'a:1:{i:0;s:8:"Cousjava";}', 'module-stonehenge');

-- --------------------------------------------------------

--
-- Table structure for table `free_paylog`
--

CREATE TABLE IF NOT EXISTS `free_paylog` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `response` text NOT NULL,
  `txnid` varchar(32) NOT NULL,
  `amount` float(9,2) NOT NULL DEFAULT '0.00',
  `name` varchar(50) NOT NULL,
  `acctid` int(11) unsigned NOT NULL DEFAULT '0',
  `processed` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `filed` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `txfee` float(9,2) NOT NULL DEFAULT '0.00',
  `processdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`payid`),
  KEY `txnid` (`txnid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_paylog`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_petitions`
--

CREATE TABLE IF NOT EXISTS `free_petitions` (
  `petitionid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(11) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `body` text,
  `pageinfo` text,
  `closedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `closeuserid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`petitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_petitions`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_pollresults`
--

CREATE TABLE IF NOT EXISTS `free_pollresults` (
  `resultid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `choice` int(11) unsigned NOT NULL DEFAULT '0',
  `account` int(11) unsigned NOT NULL DEFAULT '0',
  `motditem` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`resultid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_pollresults`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_purchaselog`
--

CREATE TABLE IF NOT EXISTS `free_purchaselog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `acctid` int(11) unsigned NOT NULL,
  `purchased` text NOT NULL,
  `amount` int(11) unsigned NOT NULL,
  `data` text NOT NULL,
  `giftwrap` text NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_purchaselog`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_referers`
--

CREATE TABLE IF NOT EXISTS `free_referers` (
  `refererid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uri` text,
  `count` int(11) DEFAULT NULL,
  `last` datetime DEFAULT NULL,
  `site` varchar(50) NOT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`refererid`),
  KEY `uri` (`uri`(100)),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_referers`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_riddles`
--

CREATE TABLE IF NOT EXISTS `free_riddles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `riddle` mediumtext NOT NULL,
  `answer` tinytext NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT 'System',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `free_riddles`
--

INSERT INTO `free_riddles` (`id`, `riddle`, `answer`, `author`) VALUES
(1, 'You eat something you neither plant nor plow.`nIt is the son of water, but if water touches it, it dies.', 'Salt', 'System'),
(2, 'Teacher, open thy book.', 'A butterfly', 'System'),
(3, 'My tines are long.`nMy tines are short.`nMy tines end ere`nMy first report.', 'Lightning; lightning bolt', 'System'),
(4, 'Turn us on our backs`nAnd open up our stomachs`nYou will be the wisest of men`nThough at start a lummox.', 'A book', 'System'),
(5, 'Bury deep,`nPile on stones,`nYet I will`nDig up the bones.', 'Memories', 'System'),
(6, 'It occurs once in every minute`nTwice in every moment`nAnd yet never in one hundred thousand years.', 'The letter ''M''; M', 'System'),
(7, 'Never ahead, ever behind,`nYet flying swiftly past;`nFor a child I last forever,`nFor adults I''m gone too fast.', 'Childhood;youth', 'System'),
(8, 'Two horses, swiftest travelling,`nHarnessed in a pair, and`nGrazing ever in places`nDistant from them.', 'Your eyes; the sun and the moon', 'System'),
(9, 'It can be said:`nTo be gold is to be good;`nTo be stone is to be nothing;`nTo be glass is to be fragile;`nTo be cold is to be cruel.`nUnmetaphored, what am I?', 'A heart', 'System'),
(10, 'Round she is, yet flat as a board`nAltar of the Lupine Lords.`nJewel on black velvet, pearl in the sea`nUnchanged but e''erchanging, eternally.', 'The moon', 'System'),
(11, 'It has a golden head`nIt has a golden tail`nbut it hasn''t got a body.', 'A golden coin; coin', 'System'),
(12, 'Speak, friend, and enter!', 'Friend', 'System'),
(13, 'A leathery snake,`nWith a stinging bite,`nI''ll stay coiled up,`nUnless I must fight.', 'A whip', 'System'),
(14, 'What has roots as nobody sees,`nIs taller than trees,`nUp, up it goes,`nAnd yet never grows?', 'A mountain', 'System'),
(15, 'Thirty white horses on a red hill,`nFirst they champ,`nThen they stamp,`nThen they stand still.', 'Your teeth', 'System'),
(16, 'Voiceless it cries,`nWingless it flutters,`nToothless bites,`nMouthless mutters.', 'The wind', 'System'),
(17, 'It cannot be seen, cannot be felt,`nCannot be heard, cannot be smelt.`nIt lies behind stars and under hills,`nAnd empty holes it fills.`nIt comes first and follows after,`nEnds life, kills laughter.', 'The darkness', 'System'),
(18, 'A box without hinges, key, or lid,`nYet golden treasure inside is hid.', 'Eggs; oranges', 'System'),
(19, 'Alive without breath,`nAs cold as death;`nNever thirsty, ever drinking,`nAll in mail never clinking.', 'A fish', 'System'),
(20, 'This thing all things devours:`nBirds, beast, trees, flowers;`nGnaws iron, bites steel;`nGrinds hard stones to meal;`nSlays king, ruins town,`nAnd beats high mountain down.', 'Time', 'System'),
(21, 'You feel it, but never see it and never will.', 'Your heart', 'System'),
(22, 'You must keep it after giving it.', 'Your word;promise', 'System'),
(23, 'As light as a feather, but you can''t hold it for ten minutes.', 'Your breath', 'System'),
(24, 'Has a mouth but does not speak, has a bed but never sleeps.', 'A river', 'System'),
(25, 'Runs smoother than any rhyme, loves to fall but cannot climb!', 'Water', 'System'),
(26, 'You break it even if you name it!', 'Silence', 'System'),
(27, 'It passes before the sun and makes no shadow.', 'The air', 'System'),
(28, 'You feed it, it lives, you give it something to drink, it dies.', 'A fire', 'System'),
(29, 'A red drum which sounds`nWithout being touched,`nAnd grows silent,`nWhen it is touched.', 'Your heart', 'System'),
(30, 'A harvest sown and reaped on the same day`nIn an unplowed field,`nWhich increases without growing,`nRemains whole though it is eaten`nWithin and without,`nIs useless and yet`nThe staple of nations.', 'A war', 'System'),
(31, 'If you break me`nI do not stop working,`nIf you touch me`nI may be snared,`nIf you lose me`nNothing will matter.', 'Hope', 'System'),
(32, 'All about, but cannot be seen,`nCan be captured, cannot be held`nNo throat, but can be heard.', 'Sounds; noises; wind', 'System'),
(33, 'I go around in circles,`nBut always straight ahead`nNever complain,`nNo matter where I am led.', 'A wheel', 'System'),
(34, 'Lighter than what`nI am made of,`nMore of me is hidden`nThan is seen.', 'An iceberg', 'System'),
(35, 'If a man carried my burden,`nHe would break his back.`nI am not rich,`nBut leave silver in my track.', 'A snail', 'System'),
(36, 'My life can be measured in hours,`nI serve by being devoured.`nThin, I am quick`nFat, I am slow`nWind is my foe.', 'A candle', 'System'),
(37, 'Weight in my belly,`nTrees on my back,`nNails in my ribs,`nFeet I do lack.', 'A boat; a cave; a ship', 'System'),
(38, 'You can see nothing else`nWhen you look in my face`nI will look you in the eye`nAnd I will never lie.', 'A mirror', 'System'),
(39, 'I am always hungry,`nI must always be fed,`nThe finger I lick`nWill soon turn red.', 'A fire', 'System'),
(40, 'Three lives have I.`nGentle enough to soothe the skin,`nLight enough to caress the sky`nHard enough to crack rocks.', 'Water', 'System'),
(41, 'Glittering points`nThat downward thrust,`nSparkling spears`nThat never rust.', 'Icicles', 'System'),
(42, 'Each morning I appear`nTo lie at your feet,`nAll day I follow`nNo matter how fast you run,`nYet I nearly perish`nIn the midday sun.', 'A shadow', 'System'),
(43, 'Keys without locks`nYet I unlock the soul.', 'A piano; a harpsichord; music; song; notes', 'System'),
(44, 'I am so simple,`nThat I can only point`nYet I guide men`nAll over the world.', 'A compass', 'System'),
(45, 'For our ambrosia we were blessed,`nby Jupiter, with a sting of death.`nThough our might, to some is jest,`nwe have quelled the dragon''s breath.`nWho are we?', 'Bees', 'System'),
(46, 'Colored as a maiden tweaked,`ntime was naught when I began;`nthrough the garden I was sneaked,`nI alone am the fall of man.`nWhat am I?', 'An apple', 'System'),
(47, 'One where none should be,`nor maybe where two should be,`nseeking out purity,`nin the kings trees.`nWhat am I?', 'A unicorn', 'System'),
(48, 'One tooth to bite,`nhe''s the forests foe.`nOne tooth to fight,`nas all Norse know.`nWhat is it?', 'An axe', 'System'),
(49, 'The part of the bird`nthat is not in the sky,`nwhich can swim in the ocean`nand always stay dry.`nWhat is it?', 'The bird''s shadow; shadow', 'System'),
(50, 'The root tops the trunk`non this backward thing,`nthat grows in the winter`nand dies in the spring.`nWhat is it?', 'An icicle', 'System'),
(51, 'Touching one, yet holding two,`nit is a one link chain`nbinding those who keep words true,`n''til death rent it in twain.`nWhat is it?', 'A wedding ring; ring', 'System'),
(52, 'The wise and knowledgeable man is sure of it.`nEven the fool knows it.`nThe rich man wants it.`nThe greatest of heroes fears it.`nYet the lowliest of cowards would die for it.`nWhat is this upon which I ponder?', 'Nothing; something', 'System'),
(53, 'What is greater than God,`nWorse than the Devil,`nDead man eat it,`nIf you eat it you''ll die.', 'Nothing', 'System'),
(54, 'I am a wonderful help to women,`nThe hope of something to come. I harm`nNo citizen except my slayer.`nRooted I stand on a high bed.`nI am shaggy below. Sometimes the beautiful`nPeasant''s daughter, an eager-armed,`nProud woman grabs my body,`nRushes my red skin, holds me hard,`nClaims my head. The curly-haired`nWoman who catches me fast will feel`nOur meeting. Her eye will be wet.', 'An onion', 'System'),
(55, 'Power and treasure for a prince to hold,`nHard and steep-cheeked, wrapped in red`nGold and garnet, ripped from a plain`nOf bright flowers, wrought - a remnant`nOf fire and file, bound in stark beauty`nWith delicate wire, my grip makes`nWarriors weep, my sting threatens`nThe hand that grasps gold. Studded`nWith a ring, I ravage heir and heirloom.`nTo my lord and foes always lovely`nAnd deadly, altering face and form.', 'A sword', 'System'),
(56, 'As I was going to St. Ives,`nI met a man with seven wives;`nEvery wife had seven sacks,`nEvery sack had seven cats,`nEvery cat had seven kits:`nKits, cats, sacks, and wives,`nHow many were there going to St. Ives?', 'One;1', 'System'),
(57, 'Dawns away,`nThe day''s turned grey,`nAnd I must travel far away.`nBut I''ll be back,`nAnd then we''ll track,`nThe light of yet another day.', 'The sun; a shadow', 'System'),
(58, 'Deep, dark, underground,`nThat is the place where I''ll be found.`nYet brought into the light of day,`nI sprinkle sunlight every-which-a-way.`nThough dulled with oil I will be found,`nI am remarkably well and throughly sound.`nCut me quick and it will be seen,`nThat I instantly have a marvelous sheen.', 'A diamond; a gem', 'System'),
(59, 'What must be in the oven yet can not be baked?`nGrows in the heat yet shuns the light of day?`nWhat sinks in water but rises with air?`nLooks like skin, but is fine as hair?', 'Yeast', 'System'),
(60, 'Little Johnny Walker,`nMy, but he was a talker!`nYet nary a word did he say!`nWhen I took him out,`nThen they would all point and shout!`nAnd ask that I put him away.', 'Your opinions', 'System'),
(61, 'They are many and one,`nThey wave and they drum,`nUsed to cover a stare,`nThey go with you everywhere.', 'Your hands', 'System'),
(62, 'Stomp, stomp,`nChomp, chomp,`nRomp, romp.`nStanding still,`nall in gear.', 'Horses', 'System'),
(63, 'Sweet tooth,`nAh shoot,`nAll gone,`nWe all long,`nFor another piece of it.', 'Candy', 'System'),
(64, 'It comes in on little cat''s feet,`nIs neither sour, nor sweet.`nHovers in the air,`nAnd then is not there.', 'Fog; mist', 'System'),
(65, 'A laugh,`nA cry,`nA moan,`nA sigh.', 'Emotions', 'System'),
(66, 'What is it you have to answer?`nBut to answer you have to ask?`nAnd to ask you have to speak?`nAnd to speak you have to know,`nThe answer.', 'A riddle', 'System'),
(67, 'I can hit you in the eye,`nYet twinkle in the sky,`nExpanding when I die,`nWhat do you think am I?', 'A star', 'System'),
(68, 'Squishes,`nSquashes,`nWishes I washes,`nCan get it in my hair,`nMakes me not look too fair.', 'Mud', 'System'),
(69, 'Up a hill,`nDown a hill,`nOver them I may roam,`nBut after all my walking,`nThere''s no place like my own.', 'Your home', 'System'),
(70, 'This thing is a most amazing thing.`nFor it can be both as sharp as a knife,`nOr as flat as a floor.`nAnd yet, for all that it can be,`nIt is as natural as a bee.', 'Music; Notes', 'System'),
(71, 'Deep, deep, do they go.`nSpreading out as they go.`nNever needing any air.`nThey are sometimes as fine as hair.', 'Roots', 'System'),
(72, 'Oh Lord!  I am not worthy!`nI bend my limbs to the ground.`nI cry, yet without a sound.`nLet me drink of waters deep.`nAnd in silence I will weep.', 'A willow; weeping willow; willow tree; weeping willow tree', 'System'),
(73, 'Shifting, Shifting, Drifting deep.`nBelow me great and mighty cities sleep.`nSwirling, Scurlling, All around.`nI''m only where no water will be found.', 'The desert', 'System'),
(74, 'I bubble and laugh`nAnd spit water in your face.`nI am no lady,`nAnd I don''t wear lace.', 'A fountain', 'System'),
(75, 'What has wings,`nBut can not fly.`nIs enclosed,`nBut can outside also lie.`nCan open itself up,`nOr close itself away.`nIs the place of kings and queens,`nAnd doggerel of every means.`nWhat is it upon which I stand?`nWhich can lead us to different lands.', 'A stage', 'System'),
(76, 'Do not begrudge this,`nFor it is the fate of every man.`nYet it is feared,`nAnd shunned in many lands.`nCauses problems, and sometimes gaps,`nCan hobble the strongest, and make memory lapse.`nWhat is this danger we all face?`nFor being a part - of the human race.', 'Growing old; age; old age', 'System'),
(77, 'Of these things - I have two.`nOne for me - and one for you.`nAnd when you ask about the price,`nI simply smile and nod twice.', 'Sharing', 'System'),
(78, 'I am a strange creature,`nHovering in the air,`nMoving from here to there,`nWith a brilliant flare.`nSome say I sing,`nBut others say I have no voice.`nSo I just hum - as a matter of choice.`nWhat am I?', 'A hummingbird', 'System'),
(79, 'Sleeping during the day,`nI hide away.`nWatchful through the night,`nI open at dawn''s light.`nBut only for the briefest time,`nDo I shine.`nAnd then I hide away,`nAnd sleep through the day.', 'A morning glory', 'System'),
(80, 'Looks like water,`nBut its heat.`nSits on sand,`nLays on concrete.`nPeople have been known,`nTo follow it everywhere.`nBut it gets them no place,`nAnd all they can do is stare.', 'A mirage', 'System'),
(81, 'A part of heaven,`nThough it touches the earth.`nSome say it''s valuable,`nOthers - no worth.', 'A rainbow', 'System'),
(82, 'I stand,`nAnd look across the sea,`nWith its waves, crests, troughs, and valleys.`nI stride,`nAcross this water, my horse following after,`nAnd while it laps against his withers,`nAnd brushes against my thighs,`nI fill the emptiness with laughter.`nAnd he - with his sighs.`nWhether do we go?`nOr do we go at all?`nOr are we simply out here wading,`nTo the next port of call.`nWhere the sea ends,`nWhere the loam lays firm beneath my feet,`nAnd I can mount my steed again,`nAnd continue til next we meet.`nWhat is really being talked about?', 'The open plains; plain; prairie', 'System'),
(83, 'I was born blind,`nAnd could not see,`nUntil it was a quarter of three.`nI could not smile,`nTil half past six,`nAnd all of my arms and legs`nWere made of sticks.', 'A doll', 'System'),
(84, 'Ah!  My breath doth shake,`nMy limbs are thin,`nMy belly aches.`nWhiteness doth crown my head,`nAnd the tracks I leave,`nAre unsteady where I''ve led.`nI look out through rheumy eyes,`nAnd seem to say my last goodbyes.`nThe darkness doth draw me near,`nI lean towards it - the better to hear.', 'Old age; age', 'System'),
(85, 'Hick-a-more, Hack-a-more,`nOn the King''s kitchen door.`nAll the King''s horses,`nAnd all the King''s men,`nCouldn''t get Hick-a-more, Hack-a-more,`nOff the King''s kitchen door.', 'Sunlight', 'System'),
(86, 'It was asked of me what I could be made,`nAnd so people were fed from me.`nIt was asked of me what I could be made,`nAnd so houses were built.`nIt was asked of me what I could be made,`nAnd so things were written.`nIt was asked of me what I could be made,`nAnd so I fertilized the ground.`nBut when asked more of what I could be made,`nThere was nothing to be found.', 'A tree', 'System'),
(87, 'With this you can do wonderous things.`nLook at things close, or far away,`nYou can see things big,`nOr you can see things small.`nOr maybe you don''t see things at all.`nI come in many colors and hues,`nSometimes green and sometimes blue.`nAnd when I''m red - it''s not from shame,`nBut from something with a different name.', 'Your eyes', 'System'),
(88, 'Oh how I love my dancing feet!`nThey stay together - oh so neat.`nAnd when I want to walk a line,`nThey all stay together and do double time.`nI count them up, ten times or more,`nAnd race on-off, across the floor.', 'A centipede; millipede', 'System'),
(89, 'A muttered rumble was heard from the pen,`nAnd I, in my walking, stopped to look in.`nWhat was this I saw?`nA massive beast, hooved, and jawed.`nWith spikes upon its mighty brow,`nI watched as he struck the turf and prowled.`nAnd yet for all of his magnificience,`nHe couldn''t get out of that wooden fence.', 'A bull', 'System'),
(90, 'Twas the night of the day`nin which I must relay`nthat in which I took part in.`nFor the sun was out`nand without so much as a shout`nhe quietly went in.`nTwas ever so queer`nI thought he would leer`nbut never a word did I get in.`nFor without another word`n(at least that''s what I heard)`nHe was back to the place he''d been in.', 'An eclipse', 'System'),
(91, 'From sun up to sun down I stare out across the sea.`nFrom sun down to sun up I stare out across the sea.`nBut while with sun up I can only blink in the brightness.`nWith the sun down I can blink out the brightness.', 'A lighthouse', 'System'),
(92, 'A lot of bark,`nBut no one notices.`nA lot to bite,`nAnd everyone cares.`nI''m not a dog,`nIf anyone notices.`nAnd there''s a lot to me,`nBut I don''t have hair.`nI stand up straight,`nIf you''ve noticed me.`nI''ve got lots of limbs,`nIf anyone cares.`nI can give you shade,`nIf you''ve noticed it.`nAnd I do even more,`nI give you air.', 'A tree', 'System'),
(93, 'Twas in December or June,`nWhen my lady did swoon.`nWhen her hair did fall off,`nAnd her glasses were lost.`nWhen she did scream,`nIn a manner most obscene.`nWhile pointing at me,`nAnd saying ï¿½Eeeeee!  Eeeeee!ï¿½`nI must say it was all a bit much,`nSince no one did I touch.`nBut it was quite apparent,`nThat something was errant.`nSo I decided to come back another day,`nWhen, mayhap, she was away.', 'A mouse', 'System'),
(94, 'I drift,`nAs slowly as a lazy river.`nI dance,`nUpon as little as a puff of air.`nI tumble,`nBetter than the greatest acrobat.`nSwirling,`nTwirling,`nDown to the ground.`nWhere I lie,`nTil I get my second wind.`nSo I can begin again.', 'A leaf', 'System'),
(95, 'A riddle, easily solved.`nRed breasted.`nOnly one in a field of many.`nBorn in an egg.`nInspired to sing.`nNow gather the letters and tell me what I mean.', 'A robin', 'System'),
(96, 'I have four of these,`nWith matching extremities.`nThey can do many things,`nAnd hardly ever bring me pain.`nUnless I stick them with a pin,`nOr burn them sometimes when...`nWhat is it that I can wiggle at will?`nAnd use in other means still?', 'Fingers', 'System'),
(97, 'When I looked upon the flames of his passion,`nAnd the coolness of her touch,`nI knew tragedy could only come from their union.`nAnd indeed, when they came together,`nDarkness reigned upon the land.`nAnd although they were soon separated,`nLearning as they did that they were not for each other,`nStill, their passing regards for each other,`nLeft it''s impression upon all who had witnessed it.`nAnd would be talked about for ages still to come.', 'A solar eclipse; eclipse', 'System'),
(98, 'What has a coat?`nHugs you not in sympathy?`nWhose smile you''d rather not see?`nWhose stance is a terrible thing to see?`nWho is it that brave men run away from?`nWhose fingers are clawed?`nWhose sleep lasts for months?`nAnd whose company we shun?', 'A bear', 'System'),
(99, 'You can tumble in it,`nRoll in it,`nBurn it,`nAnimals eat it,`nUsed to cover floors,`nStill used beyond stall doors.`nFreshens whatever it is placed on,`nAbsorbs whatever is poured into it.`nWhat is it?', 'Hay', 'System'),
(100, 'Within passion''s fruit they will be found,`nAnd more of them in the pomegranate''s crown.`nRowed they are within an apple''s core,`nYet other fruits have them more.`nAnd though the nectarine has but one,`nStill, this is all just in fun.`nPlaying hide and seek - a children''s game.`nFinding out each player is just the same.', 'Seeds', 'System'),
(101, '''Twas whispered in Heaven, ''twas muttered in hell,`nAnd echo caught faintly the sound as it fell;`nOn the confines of earth ''twas permitted to rest,`nAnd in the depths of the ocean its presence confes''d;`n''Twill be found in the sphere when ''tis riven asunder,`nBe seen in the lightning and heard in the thunder;`n''Twas allotted to man with his earliest breath,`nAttends him at birth and awaits him at death,`nPresides o''er his happiness, honor and health,`nIs the prop of his house, and the end of his wealth.`nIn the heaps of the miser ''tis hoarded with care,`nBut is sure to be lost on his prodigal heir;`nIt begins every hope, every wish it must bound,`nWith the husbandman toils, and with monarchs is crowned;`nWithout it the soldier and seaman may roam,`nBut woe to the wretch who expels it from home!`nIn the whispers of conscience its voice will be found,`nNor e''er in the whirlwind of passion be drowned;`n''Twill soften the heart; but though deaf be the ear,`nIt will make him acutely and instantly hear.`nSet in shade, let it rest like a delicate flower;`nAh!  Breathe on it softly, it dies in an hour', 'The letter H; H', 'System'),
(102, 'We are little airy creatures,`nAll of different voice and features;`nOne of us in glass is set,`nOne of us you''ll find in jet,`nT''other you may see in tin,`nAnd the fourth a box within;`nIf the fifth you should pursue,`nIt can never fly from you.', 'The vowels', 'System'),
(103, 'I''m a strange contradiction; I''m new, and I''m old,`nI''m often in tatters, and oft decked with gold.`nThough I never could read, yet lettered I''m found;`nThough blind, I enlighten; though loose, I am bound,`nI''m always in black, and I''m always in white;`nI''m grave and I''m gay, I am heavey and light-`nIn form too I differ - I''m thick and I''m thin,`nI''ve no flesh and bones, yet I''m covered with skin;`nI''ve more points than the compass, more stops than the flute;`nI sing without voice, without speaking confute.`nI''m English, I''m German, I''m French, and I''m Dutch;`nSome love me too fondly, some slight me too much;`nI often die soon, though I sometimes live ages,`nAnd no monarch alive has so many pages.', 'A book', 'System'),
(104, 'As I went through the garden gap,`nWho should I meet but Dick Red-cap!`nA stick in his hand, a stone in his throat,`nIf you''ll tell me this riddle, I''ll give you a groat.', 'A cherry', 'System'),
(105, 'Little Nancy Etticote,`nIn a white petticoat,`nWith a red nose;`nThe longer she stands`nThe shorter she grows.', 'A candle', 'System'),
(106, 'I have a little sister, they call her Peep, Peep;`nShe wades the waters deep, deep, deep;`nShe climbs the mountains high, high, high;`nPoor little creature she has but one eye.', 'A star', 'System'),
(107, 'I saw a company a marching,`nA marching across the sea.`nAnd looking upon them,`nI asked myself ï¿½What can they be?ï¿½`nFor there was a horse,`nAnd there was a cow,`nAnd there were men marching,`nWith houses and trees.  But how?`nI saw a company marching,`nA marching across the sea.`nAnd wondered in my rest,`nHow lazy I must be.', 'Clouds in the sky; clouds', 'System'),
(108, 'I''m up.`nI''m down.`nI''m all around.`nYet never can I be found.`nWho am I?', 'The wind', 'System'),
(109, 'I can be moved.`nI can be rolled.`nBut nothing will I hold.`nI''m red and I''m blue.`nAnd I can be other colors too.`nHaving no head, though similar in shape,`nI have no eyes - yet move all over the place.`nWhat am I?', 'A ball', 'System'),
(110, 'Upon me you can tread,`nThough softly under cover.`nAnd I will take you places,`nThat you have yet to discover.`nI''m high, and I''m low,`nThough flat in the middle.`nAnd though a joy to the children,`nAdults think of me little.`nWhat am I?', 'Stairs', 'System'),
(111, 'What is it which builds things up?`nLays mountains low?`nDries up lakes,`nAnd makes things grow?`nCares not a whim about your passing?`nAnd is like few other things,`nBecause it is everlasting?', 'Time', 'System'),
(112, 'It sat upon a willow tree,`nAnd sang softly unto me.`nEasing my pain and sorrow with its song,`nI wished to fly, but tarried long.`nAnd in my suffering,`nThe willow was like a cool clear spring.`nWhat was it that helped me so?`nTo spend my time in my woe.', 'A bird', 'System'),
(113, 'They can be harbored, but few hold water,`nYou can nurse them, but only by holding them against someone else,`nYou can carry them, but not with your arms,`nYou can bury them, but not in the earth.', 'A grudge', 'System'),
(114, 'Deep as a bowl, round as a cup,`nYet all the world''s oceans can''t fill it up.', 'A sieve; collander', 'System'),
(115, 'Though desert men once called me God,`nTo-day men call me mad,`nFor I wag my tail when I am angry,`nAnd growl when I am glad.', 'A cat', 'System'),
(116, 'I heard of an invading, vanquishing army`nsweeping across the land, liquid-quick;`nconquering everything, quelling resistance.`nWith it came darkness, dimming the light.`nHumans hid in their houses, while outside`nspears pierced, shattering stone walls.`nUncountable soldiers smashed into the ground,`nbut each elicited life as he died;`nwhen the army had vanished, advancing northward,`nthe land was green and growing, refreshed.', 'A rainstorm; rain', 'System'),
(117, 'Tall she is, and round as a cup,`nYet all the king''s horses`nCan''t draw her up.', 'A well', 'System'),
(118, 'The more of it there is,`nThe less you see.', 'Darkness; fog', 'System'),
(119, 'What is not enough for one,`nJust right for two,`nToo much for three?', 'A secret', 'System'),
(120, 'What gets wetter the more it dries?', 'A towel', 'System'),
(121, 'A long snake`nWith a stinging bite,`nI stay coiled up`nUnless I must fight.', 'Whip', 'System'),
(122, 'A warrior amongst the flowers,`nHe bears a thrusting sword.`nAble and ready to use,`nTo guard his golden hoard.', 'Bees', 'System'),
(123, 'The Load-bearer, the Warrior,`nThe Frightened One, the Brave,`nThe Fleet-of-foot, the Ironshod`nThe Faithful One, the Slave', 'A horse', 'System'),
(124, 'Walks in the wind`nRuns in the rain`nMakes dry oceans in the sun`nCounts time, stops clocks`nSwallows kingdoms, gnaws rocks.', 'Sand', 'System'),
(125, 'The rolling hills, the heart that beats forever,`nThe land that never changes, never stills`nPloughed by travellers far from home, not planted,`nWhite in anger, green in peace, and always blue.', 'The sea; ocean', 'System'),
(126, 'Listen closely, I''m hard to understand`nI am as elusive as is a handful of sand.`nEven if you perceive me, you know me not`nbefore you can tell me, what I have forgot.', 'A riddle', 'System'),
(127, 'What goes through the door without pinching itself?`nWhat sits on the stove without burning itself?`nWhat sits on the table and is not ashamed?', 'The sun', 'System'),
(128, 'Whilst I was engaged in sitting`nI spied the dead carrying the living`nWhat did I see?', 'A ship', 'System'),
(129, 'I know a word of letters three,`nAdd two and fewer there will be.', 'Few', 'System'),
(130, 'Who makes it, has no need of it.`nWho buys it, has no use for it.`nWho uses it, can neither see nor feel it.', 'A coffin', 'System'),
(131, 'The man who made it didn''t need it.`nThe man who bought it didn''t use it.`nThe man who used it didn''t want it.', 'A coffin; a casket', 'System'),
(132, 'You seized me, and yet I fled`nYou see me flee and cannot hold me tight`nYou press me in your hand, then your fist is empty.`nWhat am I?', 'Snow', 'System'),
(133, 'What has four legs in the morning,`nTwo legs in the afternoon,`nAnd three legs in the evening?', 'Man', 'System'),
(134, 'What is deaf, dumb and blind`nand always tells the truth ?', 'A mirror', 'System'),
(135, 'What is always in front of you`nbut cannot be seen?', 'The future', 'System'),
(136, 'What does man love more than life,`nhate more than death or mortal strife;`nThat which contented men desire,`nthe poor have, the rich require;`nThe miser spends, the spendthrift saves,`nand all men carry to their graves?', 'Nothing', 'System'),
(137, 'A life longer than any man,`nit dies each year to be reborn.', 'A tree', 'System'),
(138, 'In the eyes it causes blindness,`nin the nose just a sneeze;`nYet some suck this down,`nand act as if pleased.', 'Smoke', 'System'),
(139, 'It stands alone, with no bone or solid form.`nAdamant, it prospers never wrong,`nthough hurt it may.`nTwistable, malleable, might it be,`nbut always straight as an arrow.', 'The truth', 'System'),
(140, 'What sphinxes employ,`nthe players enjoy.', 'A riddle', 'System'),
(141, 'There''s someone that I''m always near,`nYet in the dark I disappear.`nTo this one only I am loyal,`nThough in his wake I''m doomed to toil.`nHe feels me not (we always touch);`nIf I were lost, he''d not lose much.`nAnd now I come to my surprise,`nFor you are he - but who am I ?', 'Your shadow', 'System'),
(142, 'I''m often held, yet rarely touched;`nI''m always wet, yet never rust;`nI''m sometimes wagged and sometimes bit;`nTo use me well, you must have wit.', 'Tongue', 'System'),
(143, 'In the window she sat weeping.`nAnd with each tear her life went seeping.', 'A candle', 'System'),
(144, 'I''m not really more than holes tied to more`nholes;`nI''m strong as good steel, though not as stiff`nas a pole.', 'A chain', 'System'),
(145, 'I''ve little strength, but mighty powers;`nI guard small hovels and great towers.`nBut if perchance my master leaves,`nHe must ensure he safeguards me.', 'A key', 'System'),
(146, 'Delivered by breath,`nscares heroes to death.', 'The Riddle', 'System'),
(147, 'In daytime I lie pooled about,`nAt night I cloak like a mist.`nI creep inside shut boxes and`nInside your tightened fist.`nYou see me best when you can''t see,`nFor I do not exist.', 'Darkness', 'System'),
(148, 'Devils and rogues know nothing else,`nsave starlight.', 'Darkness', 'System'),
(149, 'Both king and horse have this, of course,`nBut you''ll want neither of them, perforce.', 'Reign', 'System'),
(150, 'My spring up on the cliff.', 'A coconut', 'System'),
(151, 'Three walls and you reach water.', 'A coconut', 'System'),
(152, 'My kapa (a type of cloth) log that`nis always sounding without rest.', 'The sea', 'System'),
(153, 'In the morning four legs,`nat noon two legs,`nat evening three legs.', 'Man', 'System'),
(154, 'My man that cannot be cut.', 'A shadow', 'System'),
(155, 'My canoes, going day and night,`nten bowspirits, two sterns.', 'Someone''s feet', 'System'),
(156, 'My red cave, white soldiers standing in line.', 'Someone''s mouth', 'System'),
(157, 'My man crying day and night,`nall through the year.', 'The sea', 'System');

-- --------------------------------------------------------

--
-- Table structure for table `free_rooms`
--

CREATE TABLE IF NOT EXISTS `free_rooms` (
  `hid` int(11) unsigned NOT NULL,
  `rid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`hid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_rooms`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_room_prefs`
--

CREATE TABLE IF NOT EXISTS `free_room_prefs` (
  `hid` int(11) unsigned NOT NULL,
  `rid` int(11) unsigned NOT NULL,
  `pref` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`hid`,`rid`,`pref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_room_prefs`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_settings`
--

CREATE TABLE IF NOT EXISTS `free_settings` (
  `setting` varchar(20) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_settings`
--

INSERT INTO `free_settings` (`setting`, `value`) VALUES
('addexp', '5'),
('allowclans', '1'),
('allowcreation', '1'),
('allowgoldtransfer', '1'),
('allowoddadminrenames', '1'),
('allowpackofmonsters', '1'),
('allowspecialswitch', '1'),
('autofight', '1'),
('autofightfull', '1'),
('automaster', '1'),
('bard', '`^Simon'),
('barkeep', '`tDan'),
('barmaid', '`%Charlotte'),
('betaperplayer', '1'),
('borrowperlevel', '0'),
('charset', 'ISO-8859-1'),
('clanregistrar', '`%Karissa'),
('companionsallowed', '2'),
('companionslevelup', '1'),
('curltimeout', '5'),
('daysperday', '6'),
('deathoverlord', '`$The Watcher'),
('defaultlanguage', 'en'),
('defaultskin', 'jade.htm'),
('dictionary', '/usr/share/dict/words'),
('disablebonuses', '1'),
('displaymasternews', '1'),
('edittitles', '1'),
('enablecompanions', '1'),
('enabletranslation', '1'),
('expirecontent', '0'),
('expirenewacct', '0'),
('expireoldacct', '0'),
('expiretrashacct', '0'),
('fightsforinterest', '0'),
('forestchance', '15'),
('forestexploss', '10'),
('forestgemchance', '25'),
('gameadminemail', 'postmaster@localhost.com'),
('game_epoch', '2011-10-06 00:00:00 +0000'),
('gardenchance', '2'),
('gemstostartclan', '15'),
('goldtostartclan', '10000'),
('gravechance', '2'),
('gravefightsperday', '10'),
('homecurtime', '1'),
('homenewdaytime', '1'),
('homenewestplayer', '1'),
('homeskinselect', '1'),
('inboxlimit', '50'),
('innchance', '5'),
('innfee', '5%'),
('innname', 'The Prancing Spiderkitty'),
('installer_version', '2.2.0 Elvenhall Edition'),
('lastdboptimize', '2012-04-08 18:30:15'),
('last_char_expire', '2012-04-09 17:57:30'),
('logdnetserver', 'http://logdnet.logd.com/'),
('loginbanner', '*BETA* This is a BETA of this website, things are likely to change now and again, as it is under active development *BETA*'),
('LOGINTIMEOUT', '9000'),
('mailsizelimit', '1024'),
('maxattacks', '4'),
('maxcolors', '16'),
('maxgoldforinterest', '100000'),
('maxinterest', '5'),
('maxlistsize', '100'),
('maxrestartgems', '10'),
('maxrestartgold', '300'),
('maxtransferout', '25'),
('mininterest', '1'),
('mintransferlev', '3'),
('motditems', '5'),
('multibasemax', '1'),
('multibasemin', '1'),
('multichance', '25'),
('multifightdk', '10'),
('multimaster', '1'),
('multislummax', '1'),
('multisuimax', '4'),
('multisuimin', '2'),
('multithrillmax', '2'),
('multithrillmin', '1'),
('newdaycron', '0'),
('newdaySemaphore', '2012-04-09 16:57:30'),
('newestplayer', '2'),
('newplayerstartgold', '50'),
('notify_every', '30'),
('officermoderate', '1'),
('oldmail', '14'),
('OnlineCount', ''),
('OnlineCountLast', '1338060806'),
('onlyunreadmails', '1'),
('paypalcountry-code', 'US'),
('paypalcurrency', 'GBP'),
('paypaltext', 'legend of the green dragon site donation from'),
('postinglimit', '0'),
('pvp', '0'),
('pvpattgain', '10'),
('pvpattlose', '10'),
('pvpday', '3'),
('pvpdefgain', '10'),
('pvpdeflose', '5'),
('pvpimmunity', '5'),
('pvpminexp', '1500'),
('pvptimeout', '600'),
('refereraward', '25'),
('referminlevel', '4'),
('resurrectionturns', '-6'),
('selfdelete', '1'),
('serverdesc', 'Another LoGD Server'),
('serverlanguages', 'en,English,fr,Franï¿½ais,dk,Danish,de,Deutsch,es,Espaï¿½ol,it,Italian'),
('serverurl', 'http://localhost/lotgd'),
('showFormTabIndex', '27'),
('soap', '1'),
('specialtybonus', '1'),
('staminasystem_action', 'a:0:{}'),
('stamina_actionsarray', 'a:2:{s:20:"Cleaning the Carcass";a:6:{s:7:"maxcost";i:15000;s:7:"mincost";i:2000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0700000000000000621724893790087662637233734130859375;s:13:"costreduction";i:130;s:5:"class";s:4:"Meat";}s:7:"Cooking";a:6:{s:'),
('stamina_turns_base', '20000'),
('stamina_turns_ceilin', '30000'),
('suicidedk', '10'),
('superuseryommessage', 'Asking an admin for gems, gold, weapons, armor, or anything else which you have not earned will not be honored.  If you are experiencing problems with the game, please use the ''Petition for Help'' link instead of contacting an admin directly.'),
('transferperlevel', '25'),
('transferreceive', '3'),
('turns', '10'),
('villagechance', '1'),
('villagename', 'Improbable Central');

-- --------------------------------------------------------

--
-- Table structure for table `free_taunts`
--

CREATE TABLE IF NOT EXISTS `free_taunts` (
  `tauntid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taunt` text,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tauntid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `free_taunts`
--

INSERT INTO `free_taunts` (`tauntid`, `taunt`, `editor`) VALUES
(1, '`5"`6Just wait for my revenge, `4%W`6. It will be swift!`5" %w declares.', 'Bluspring'),
(2, '`5"`6I''m really going to enjoy this new `4%x`6 that %w`6 had,`5" exclaimed %W.', 'joe'),
(3, '`5"`6Aah, so `bthat''s`b what `4%X`6 is for!`5" exclaimed %W', 'joe'),
(4, '`5"`6Oh man!  I didn''t think you had it in you, `5%W`6,`5" %w exclaims.', 'Bluspring'),
(5, '`5%W was overheard saying, "`6%p `4%x`6 was no match for my `4%X`6!`5"', 'Bluspring'),
(6, '`5"`6You know, you really shouldn''t have a `4%x`6 unless you know how to use it,`5" suggested %W.', 'Bluspring'),
(7, '`5"`6`bARRRGGGGGGG`b!!`5" %w screams in frustration.', 'Bluspring'),
(8, '`5"`6How could I be so feeble?`5" %w laments.', 'Bluspring'),
(9, '`5"`6I must not be as sturdy as I thought...!`5" %w concedes.', 'Bluspring'),
(10, '`5"`6Watch your back, `4%W`6, I am coming for you!`5" %w warns.', 'Bluspring'),
(11, '`5"`6This both sucks and blows!`5" wails %w.', 'Bluspring'),
(12, '`5"`6I see London, I see France, I see `4%w''s`6 underpants!`5" reveals %W.', 'Bluspring'),
(13, '`5"`6The Healer''s Hut can''t help you now, `4%w`6!`5" chides %W.', 'Bluspring'),
(14, '`5%W smiles.  "`6You are too slow.  You are too weak.`5"', 'Bluspring'),
(15, '`5%w bangs %p head against a stone..."`6Stupid, stupid, stupid!`5" %o was heard to say.', 'Bluspring'),
(16, '`5"`6My ego can''t take much more of this bruising!`5" exclaims %w.', 'Bluspring'),
(17, '`5"`6Why didn''t I become a successful doctor like my father suggested?`5" wonders %w aloud.', 'Bluspring'),
(18, '`5"`6Maybe `bnext`b time you won''t be so cocky!`5" laughs %W', 'Bluspring'),
(19, '`5"`6A baby could wield a `4%x `6better than that!`5" %W proclaims.', 'Bluspring'),
(20, '`5"`6You should have just stayed in bed,`5" %W suggests.', 'Bluspring'),
(21, '`5"`6Well isn''t that a kick in the crotch?!`5" %w observes.', 'Bluspring'),
(22, '`5"`6Come back when you learn how to fight,`5" %W scoffs.', 'Bluspring'),
(23, '`5"`6Next time, eat your Wheaties,`5" %W suggests.', 'Bluspring'),
(24, '`5 "`6You are dishonorable, `4%W`6!`5" %w cries.', 'Bluspring'),
(25, '`5"`4%w`6, your lack of posture is a disgrace,`5" %W states. ', 'Bluspring'),
(26, '`5"`6You know, `4%w`6 really had it coming to %s after all those things `bI`b said about `b%p`b mom`5," commented %W.', 'Joe');

-- --------------------------------------------------------

--
-- Table structure for table `free_temp_translations`
--

CREATE TABLE IF NOT EXISTS `free_temp_translations` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `intext` text NOT NULL,
  `outtext` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `version` varchar(50) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `language` (`language`,`uri`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `free_temp_translations`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_titles`
--

CREATE TABLE IF NOT EXISTS `free_titles` (
  `titleid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dk` int(11) NOT NULL DEFAULT '0',
  `ref` varchar(100) NOT NULL,
  `male` varchar(25) NOT NULL,
  `female` varchar(25) NOT NULL,
  PRIMARY KEY (`titleid`),
  KEY `dk` (`dk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `free_titles`
--

INSERT INTO `free_titles` (`titleid`, `dk`, `ref`, `male`, `female`) VALUES
(1, 0, '', '', ''),
(2, 1, '', 'Contestant', 'Contestant'),
(3, 2, '', 'Squire', 'Squire'),
(4, 3, '', 'Gladiator', 'Gladiatrix'),
(5, 4, '', 'Legionnaire', 'Legioness'),
(6, 5, '', 'Centurion', 'Centurioness'),
(7, 6, '', 'Sir', 'Madam'),
(8, 7, '', 'Reeve', 'Reeve'),
(9, 8, '', 'Steward', 'Steward'),
(10, 9, '', 'Mayor', 'Mayoress'),
(11, 10, '', 'Baron', 'Baroness'),
(12, 11, '', 'Count', 'Countess'),
(13, 12, '', 'Viscount', 'Viscountess'),
(14, 13, '', 'Marquis', 'Marchioness'),
(15, 14, '', 'Chancellor', 'Chancelloress'),
(16, 15, '', 'Prince', 'Princess'),
(17, 16, '', 'King', 'Queen'),
(18, 17, '', 'Emperor', 'Empress'),
(19, 18, '', 'Angel', 'Angel'),
(20, 19, '', 'Archangel', 'Archangel'),
(21, 20, '', 'Principality', 'Principality'),
(22, 21, '', 'Power', 'Power'),
(23, 22, '', 'Virtue', 'Virtue'),
(24, 23, '', 'Dominion', 'Dominion'),
(25, 24, '', 'Throne', 'Throne'),
(26, 25, '', 'Cherub', 'Cherub'),
(27, 26, '', 'Seraph', 'Seraph'),
(28, 27, '', 'Demigod', 'Demigoddess'),
(29, 28, '', 'Titan', 'Titaness'),
(30, 29, '', 'Archtitan', 'Archtitaness'),
(31, 30, '', 'Undergod', 'Undergoddess'),
(32, 31, '', 'God', 'Goddess');

-- --------------------------------------------------------

--
-- Table structure for table `free_translations`
--

CREATE TABLE IF NOT EXISTS `free_translations` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `intext` blob NOT NULL,
  `outtext` blob NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `language` (`language`,`uri`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `free_translations`
--

INSERT INTO `free_translations` (`tid`, `language`, `uri`, `intext`, `outtext`, `author`, `version`) VALUES
(1, 'en', 'common', 0x5965204f6c6465204d61696c3a202573206e65772c202573206f6c64, 0x506967656f6e20506f73743a202573206e65772c202573206f6c64, 'Cousjava', '1.1.2 Dragonprime Edition ');

-- --------------------------------------------------------

--
-- Table structure for table `free_untranslated`
--

CREATE TABLE IF NOT EXISTS `free_untranslated` (
  `intext` blob NOT NULL,
  `language` varchar(10) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  PRIMARY KEY (`intext`(200),`language`,`namespace`),
  KEY `language` (`language`),
  KEY `intext1` (`intext`(200),`language`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_untranslated`
--


-- --------------------------------------------------------

--
-- Table structure for table `free_userprefs`
--

CREATE TABLE IF NOT EXISTS `free_userprefs` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` varchar(100) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`setting`,`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_userprefs`
--

INSERT INTO `free_userprefs` (`userid`, `setting`, `value`) VALUES
(1, 'homecity', 'NewHome'),
(2, 'homecity', 'NewHome'),
(1, 'stamina_actions', 'b:0;'),
(2, 'stamina_actions', 'a:15:{s:16:"Hunting - Normal";a:9:{s:7:"maxcost";i:25000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:150;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:25000;s:3:"exp";i:182;}s:21:"Hunting - Easy Fights";a:9:{s:7:"maxcost";i:20000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:100;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:20000;s:3:"exp";i:181;}s:21:"Hunting - Big Trouble";a:8:{s:7:"maxcost";i:30000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:200;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:30000;}s:18:"Hunting - Suicidal";a:8:{s:7:"maxcost";i:35000;s:7:"mincost";i:10000;s:11:"firstlvlexp";i:1000;s:12:"expincrement";d:1.0800000000000000710542735760100185871124267578125;s:13:"costreduction";i:250;s:5:"class";s:7:"Hunting";s:3:"lvl";i:0;s:11:"naturalcost";i:35000;}s:19:"Fighting - Standard";a:9:{s:7:"maxcost";i:2000;s:7:"mincost";i:500;s:11:"firstlvlexp";i:2000;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:15;s:5:"class";s:6:"Combat";s:3:"lvl";i:0;s:11:"naturalcost";i:2000;s:3:"exp";i:3814;}s:12:"Running Away";a:8:{s:7:"maxcost";i:1000;s:7:"mincost";i:200;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:8;s:5:"class";s:6:"Combat";s:3:"lvl";i:0;s:11:"naturalcost";i:1000;}s:19:"Travelling - Plains";a:8:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:5000;}s:19:"Travelling - Jungle";a:9:{s:7:"maxcost";i:10000;s:7:"mincost";i:4000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:60;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:10000;s:3:"exp";i:103;}s:18:"Travelling - River";a:8:{s:7:"maxcost";i:15000;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:100;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:15000;}s:18:"Travelling - Ocean";a:8:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:25000;}s:18:"Travelling - Beach";a:8:{s:7:"maxcost";i:5000;s:7:"mincost";i:2500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:25;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:5000;}s:18:"Travelling - Swamp";a:8:{s:7:"maxcost";i:12500;s:7:"mincost";i:5000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:75;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:12500;}s:22:"Travelling - Mountains";a:8:{s:7:"maxcost";i:20000;s:7:"mincost";i:6000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:140;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:20000;}s:17:"Travelling - Snow";a:8:{s:7:"maxcost";i:25000;s:7:"mincost";i:7500;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.100000000000000088817841970012523233890533447265625;s:13:"costreduction";i:175;s:5:"class";s:10:"Travelling";s:3:"lvl";i:0;s:11:"naturalcost";i:25000;}s:13:"Reinforcement";a:8:{s:7:"maxcost";i:5000;s:7:"mincost";i:2000;s:11:"firstlvlexp";i:500;s:12:"expincrement";d:1.0500000000000000444089209850062616169452667236328125;s:13:"costreduction";i:30;s:5:"class";s:8:"Building";s:3:"lvl";i:0;s:11:"naturalcost";i:5000;}}'),
(1, 'stamina_amber', '400000'),
(2, 'stamina_amber', '400000'),
(1, 'stamina_amount', '850000'),
(2, 'stamina_amount', '920708'),
(1, 'stamina_buffs', 'N;'),
(2, 'stamina_buffs', 'N;'),
(2, 'stamina_minihof', '0'),
(1, 'stamina_red', '200000'),
(2, 'stamina_red', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `free_weapons`
--

CREATE TABLE IF NOT EXISTS `free_weapons` (
  `weaponid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weaponname` varchar(128) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `damage` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`weaponid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `free_weapons`
--

INSERT INTO `free_weapons` (`weaponid`, `weaponname`, `value`, `damage`, `level`) VALUES
(1, 'Rake', 48, 1, 0),
(2, 'Trowel', 225, 2, 0),
(3, 'Spade', 585, 3, 0),
(4, 'Adze', 990, 4, 0),
(5, 'Gardening Hoe', 1575, 5, 0),
(6, 'Torch', 2250, 6, 0),
(7, 'Pitchfork', 2790, 7, 0),
(8, 'Shovel', 3420, 8, 0),
(9, 'Hedge Trimmers', 4230, 9, 0),
(10, 'Hatchet', 5040, 10, 0),
(11, 'Carving Knife', 5850, 11, 0),
(12, 'Rusty Iron Wood-Chopping Axe', 6840, 12, 0),
(13, 'Dull Steel Wood-chopping Axe', 8010, 13, 0),
(14, 'Sharp Steel Wood-chopping Axe', 9000, 14, 0),
(15, 'Woodsman''s Axe', 10350, 15, 0),
(16, 'Pebbles', 48, 1, 1),
(17, 'Stones', 225, 2, 1),
(18, 'Rocks', 585, 3, 1),
(19, 'Small Treebranch', 990, 4, 1),
(20, 'Large Treebranch', 1575, 5, 1),
(21, 'Thickly Padded Sparring Pole', 2250, 6, 1),
(22, 'Thinly Padded Sparring Pole', 2790, 7, 1),
(23, 'Wooden Stave', 3420, 8, 1),
(24, 'Wooden Practice Sword', 4230, 9, 1),
(25, 'Blunt Bronze Short Sword', 5040, 10, 1),
(26, 'Well Crafted Bronze Short Sword', 5850, 11, 1),
(27, 'Rusty Steel Short Sword', 6840, 12, 1),
(28, 'Dull Steel Short Sword', 8010, 13, 1),
(29, 'Sharp Steel Short Sword', 9000, 14, 1),
(30, 'Pages''s Short Sword', 10350, 15, 1),
(31, 'Dull Bronze Sword', 48, 1, 2),
(32, 'Bronze Sword', 225, 2, 2),
(33, 'Well Crafted Bronze Sword', 585, 3, 2),
(34, 'Dull Iron Sword', 990, 4, 2),
(35, 'Iron Sword', 1575, 5, 2),
(36, 'Enchanted Sword', 9000, 14, 2),
(37, 'Well Crafted Iron Sword', 2250, 6, 2),
(38, 'Rusty Steel Sword', 2790, 7, 2),
(39, 'Dull Steel Sword', 3420, 8, 2),
(40, 'Well Crafted Steel Sword', 4230, 9, 2),
(41, 'Engraved Steel Sword', 5040, 10, 2),
(42, 'Steel Sword with Jeweled Hilt', 5850, 11, 2),
(43, 'Golden Hilted Sword', 6840, 12, 2),
(44, 'Platinum Hilted Sword', 8010, 13, 2),
(45, 'Adept''s Sword', 10350, 15, 2),
(46, 'Steel Longsword', 48, 1, 3),
(47, 'Etched Steel Longsword', 585, 3, 3),
(48, 'Polished Steel Longsword', 225, 2, 3),
(49, 'Well Balanced Steel Longsword', 990, 4, 3),
(50, 'Perfectly Balanced Steel Longsword', 1575, 5, 3),
(51, 'Engraved Steel Longsword', 2250, 6, 3),
(52, 'Longsword with Silver-plated Hilt', 2790, 7, 3),
(53, 'Longsword with Gold-plated Hilt', 3420, 8, 3),
(54, 'Longsword with Solid Gold Hilt', 4230, 9, 3),
(55, 'Longsword with Solid Platinum Hilt', 5040, 10, 3),
(56, 'Moonsilver Longsword', 5850, 11, 3),
(57, 'Autumngold Longsword', 6840, 12, 3),
(58, 'Elfsilver Longsword', 8010, 13, 3),
(59, 'Enchanted Longsword', 9000, 14, 3),
(60, 'Wolfmaster''s Longsword', 10350, 15, 3),
(61, 'Poorly Balanced Bastard Sword', 48, 1, 4),
(62, 'Tarnished Bastard Sword', 225, 2, 4),
(63, 'Iron Bastard Sword', 585, 3, 4),
(64, 'Steel Bastard Sword', 990, 4, 4),
(65, 'Well Balanced Steel Bastard Sword', 1575, 5, 4),
(66, 'Perfectly Balanced Bastard Sword', 2250, 6, 4),
(67, 'Rune-etched Bastard Sword', 2790, 7, 4),
(68, 'Bronze-inlay Bastard Sword', 3420, 8, 4),
(69, 'Silver-inlay Bastard Sword', 4230, 9, 4),
(70, 'Gold-inlay Bastard Sword', 5040, 10, 4),
(71, 'Nightsilver Bastard Sword', 5850, 11, 4),
(72, 'Morning-gold Bastard Sword', 6840, 12, 4),
(73, 'Truesplendor Bastard Sword', 8010, 13, 4),
(74, 'Enchanted Elfgold Bastard Sword', 9000, 14, 4),
(75, 'Noble''s Bastard Sword', 10350, 15, 4),
(76, 'Tarnished Iron Claymore', 48, 1, 5),
(77, 'Polished Iron Claymore', 225, 2, 5),
(78, 'Rusty Steel Claymore', 585, 3, 5),
(79, 'Steel Claymore', 990, 4, 5),
(80, 'Finely Crafted Steel Claymore', 1575, 5, 5),
(81, 'Scottish Broadsword', 2250, 6, 5),
(82, 'Viking War Sword', 2790, 7, 5),
(83, 'Barbarian''s Sword', 3420, 8, 5),
(84, 'Scottish Basket-Hilt Claymore', 4230, 9, 5),
(85, 'Agincourt Steel Sword', 5040, 10, 5),
(86, 'Celtic Combat Sword', 5850, 11, 5),
(87, 'Norseman''s Sword', 6840, 12, 5),
(88, 'Knight''s Sword', 8010, 13, 5),
(89, 'Heraldic Lion Claymore', 9000, 14, 5),
(90, 'Dragon Soldier''s Claymore', 10350, 15, 5),
(91, 'Two Broken Short Swords', 48, 1, 6),
(92, 'Two Short Swords', 225, 2, 6),
(93, 'Iron Scimitars', 585, 3, 6),
(94, 'Balanced Scimitars', 990, 4, 6),
(95, 'Tarnished Steel Scimitars', 1575, 5, 6),
(96, 'Rusty Steel Scimitars', 2250, 6, 6),
(97, 'Steel Scimitars', 2790, 7, 6),
(98, 'Bronze Hilted Steel Scimitars', 3420, 8, 6),
(99, 'Gold Hilted Steel Scimitars', 4230, 9, 6),
(100, 'Platinum Hilted Steel Scimitars', 5040, 10, 6),
(101, 'Well Crafted Adamantite Scimitars', 5850, 11, 6),
(102, 'Perfectly Crafted Adamantite Scimitars', 6840, 12, 6),
(103, 'Enchanted Scimitars', 8010, 13, 6),
(104, 'Drow Crafted Scimitars', 9000, 14, 6),
(105, 'Unicorn Blood-Forged Scimitars', 10350, 15, 6),
(106, 'Chipped Iron Axe', 48, 1, 7),
(107, 'Iron Axe', 225, 2, 7),
(108, 'Rusty Steel Axe', 585, 3, 7),
(109, 'Fine Steel Axe', 990, 4, 7),
(110, 'Lumberjack''s Axe', 1575, 5, 7),
(111, 'Low Quality Battle Axe', 2250, 6, 7),
(112, 'Medium Quality Battle Axe', 2790, 7, 7),
(113, 'High Quality Battle Axe', 3420, 8, 7),
(114, 'Double Bladed Axe', 4230, 9, 7),
(115, 'Double Bladed Battle Axe', 5040, 10, 7),
(116, 'Gold Plated Battle Axe', 5850, 11, 7),
(117, 'Platinum Hilted Battle Axe', 6840, 12, 7),
(118, 'Enchanted Battle Axe', 8010, 13, 7),
(119, 'Dwarf Smith''s Battle Axe', 9000, 14, 7),
(120, 'Dwarf Warrior''s Battle Axe', 10350, 15, 7),
(121, 'Broken Iron Mace', 48, 1, 8),
(122, 'Tarnished Iron Mace', 225, 2, 8),
(123, 'Polished Iron Mace', 585, 3, 8),
(124, 'Well Crafted Iron Mace', 990, 4, 8),
(125, 'Polished Steel Mace', 1575, 5, 8),
(126, 'Well Crafted Steel Mace', 2250, 6, 8),
(127, 'Poorly Balanced Double Mace', 2790, 7, 8),
(128, 'Well Balanced Double Mace', 3420, 8, 8),
(129, 'Battle Mace', 4230, 9, 8),
(130, 'War Chieftain''s Battle Mace', 5040, 10, 8),
(131, 'War Chieftain''s Morning Star', 5850, 11, 8),
(132, 'Adamantite Morning Star', 6840, 12, 8),
(133, 'Dwarf Crafted Morning Star', 8010, 13, 8),
(134, 'Dwarf Warlord''s Morning Star', 9000, 14, 8),
(135, 'Enchanted Morning Star', 10350, 15, 8),
(136, 'Boot Knife', 48, 1, 9),
(137, 'Target Knife', 225, 2, 9),
(138, 'Blackjack', 585, 3, 9),
(139, 'Throwing Star', 990, 4, 9),
(140, 'Hira-Shuriken', 1575, 5, 9),
(141, 'Throwing Spike', 2250, 6, 9),
(142, 'Atlatl', 2790, 7, 9),
(143, 'Qilamitautit Bolo', 3420, 8, 9),
(144, 'War Quoait', 4230, 9, 9),
(145, 'Cha Kran', 5040, 10, 9),
(146, 'Fei Piau', 5850, 11, 9),
(147, 'Jen Piau', 6840, 12, 9),
(148, 'Gau dim Piau', 8010, 13, 9),
(149, 'Enchanted Throwing Axe', 9000, 14, 9),
(150, 'Teksolo''s Ninja Stars', 10350, 15, 9),
(151, 'Farmer''s Bow & Wooden Arrows', 48, 1, 10),
(152, 'Farmer''s Bow & Stone Tipped Arrows', 225, 2, 10),
(153, 'Farmer''s Bow & Steel Tipped Arrows', 585, 3, 10),
(154, 'Hunter''s Bow & Wooden Arrows', 990, 4, 10),
(155, 'Hunter''s Bow & Stone Tipped Arrows', 1575, 5, 10),
(156, 'Hunter''s Bow & Steel Tipped Arrows', 2250, 6, 10),
(157, 'Ranger''s Bow & Wooden Arrows', 2790, 7, 10),
(158, 'Ranger''s Bow & Stone Tipped Arrows', 3420, 8, 10),
(159, 'Ranger''s Bow & Steel Tipped Arrows', 4230, 9, 10),
(160, 'Longbow', 5040, 10, 10),
(161, 'Crossbow', 5850, 11, 10),
(162, 'Elvish Longbow', 6840, 12, 10),
(163, 'Elvish Longbow & Flame Tipped Arrows', 8010, 13, 10),
(164, 'Elvish Longbow & Enchanted Arrows', 9000, 14, 10),
(165, 'Longbow of the Elf King', 10350, 15, 10),
(166, 'MightyE''s Long Sword', 225, 2, 11),
(167, 'MightyE''s Short Sword', 48, 1, 11),
(168, 'MightyE''s Bastard Sword', 585, 3, 11),
(169, 'MightyE''s Scimitars', 990, 4, 11),
(170, 'MightyE''s Battle Axe', 1575, 5, 11),
(171, 'MightyE''s Throwing Hammer', 2250, 6, 11),
(172, 'MightyE''s Morning Star', 2790, 7, 11),
(173, 'MightyE''s Compound Bow', 3420, 8, 11),
(174, 'MightyE''s Rapier', 4230, 9, 11),
(175, 'MightyE''s Sabre', 5040, 10, 11),
(176, 'MightyE''s Light Sabre', 5850, 11, 11),
(177, 'MightyE''s Wakizashi', 6840, 12, 11),
(178, 'MightyE''s 2-Handed War Sword', 8010, 13, 11),
(179, 'MightyE''s 2-handed War Axe', 9000, 14, 11),
(180, 'MightyE''s Claymore', 10350, 15, 11),
(181, 'Spell of Fire', 48, 1, 12),
(182, 'Spell of Earthquake', 225, 2, 12),
(183, 'Spell of Flood', 585, 3, 12),
(184, 'Spell of Hurricane', 990, 4, 12),
(185, 'Spell of Mind Control', 1575, 5, 12),
(186, 'Spell of Lightning', 2250, 6, 12),
(187, 'Spell of Weakness', 2790, 7, 12),
(188, 'Spell of Fear', 3420, 8, 12),
(189, 'Spell of Poison', 4230, 9, 12),
(190, 'Spell of Spirit Possession', 5040, 10, 12),
(191, 'Spell of Despair', 5850, 11, 12),
(192, 'Spell of Bat Summoning', 6840, 12, 12),
(193, 'Spell of Wolf Summoning', 8010, 13, 12),
(194, 'Spell of Unicorn Summoning', 9000, 14, 12),
(195, 'Spell of Dragon Summoning', 10350, 15, 12);
