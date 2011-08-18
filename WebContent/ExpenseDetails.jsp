<DOCTYPE html!>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Expense</title>
<script type="text/javascript">
	function addRowToTable() {
		var tbl = document.getElementById('tblInvsestment');
		var lastRow = tbl.rows.length;
		// if there's no header row in the table, then iteration = lastRow + 1
		var iteration = lastRow;
		var row = tbl.insertRow(lastRow);

		// left cell
		var cellLeft = row.insertCell(0);
		var textNode = document.createTextNode(iteration);
		cellLeft.appendChild(textNode);

		// right cell
		var cellRight = row.insertCell(1);
		var el = document.createElement('input');
		el.type = 'text';
		el.name = 'txtRow' + iteration;
		el.id = 'txtRow' + iteration;
		el.size = 40;

		el.onkeypress = keyPressTest;
		cellRight.appendChild(el);

		// select cell
		var cellRightSel = row.insertCell(2);
		var sel = document.createElement('select');
		sel.name = 'selRow' + iteration;
		sel.options[0] = new Option('text zero', 'value0');
		sel.options[1] = new Option('text one', 'value1');
		cellRightSel.appendChild(sel);
	}
	function removeRowFromTable() {
		var tbl = document.getElementById('tblInvsestment');
		var lastRow = tbl.rows.length;
		if (lastRow > 2)
			tbl.deleteRow(lastRow - 1);
	}
</script>
<style type="text/css">
	#tab_hdr {background: #196E1B; border-left:solid #81F277; border-top:solid #81F277;border-bottom:solid #81F277; font-family:arial; font-weight:bold; color:#FAFCFA; font-size: 14px}
	#tab_body {border-left:solid #81F277;border-top:solid #81F277;border-bottom:solid #81F277; font-family:arial; font-size: 12px}
</style>
</head>

<body>
<form name="expense" action="/perfin/fincontroller" method="post">
	<table align="center" border="0" width="100%" cellpadding="0" cellspacing="1" bgcolor=#81F277>
	<tr>
		<td>
			<table id="tablInvestment" align="center" border="1" width="80%" cellpadding="0" cellspacing="1" bgcolor=#81F277>
				<caption style="background: #B0B019; font-weight:bold; font-family:arial; color:#FAFCFA">Fixed Expenses</caption>
				<tr align="center" valign="middle">
						<td id="tab_hdr"><img src="calendar_icon.jpg" alt="pick a date" width="35" height="35"></td>
						<td id="tab_hdr">Description</td>
						<td id="tab_hdr">Category</td>
						<td id="tab_hdr">Amount</td>
						<td id="tab_hdr">Recipient</td>
				</tr>
				
				<tr id="tab_body" valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="House Rent" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Kitchen Expenses</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="House Maintenance" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Dish TV" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Maid" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Milk" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Gas" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="News Paper" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Electricity Bill" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="BSNL" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Airtel" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Tata Docomo" size="40"></td>
					<td>
						<select name="fx_select1">
							<optgroup label="Fixed Expenses">
							<option value="rent_maintenance">Rent & Maintenance</option>
							<option value="utility_bills">Utility Bills</option>
							<option value="Maid">Maid</option>
							<option value="Maid">Household Expenses</option>
							</optgroup>
						</select>
					</td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>

				<tr>
					<td colspan="4" align="right" style="background: #B0B019; font-weight:bold; font-family:arial; color:#FAFCFA"><b>Fixed Expenses</b></td>
					<td>12340</td>
				</tr>
			</table>			
		</td>
		<td>
			<table id="tblCategories" align="center" border="1" width="100%" cellpadding="0" cellspacing="1" bgcolor=#81F277>
				<tr align="center">
					<td>&nbsp;</td>
					<td id="tab_hdr">Category</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="Rent"></td>
					<td id="tab_body">Rent & Maintenance</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="Kitchen Expenses"></td>
					<td id="tab_body">Kitchen Expenses</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="Utility Bills"></td>
					<td id="tab_body">Utility Bills</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="Commutation"></td>
					<td id="tab_body">Commutation</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="Entertainment"></td>
					<td id="tab_body">Entertainment</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="household"></td>
					<td id="tab_body">Household Expenses</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="grocery"></td>
					<td id="tab_body">Grocery</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="vegetables"></td>
					<td id="tab_body">Vegetabls</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="fruits"></td>
					<td id="tab_body">Fruits</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="snacks"></td>
					<td id="tab_body">Snacks</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="other_food"></td>
					<td id="tab_body">Other Food Items</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="dine_out"></td>
					<td id="tab_body">Dine Out</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="medicine"></td>
					<td id="tab_body">Medicine</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="doctor"></td>
					<td id="tab_body">Doctor Consultation</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="commutation"></td>
					<td id="tab_body">Commutation</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="travelling"></td>
					<td id="tab_body">Travelling</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="fuel"></td>
					<td id="tab_body">Fuel</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="v_maintainance"></td>
					<td id="tab_body">Vehicle Maintenance</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="investments"></td>
					<td id="tab_body">Investments</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="recievables"></td>
					<td id="tab_body">Recievables</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="clothing"></td>
					<td id="tab_body">Clothing</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="gifts"></td>
					<td id="tab_body">Gifts</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="stationary"></td>
					<td id="tab_body">Stationary Items</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="cat1" value="misc"></td>
					<td id="tab_body">Miscellenious</td>
				</tr>
			</table>
		</td>
		</tr>
</form>
</body>

</html>