<?
  ///////////////////////////////////////////////////
  // Блок "Каталог"
  // 2005 (C) Выскорко М.С. (aspid02@ngs.ru)
  ///////////////////////////////////////////////////
?>
<table>
	<tr>
		<td colspan="2">
			<h2>каталоги:</h2>
		</td>
	</tr>
		<?
		$query = "SELECT * FROM cat";
		$result=mysql_query( $query,  $aDBLink);
		while ($catalog[]=mysql_fetch_array($result, MYSQL_ASSOC)){}
		for($i=0;$i<count($catalog)-1;$i++)
			{
			print	"<tr>
						<td><img src=\"$curdir/".$catalog[$i]["img"]."\" height=\"$h_pic\" width=\"$w_pic\" border=\"0\"></td>
						<td><a href=\"../catalog/?id=".$catalog[$i]["id"]."\" class=\"catalog\">".$catalog[$i]["catalog"]."</a><br>
						<font color=\"#666699\">".$catalog[$i]["description"]."</font></td>
					</tr>";
			}
		?>
</table>