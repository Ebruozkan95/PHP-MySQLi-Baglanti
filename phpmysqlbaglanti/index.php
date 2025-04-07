<?php
include_once 'baglanti.php';
error_reporting(0);
$base_path = str_replace($_SERVER['DOCUMENT_ROOT'], null, dirname(__FILE__));
session_start();

function seo($s) {
    $tr = array('ş','Ş','ı','I','İ','ğ','Ğ','ü','Ü','ö','Ö','Ç','ç','(',')',':',',');
    $eng = array('s','s','i','i','i','g','g','u','u','o','o','c','c','','','-','');
    $s = str_replace($tr,$eng,$s);
    $s = strtolower($s);
    $s = preg_replace('/&amp;amp;amp;amp;amp;amp;amp;amp;amp;.+?;/', '', $s);
    $s = preg_replace('/\s+/', '-', $s);
    $s = preg_replace('|-+|', '-', $s);
    $s = preg_replace('/#/', '', $s);
    $s = str_replace('.', '', $s);
    $s = trim($s, '-');
    return $s;
}
$ayarsor=mysqli_query($baglanti,"select * from ayarlar where  id ");
$ayarcek = mysqli_fetch_array($ayarsor); 
?>
<!doctype html>
<html lang="tr" class="no-js">
<head>
		
<base href="<?php $_SERVER['SERVER_NAME'];?>/"/>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css">
	<meta name="keywords" content="" />
	<meta http-equiv="Content-Language" content="TR"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="<?php echo ($ayarcek['ayar_aciklama']); ?>">
		
<?php 
	include 'header.php'; 
	include 'footer.php';
?>
<script src="js/bootstrap.min.js" ></script>
<script src="js/jquery.js" ></script>
<script src="js/jquery.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

