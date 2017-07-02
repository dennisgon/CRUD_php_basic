<?php
  $title = "Upload";
  require  'header.php';
  include 'navigation.php';
  include 'controller/countrycontroller.php';
?>
<form method="POST" action="controller/uploadcontroller.php?action=add" enctype="multipart/form-data">
  <table width="800">
    <tr>
      <td>Title</td>
      <td><input type="text" name="title"></td>
    </tr>
    <tr>
      <td>Document File</td>
      <td><input type="text" name="fileUpload" id="fileUpload">

      <a href="#" onclick="clickFileButton()" />
        <input type="button" value="browse..."></a>
        <input type="file" id="fileID" name="data" style="visibility: hidden;" onchange="CopyMe(this, 'fileUpload');"  />
      </td>
    </tr>
    <tr>
      <td>Author</td>
      <td><input type="text" name="author"></td>
    </tr>
    <tr>
      <td>
        <input type="submit" name="submit" value="add document">
      </td>
    </tr>
  </table>
  <script type="text/javascript">
    function clickFileButton(){
      document.getElementById('fileID').click(); return false;
    }
    function CopyMe(oFileInput, sTargetID) {
      var arrTemp = oFileInput.value.split('\\');
      document.getElementById(sTargetID).value = arrTemp[arrTemp.length - 1];
    }



  </script>
</form>
<?php
  include 'footer.php';
?>