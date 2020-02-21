
<?php
require('../includes/jsonheader.php');
require('../includes/parse_delete_put.php');
require('../includes/dbtools.php');

switch ($_METHOD)
{
	case 'GET':
		if (isset($_GET['name']))
		{
			$qry = $db->prepare('SELECT * FROM clients WHERE name=?');
			$qry->execute(array($_GET['name']));
			$ans = $qry->fetchAll();
			$infos = array_map(function($dbentry) { return array('name' => $dbentry['name'],
																'salary' => $dbentry['contact']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		else if (isset($_GET['guid']))
		{
			$qry = $db->prepare('SELECT * FROM clients WHERE name=?');
			$qry->execute(array($_GET['name']));
			$ans = $qry->fetchAll();
			$infos = array_map(function($dbentry) { return array('name' => $dbentry['name'],
																'salary' => $dbentry['contact']); }, $ans);
			echo json_encode(array('infos' => $infos));
		}
		else
		{
			$qry = $db->query('SELECT name FROM clients');
			$ans = $qry->fetchAll();
			$clients = array_map(function($dbentry) { return $dbentry['name']; }, $ans);
			echo json_encode(array('clients' => $clients));
		}
		break;
		
	case 'POST':
		if (isset($_POST['name'], $_POST['salary'],  $_POST['seniority']))
		{
			$qry = $db->prepare('INSERT INTO clients(`name`, `salary`, `seniority`) VALUES(?, ?, ?)');
			$qry->execute(array($_POST['name'], $_POST['salary'], $_POST['seniority']));
			
			echo json_encode(array('status' => 'success'));
		}
		else
			echo json_encode(array('status' => 'failure', 'error' => 'Missing data'));
		break;
		
	case 'PUT':
		if (isset($_PUT['name']))
		{
			$error = false;
			if (isset($_PUT['salary']))
				$error |= update('clients', 'name', $_PUT['name'], 'salary', $_PUT['salary']);
			if (isset($_PUT['seniority']))
				$error |= update('clients', 'name', $_PUT['name'], 'seniority', $_PUT['seniority']);
			
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
			$qry = $db->prepare('DELETE FROM clients WHERE name=?');
			$qry->execute(array($_DELETE['name']));
			echo json_encode(array('status' => 'success'));
		}
		else
			echo json_encode(array('status' => 'failure', 'error' => 'Missing name'));
		break;
}