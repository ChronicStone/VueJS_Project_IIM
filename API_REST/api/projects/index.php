
<?php
require('../includes/jsonheader.php');
require('../includes/parse_delete_put.php');
require('../includes/dbtools.php');

switch ($_METHOD)
{
	case 'GET':
		if (isset($_GET['pseudo']))
		{
			$qry = $db->prepare('SELECT * FROM accounts WHERE pseudo=?');
			$qry->execute(array($_GET['pseudo']));
			$ans = $qry->fetchAll();
			$infos = array_map(function($dbentry) { return array('pseudo' => $dbentry['pseudo'],
																'pass' => $dbentry['pass'],
																'mail' => $dbentry['mail'],
																'rank' => $dbentry['rank'],
																'avatar' => $dbentry['avatar'],
																'desc_user' => $dbentry['desc_user'],
																'fb' => $dbentry['fb'],
																'insta' => $dbentry['insta'],
																'twitter' => $dbentry['twitter'],
																'nom' => $dbentry['nom'],
																'prenom' => $dbentry['prenom'],
																'siteweb' => $dbentry['siteweb']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		else if (isset($_GET['guid']))
		{
			$qry = $db->prepare('SELECT * FROM accounts WHERE guid=?');
			$qry->execute(array($_GET['guid']));
			$ans = $qry->fetchAll();
			$infos = array_map(function($dbentry) { return array('pseudo' => $dbentry['pseudo'],
																'pass' => $dbentry['pass'],
																'mail' => $dbentry['mail'],
																'rank' => $dbentry['rank'],
																'avatar' => $dbentry['avatar'],
																'desc_user' => $dbentry['desc_user'],
																'fb' => $dbentry['fb'],
																'insta' => $dbentry['insta'],
																'twitter' => $dbentry['twitter'],
																'nom' => $dbentry['nom'],
																'prenom' => $dbentry['prenom'],
																'siteweb' => $dbentry['siteweb']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		else
		{
			$qry = $db->query('SELECT * FROM accounts');
			$ans = $qry->fetchAll();
			$accounts = array_map(function($dbentry) { return array('pseudo' => $dbentry['pseudo'],
																	'pass' => $dbentry['pass'],
																	'mail' => $dbentry['mail'],
																	'rank' => $dbentry['rank'],
																	'avatar' => $dbentry['avatar'],
																	'desc_user' => $dbentry['desc_user'],
																	'fb' => $dbentry['fb'],
																	'insta' => $dbentry['insta'],
																	'twitter' => $dbentry['twitter'],
																	'nom' => $dbentry['nom'],
																	'prenom' => $dbentry['prenom'],
																	'siteweb' => $dbentry['siteweb']); }, $ans);
			echo json_encode(array('accounts' => $accounts));
		}
		break;
}