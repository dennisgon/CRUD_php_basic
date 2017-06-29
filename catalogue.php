<?php
  $title = "utama";
  require  'header.php';
  include 'navigation.php';
  include 'controller/beancontroller.php';
?>
  <table width="800">
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
    <td colspan="2"><?php echo $data['Bean_Name']?></td>
    <td colspan="2"><?php echo $data['Bean_Description']?></td>
    <td colspan="2">$<?php echo number_format((float)$data['Price_Per_Unit'], 2, '.', '');?></td>

  </tr>
  <?php } ?>
  </table>
<?php
  include 'footer.php';
?>