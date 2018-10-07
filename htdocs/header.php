
<?php
function load_index_php()
{
	header("location: /");
	exit ;
}
function save_action_and_reload($action)
{
	$_SESSION['last_action'] = $action;
	$_POST['submit_type'] = NULL;
	header("location: ".$_SERVER['REQUEST_URI']);
	exit ;
}
function save_action_and_reload_noget($action)
{
	$_SESSION['last_action'] = $action;
	$_POST['submit_type'] = NULL;
	header("location: ".$_SERVER['PHP_SELF']);
	exit ;
}
session_start();
$sql_ptr = mysqli_connect("localhost:8080", "root", "qwerty", "rush00"); 
if (!$sql_ptr || !mysqli_set_charset($sql_ptr, "utf8"))
	exit("mySQL error: ".mysqli_connect_error().PHP_EOL);
$imgs_path = "/img";
setlocale(LC_MONETARY, 'en_ZA'); 

if (!empty($_SESSION['last_action']))
{
	echo '<div class="top-alert-box">'.
		$_SESSION['last_action'].
		'</div>';
	$_SESSION['last_action'] = NULL;
}

?>
<div class="top-box">
	<h1 class="site-title">
		<a href="/">ft_minishop</a>
	</h1>
	<table>
		<tr>
			<th><a href="/categories?cat=1"></a></th>
			<th><a href="/categories?cat=2"></a></th>
			<th><a href="/categories?cat=3"></a></th>
			<th><a href="/categories?cat=4"></a></th>
			<th><a href="/categories?cat=5"></a></th>
		</tr>
	</table>
</div>
