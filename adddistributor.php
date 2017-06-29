<?php
  $title = "add distributor";
  require  'header.php';
  include 'navigation.php';
  include 'controller/countrycontroller.php';
?>
<form method="POST" action="controller/distributorcontroller.php?action=add">
  <table width="800">
    <tr>
      <td>Distributor name</td>
      <td><input type="text" name="name"></td>
    </tr>
    <tr>
      <td>City</td>
      <td><input type="text" name="city"></td>
    </tr>
    <tr>
      <td>State/Region</td>
      <td><input type="text" name="region"></td>
    </tr>
    <tr>
      <td>Country</td>
      <td>
        <select name="country">
          <?php foreach ($datas as $data ) {?>
          <option value="<?= $data['Country_ID']?>"><?= $data['Country_Name']?></option>
          <?php } ?>
        </select>

      </td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input type="text" name="phone"></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="text" name="email"></td>
    </tr>
   <tr>
     <td><input type="submit" name="" value="add"></td>
   </tr>
  </table>
</form>
<?php
  include 'footer.php';
?>