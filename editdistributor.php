<?php
  $title = "add distributor";
  require  'header.php';
  include 'navigation.php';
  require 'controller/countrycontroller.php';
  $obj_connect = new Connection();

  $con = $obj_connect->up();
  $id = $_GET['id'];
  $query = "SELECT * FROM Distributor Where Distributor_ID = $id";
  $retval = mysqli_query($con,$query);
  while ($row = mysqli_fetch_assoc($retval)) {
    $results[] = $row;
  }
  $obj_connect->down();
?>
<form method="POST" action="controller/distributorcontroller.php?action=edit">
  <input type="hidden" name="id" value="<?= $_GET['id']; ?>">
  <?php foreach ($results as $result) {
  ?> 
  <table width="800">
    <tr>
      <td>Distributor name</td>
      <td><input type="text" name="name" value="<?= $result['Distributor_Name']?>"></td>
    </tr>
    <tr>
      <td>City</td>
      <td><input type="text" name="city" value="<?= $result['City']?>"></td>
    </tr>
    <tr>
      <td>State/Region</td>
      <td><input type="text" name="region" value="<?= $result['State_Region']?>"></td>
    </tr>
    <tr>
      <td>Country</td>
      <td>
        <select name="country">
          <option value="<?php 
              $con = $obj_connect->up();
              $query = "SELECT * FROM country Where Country_ID =".$result['Country_ID']."";
              $retval = mysqli_query($con,$query);

              $row = mysqli_fetch_assoc($retval);
              echo $row['Country_ID'];
              $obj_connect->down();
           ?>
          ">
          <?php  echo $row['Country_Name']?>
          </option>
            
          </option>
          <?php foreach ($datas as $data ) {?>
          <option value="<?= $data['Country_ID']?>"><?= $data['Country_Name']?></option>
          <?php } ?>
        </select>

      </td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input type="text" name="phone" value="<?= $result['Phone']?>"></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="text" name="email" value="<?= $result['Email']?>"></td>
    </tr>
   <tr>
     <td><input type="submit" name="" value="add"></td>
   </tr>
  </table>
 <!--  <?php } ?> -->
</form>
<?php
  include 'footer.php';
?>