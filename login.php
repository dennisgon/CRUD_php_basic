<?php
  $title = "login";
  require  'header.php';
?>
  <form  method="POST" action="controller/loginscontroller.php?action=login">
  <tr>
    <td>User ID:</td>
    <td><input type="text" name="username" value="training"></td>
  </tr>
  <tr>
    <td>Password:</td>
    <td><input type="password" name="password" value="coldfusion"></td>
  </tr>
  <tr>
    <td colspan="2" >
      <input type="submit" name="login" value="Login" id="login">
    </td>
  </tr>
  </form>