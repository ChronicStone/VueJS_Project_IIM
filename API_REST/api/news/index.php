
<?php
require('../includes/jsonheader.php');
require('../includes/parse_delete_put.php');
require('../includes/dbtools.php');

switch ($_METHOD)
{
	case 'GET':
		if (isset($_GET['id']))
		{
			$qry = $db->prepare('SELECT * FROM news WHERE id=?');
			$qry->execute(array($_GET['id']));
			$ans = $qry->fetchAll();
			$infos = array_map(function($dbentry) { return array('titre' => $dbentry['titre'],
																'id' => $dbentry['id'],
																'message' => $dbentry['message'],
																'nom' => $dbentry['nom'],
																'date' => $dbentry['date'],
																'type' => $dbentry['type'],
																'nbcomm' => $dbentry['nbcomm']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		else
		{
			$qry = $db->query('SELECT * FROM news');
			$ans = $qry->fetchAll();
			$news = array_map(function($dbentry) { return array('titre' => $dbentry['titre'],
																'id' => $dbentry['id'],
																'message' => $dbentry['message'],
																'nom' => $dbentry['nom'],
																'date' => $dbentry['date'],
																'type' => $dbentry['type'],
																'nbcomm' => $dbentry['nbcomm']); }, $ans);
			echo json_encode(array('news' => $news));
		}
		break;
		
	case 'POST':
		if (isset($_POST['pseudo'], $_POST['pass'],  $_POST['mail'], $_POST['rank'], $_POST['avatar'], $_POST['desc_user'], $_POST['fb'], $_POST['insta'], $_POST['twitter'], $_POST['nom'], $_POST['prenom'], $_POST['siteweb']))
		{
			$qry = $db->prepare('INSERT INTO news(`pseudo`, `pass`, `mail`, `rank`, `avatar`) VALUES(?, ?, ?, ?, ?)');
			$qry->execute(array($_POST['name'], $_POST['client_name'], $_POST['employee_name'], $_POST['budget'], $_POST['state']));
			
			echo json_encode(array('status' => 'success'));
		}
		else
			echo json_encode(array('status' => 'failure', 'error' => 'Missing data'));
		break;
		
	case 'PUT':
		if (isset($_PUT['name']))
		{
			$error = false;
			if (isset($_PUT['client_name']))
				$error |= update('news', 'name', $_PUT['name'], 'client_name', $_PUT['client_name']);
			if (isset($_PUT['employee_name']))
				$error |= update('news', 'name', $_PUT['name'], 'employee_name', $_PUT['employee_name']);
			if (isset($_PUT['budget']))
				$error |= update('news', 'name', $_PUT['name'], 'budget', $_PUT['budget']);
			if (isset($_PUT['state']))
				$error |= update('news', 'name', $_PUT['name'], 'state', $_PUT['state']);

			
			if ($error)
				echo json_encode(array('status' => 'failure', 'error' => 'Bad table or column name'));
			else
				echo json_encode(array('status' => 'success'));
		}
		else
			echo json_encode(array('status' => 'failure', 'error' => 'Missing name'));
		break;
		
	case 'DELETE':
		if (isset($_DELETE['name']))
		{
			$qry = $db->prepare('DELETE FROM news WHERE name=?');
			$qry->execute(array($_DELETE['name']));
			echo json_encode(array('status' => 'success'));
		}
		else
			echo json_encode(array('status' => 'failure', 'error' => 'Missing name'));
		break;
}