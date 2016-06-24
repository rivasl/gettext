<?php
session_start();

$lang_array = [
    "es" => "ltr",
    "en" => "ltr",
    "pt" => "ltr",
    "ar" => "rtl"
];

// Plural gettext function
function _p($singular,$plural,$number) {
    return sprintf(ngettext($singular, $plural, abs($number)), $number);
}


// Idioma
if ($_GET['language']) $_SESSION['language'] = $_GET['language'];
if (!array_key_exists('language', $_SESSION)) $_SESSION['language'] = 'en_US';

// Dominio
$text_domain = 'messages';

// La ruta a los archivos de traducción
bindtextdomain($text_domain, './locale' ); 

// El codeset del textdomain
bind_textdomain_codeset($text_domain, 'UTF-8'); 

// El Textdomain
textdomain($text_domain);

// Dependiendo de tu OS putenv/setlocale configurarán tu idioma.
// cambiamos el lenguaje
$resultado=setlocale(LC_ALL, $_SESSION['language'].".utf8");
if ($resultado == null) echo "<BR>ERROR: LENGUAJE NO SOPORTADO!<BR>";
else echo "\$resultado:$resultado<br>";

$short_lang=substr($_SESSION['language'], 0, 2);
?>

<!DOCTYPE html>
<html lang="<?php echo $short_lang; ?>" dir="<?php echo $lang_array[$short_lang]; ?>" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Gettext Test</title>
</head>

<body>
<p><?php echo "SESSION['language']:".$_SESSION['language']; ?></p>
<p><?php echo $_SERVER['HTTP_ACCEPT_LANGUAGE'];?></p>
<p><?php echo _("Select your language:");?></p>
<ul>
  <li><a href="index.php?language=es_ES"><?php echo _("Spanish");?></a></li>
  <li><a href="index.php?language=en_US"><?php echo _("English");?></a></li>
  <li><a href="index.php?language=pt_BR"><?php echo _("Portuguese");?></a></li>
  <li><a href="index.php?language=ar_AE"><?php echo _("Arabic");?></a></li>
</ul>

<?php

echo _("Hello World");

echo "<br />\n";

echo _p("You have %d message","You have %d messages",1);

echo "<br />\n";

echo _p("You have %d message","You have %d messages",25);

?>
<br />
</body>
</html>
