
<?php
require('../includes/jsonheader.php');
require('../includes/parse_delete_put.php');
require('../includes/dbtools.php');

switch ($_METHOD)
{
	case 'GET':
		if (isset($_GET['id_news']))
		{
			$qry = $db->prepare('SELECT * FROM news_comment WHERE id_news=?');
			$qry->execute(array($_GET['id_news']));
			$ans = $qry->fetchAll();
			$infos = array_map(function($dbentry) { return array('message' => $dbentry['message'],
																 'id_news' => $dbentry['id_news'],
																 'date' => $dbentry['date'],
																 'id_account' => $dbentry['id_account']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		else
		{
			$qry = $db->query('SELECT * FROM accounts');
			$ans = $qry->fetchAll();
			$accounts = array_map(function($dbentry) { return array('message' => $dbentry['message'],
																	 'id_news' => $dbentry['id_news'],
																	 'date' => $dbentry['date'],
																 	'id_account' => $dbentry['id_account']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		break;
}