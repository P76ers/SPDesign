<?php
include($_SERVER['DOCUMENT_ROOT'] . "/SpDesign/resources/functions/function.php");
wrongUrl();
session_start();

$title = 'Kontakt';
$bgImage = '/SpDesign/resources/images/background/typ2.png';
include($_SERVER['DOCUMENT_ROOT'] . "/SpDesign/resources/layout/header.php");

include($_SERVER['DOCUMENT_ROOT'] . "/SpDesign/resources/layout/formAppointment.php");
?>



<?php
include($_SERVER['DOCUMENT_ROOT'] . "/SpDesign/resources/layout/footer.php");
?>