<?php 
mb_internal_encoding("UTF-8");

$link = mysqli_connect("localhost", 'root','', 'facebook') or die("Error " . mysqli_error($link));

if($_POST['action'] == "check") {
	$userID = mysql_real_escape_string(trim($_POST['userID']));
	$checkData = $link->query("SELECT * FROM `user` WHERE `facebook_id` = '".$userID."'");
	$result = [];
	if($checkData->num_rows == 0) {
		$result['res'] = "register";
	} else {
		$result['res'] = "login";
	}
	header("Content-Type: text/json");
	echo(json_encode($result));
}

if($_POST['action'] == "register"){
	$tmp = json_decode($_POST['groups'], true);
	$link->query("INSERT INTO `user`(`facebook_id`, `location`, `height`, `style`) VALUES ('".$_POST['userID']."','".$_POST['location']."','".$_POST['height']."','".$_POST['style']."')");
	$id = $link->insert_id;
	foreach ($tmp as $key => $value) {
		$link->query("INSERT INTO `group`(`group_id`, `group_name`, `user_id`) VALUES ('".$value['id']."','".$value['name']."','".$id."')");
	}
}


?>