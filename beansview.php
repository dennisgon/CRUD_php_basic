<?php
  $title = "utama";
  require  'header.php';
  include 'navigation.php';
  include 'controller/beancontroller.php';
?>
  <tr id="table-header">
    <td colspan="2">Bean</td>
    <td colspan="2">Description</td>
    <td colspan="2">Price/unit</td>
  </tr>
  <!-- panggil view -->
  <?php 
    foreach ($datas as $data ) {
   ?>
  <tr>
    <td colspan="2"><?= $data['Bean_Name']?></td>
    <td colspan="2"><?= $data['Bean_Description']?></td>
    <td colspan="2"><?= $data['Price_Per_Unit']?></td>

  </tr>
  <?php } ?>
  
<?php
  include 'footer.php';
?>