<?php
  $title = "home";
  require  'header.php';
  include 'navigation.php';
  include 'controller/homecontroller.php';
?>
  <!-- panggil view -->
  <?php 
    foreach ($datas as $data ) {
   ?>
    <div id="isi_home">
    <b>Bean of the day</b>
    <p><?= $data['Bean_Name']?></p>
    <b>Sale Price</b>
    <p><?= $data['Sale_Price']?></p>
    <b>Description</b>
    <p><?= $data['Bean_Description']?></p>
    </div>
  <?php } ?>
  
<?php
  include 'footer.php';
?>