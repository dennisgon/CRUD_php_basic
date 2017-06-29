<table width="800" border="0"r>
  <tr>
    <td colspan="6"><div align="center">
		<span ><?php echo date("F d Y"); ?></span>
	</div></td>
  </tr>
</table>

</body>
</html>
<script type="text/javascript">
  var monthNames = ["January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  ];

  var d = new Date();
  var date = monthNames[d.getMonth()]+" "+d.getDate()+", "+d.getFullYear();
  document.getElementById("date").innerHTML = date;
</script>
