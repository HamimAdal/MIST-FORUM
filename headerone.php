<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl" lang="nl">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 	<meta name="description" content="A short description." />
 	<meta name="keywords" content="put, keywords, here" />
 	<title>MIST FORUM</title>
	<link rel="stylesheet" href="style11.css" type="text/css">
</head>
<body>

<link rel="stylesheet" href="css/style2.css" type="text/css">


<div id="page">
		<div id="header">
			<div>
				<a href="index.html" class="logo"><img src="images/logo.png" alt=""></a>
				<ul id="navigation">
					<li>
						<a href="index1.php">Home</a>
					</li>
					
					<li>
						<a href="indexseepost.php">See Post</a>
						
					</li>
					<li>
						<a href="index.php">Write Post</a>
						
					</li>
					<li>
						<a href="about.html">Sign Up</a>
					</li>
					<li>
						<a href="./ajax-chat/ajax-chat.html">Free Chat</a>
					</li>
					
				</ul>
			</div>
		</div>




<h1>MIST FORUM</h1>
	<div id="wrapper">
	<div id="menu">
		<a class="item" href="/MIST FORUM/index.php">Catagory</a> -
		<a class="item" href="/MIST FORUM/create_topic.php">Create a topic</a> -
		<a class="item" href="/MIST FORUM/create_cat.php">Create a category</a>
		<a class="item" href="/MIST FORUM/create_topic1.php">Create a topic</a> -
		<a class="item" href="/MIST FORUM/create_cat1.php">Create a category</a>
		
		
		
		<div id="userbar">
		<?php
		if($_SESSION['signed_in'])
		{
			echo 'Hello <b>' . htmlentities($_SESSION['user_name']) . '</b>. Not you? <a class="item" href="signout.php">Sign out</a>';
		}
		else
		{
			echo '<a class="item" href="signin.php">Sign in</a> or <a class="item" href="signup.php">create an account</a>';
		}
		?>
		</div>
	</div>
		<div id="content">