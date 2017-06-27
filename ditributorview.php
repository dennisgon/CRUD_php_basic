<?php
  $title = "utama";
  require  'header.php';
  include 'navigation.php';
  include 'controller/distributorcontroller.php';
?>
  <table>
  <tr id="table-header">
    <td colspan="2">Distributor name</td>
    <td colspan="2">City</td>
    <td colspan="2"></td>
  </tr>
  <!-- panggil view -->

  <?php 
    foreach ($datas as $data ) {
   ?>
  <tr>
    <td colspan="2"><?= $data['Distributor_Name']?></td>
    <td colspan="2"><?= $data['City']?></td>
    <td colspan="2"><a href="distributoredit.php?id=<?= $data['Distributor_ID']?>">Edit</a></td>
  </tr>
  <?php } ?>
  </table>
<?php
  include 'footer.php';
?>