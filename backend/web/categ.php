<?
  ///////////////////////////////////////////////////
  // Блок "Каталог"
  // 2005 (C) Выскорко М.С. (aspid02@ngs.ru)
  ///////////////////////////////////////////////////
$query = "SELECT * FROM categ WHERE id='$id'";
$result=mysql_query( $query,  $aDBLink);
while ($category[]=mysql_fetch_array($result, MYSQL_ASSOC)){}

if (@!$_GET['categ_id'])
	{
	$query = "SELECT categ_id FROM categ WHERE id='$id' LIMIT 1";
	$result=mysql_query( $query,  $aDBLink);
	$aRow = mysql_fetch_array($result, MYSQL_ASSOC);
	$categ_id=$aRow["categ_id"];
	}
	
$query = "SELECT * FROM subcat WHERE categ_id='$categ_id'";
$result=mysql_query( $query,  $aDBLink);
while ($subcategory[]=mysql_fetch_array($result, MYSQL_ASSOC)){}

if (@!$_GET['sub_id'])
	{
	$query = "SELECT sub_id FROM subcat WHERE categ_id='$categ_id' LIMIT 1";
	$result=mysql_query( $query,  $aDBLink);
	$aRow = mysql_fetch_array($result, MYSQL_ASSOC);
	$sub_id=$aRow["sub_id"];
	}
	
//постраничная навигация
$page = @$_GET['page'];
$result = mysql_query("SELECT * FROM name_cat WHERE sub_id='$sub_id'"); 
$posts = mysql_num_rows($result); 
$total = intval(($posts - 1) / $num) + 1; 
$page = intval($page); 
if(empty($page) or $page < 0) $page = 1; 
  if($page > $total) $page = $total; 
$start = $page * $num - $num; 
//******************************************
$query = "SELECT * FROM name_cat WHERE sub_id='$sub_id' ORDER BY name_id ASC LIMIT $start, $num";
$result=mysql_query( $query,  $aDBLink);
while ($name_cat[]=mysql_fetch_array($result, MYSQL_ASSOC)){}

$query = "SELECT catalog FROM cat WHERE id='$id' LIMIT 1";
$result=mysql_query( $query,  $aDBLink);
$aRow = mysql_fetch_array($result, MYSQL_ASSOC);
$catalog=$aRow["catalog"];
?>
<script language="JavaScript">
function lock(obj)
	{
	location.href="?id=<?print $id;?>&categ_id="+obj.options[obj.selectedIndex].value
	}
function lock1(obj)
	{
	location.href="?id=<?print $id;?>&categ_id=<?print $categ_id?>&sub_id="+obj.options[obj.selectedIndex].value
	}
function _over(sid)
{
document.getElementById(sid).style.color="ffffff"
document.getElementById(sid).style.background="0A246A"
}
function _out(sid)
{
document.getElementById(sid).style.color="000000"
document.getElementById(sid).style.background="FFFFFF"
}
</script>
<table width="600">
	<tr>
		<td colspan="2"><a href="./" class="catalog"><< вернуться</a></td>
	</tr>
	<tr>
		<td align="center" colspan="2"><h2><?print $catalog;?></h2></td>
	</tr>
	<tr>
		<td align="center"><b>категория</b></td>
		<td>
			<select name="category" style="width:400px" onChange="lock(this)">
			<?
			for($i=0;$i<count($category)-1;$i++)
				{
				print "<option";
				if (@$categ_id==$category[$i]["categ_id"]) print " selected";
				print " value=\"".$category[$i]["categ_id"]."\">".$category[$i]["category"]."</option>";
				}
			?>
			</select>
		</td>
	</tr>
	<tr>
		<td align="center"><b>подкатегория</b></td>
		<td>
			<select name="subcategory" style="width:400px" onChange="lock1(this)">
			<?
			for($i=0;$i<count($subcategory)-1;$i++)
				{
				print "<option";
				if (@$sub_id==$subcategory[$i]["sub_id"]) print " selected";
				print " value=\"".$subcategory[$i]["sub_id"]."\">".$subcategory[$i]["subcategory"]."</option>";
				}
			?>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<table width="600" border="1" bordercolor="#0A246A" cellspacing="1" cellpadding="2" bgcolor="0A246A">
				<tr align="center" bgcolor="#cccccc" bordercolor="#cccccc">
					<td>наименование</td>
					<td>цена</td>
				</tr>
				
					<?
					for($i=0;$i<count($name_cat)-1;$i++)
						{
						print "<tr bgcolor=\"#ffffff\" bordercolor=\"#ffffff\" id=\"".$name_cat[$i]["name_id"]."\" onmouseover=\"_over('".$name_cat[$i]["name_id"]."')\"  onmouseout=\"_out('".$name_cat[$i]["name_id"]."')\"><td>".$name_cat[$i]["name"]."</td>
								<td>".$name_cat[$i]["price"]."</td></tr>";
						}
					?>
				
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<?
			if (@!$page) $page=1;
			if ($posts>$num)
				{
				for ($i=1;$i<=ceil($posts/$num);$i++)
					{
					if ($i!=$page) print "<a href=\"./?id=$id&categ_id=$categ_id&sub_id=$sub_id&page=$i\" class=\"catalog\">лист-$i</a> ";
						else print "лист-$i ";
					}
				}
			?> 
		</td>
	</tr>
</table>