<DOCTYPE html!>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Expense</title>
<script type="text/javascript">
	function addRowToTable() {
		var tbl = document.getElementById('tblVExpense');
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

		//el.onkeypress = keyPressTest;
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
		var tbl = document.getElementById('tblVExpense');
		var lastRow = tbl.rows.length;
		if (lastRow > 2)
			tbl.deleteRow(lastRow - 1);
	}
	/* ~~~~~~~~~~~~~~~Category Selection ~~~~~~~~~~~~~~~~~~~ */

	selectedCategory = null;
	function selectCategory(category){		
		if(selectedCategory != null){
			category.value = selectedCategory;
		} else{
			alert("No category selected! Please select a category from the right hand side table first.");
		}
	}
	function markCategory(radio){
		selectedCategory = radio.value;
	}
	/* ~~~~~~~~~~~~~~~Category Selection ~~~~~~~~~~~~~~~~~~~ */
</script>
<style type="text/css">
	#tab_hdr {background: #196E1B; border-left:solid #CAEBCA; border-top:solid #CAEBCA;border-bottom:solid #CAEBCA; font-family:arial; font-weight:bold; color:#FAFCFA; font-size: 14px}
	#tab_body {border-left:solid #CAEBCA;border-top:solid #CAEBCA;border-bottom:solid #CAEBCA; font-family:arial; font-size: 12px}
</style>
</head>

<body>
<form name="expense" action="/perfin/fincontroller" method="post">
	<table align="center" border="0" width="100%" cellpadding="0" cellspacing="1" bgcolor=#CAEBCA>
	<tr>
		<td>
			<table id="tblExpense" align="center" border="1" width="80%" cellpadding="0" cellspacing="1" bgcolor=#CAEBCA>
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
					<td><input name="f_exp_cat1" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds2" value="House Maintenance" size="40"></td>
					<td><input name="f_exp_cat2" value=""  onclick="selectCategory(this)" /></td>					
					<td><input type="text" name="f_exp_am2" size="20"></td>
					<td><input type="text" name="f_exp_re2" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds3" value="Dish TV" size="40"></td>
					<td><input name="f_exp_cat3" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am3" size="20"></td>
					<td><input type="text" name="f_exp_re3" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt1"></td>
					<td><input name="f_exp_ds1" value="Maid" size="40"></td>
					<td><input name="f_exp_cat4" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am1" size="20"></td>
					<td><input type="text" name="f_exp_re1" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt5"></td>
					<td><input name="f_exp_ds5" value="Milk" size="40"></td>
					<td><input name="f_exp_cat5" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am5" size="20"></td>
					<td><input type="text" name="f_exp_re5" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt6"></td>
					<td><input name="f_exp_ds6" value="Gas" size="40"></td>
					<td><input name="f_exp_cat6" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am6" size="20"></td>
					<td><input type="text" name="f_exp_re6" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt7"></td>
					<td><input name="f_exp_ds7" value="News Paper" size="40"></td>
					<td><input name="f_exp_cat7" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am7" size="20"></td>
					<td><input type="text" name="f_exp_re7" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt8"></td>
					<td><input name="f_exp_ds8" value="Electricity Bill" size="40"></td>
					<td><input name="f_exp_cat8" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am8" size="20"></td>
					<td><input type="text" name="f_exp_re8" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt9"></td>
					<td><input name="f_exp_ds9" value="BSNL" size="40"></td>
					<td><input name="f_exp_cat9" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am9" size="20"></td>
					<td><input type="text" name="f_exp_re9" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt10"></td>
					<td><input name="f_exp_ds10" value="Airtel" size="40"></td>
					<td><input name="f_exp_cat10" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am10" size="20"></td>
					<td><input type="text" name="f_exp_re10" size="40"></td>
				</tr>
				<tr valign="middle" align="center">
					<td><input type="date" name="f_exp_dt11"></td>
					<td><input name="f_exp_ds11" value="Tata Docomo" size="40"></td>
					<td><input name="f_exp_cat11" value=""  onclick="selectCategory(this)" /></td>
					<td><input type="text" name="f_exp_am11" size="20"></td>
					<td><input type="text" name="f_exp_re11" size="40"></td>
				</tr>

				<tr>
					<td colspan="4" align="right" style="background: #B0B019; font-weight:bold; font-family:arial; color:#FAFCFA"><b>Fixed Expenses</b></td>
					<td><%=fixedExp%></td>
				</tr>
			</table>			
		</td>
		<td rowspan="2">
			<table id="tblCategories" align="center" border="1" width="100%" cellpadding="0" cellspacing="1" bgcolor=#81F277>
				<tr align="center">
					<td>&nbsp;</td>
					<td id="tab_hdr">Category</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Rent & Maintenance" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Rent & Maintenance</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Kitchen Expenses" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Kitchen Expenses</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Utility Bills" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Utility Bills</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Commutation" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Commutation</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Entertainment" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Entertainment</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Household Expenses" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Household Expenses</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Grocery" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Grocery</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Vegetabls" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Vegetabls</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Fruits" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Fruits</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Snacks" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Snacks</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Other Food Items" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Other Food Items</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Dining" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Dining</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Medicine" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Medicine</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Doctor Consultation" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Doctor Consultation</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Commutation" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Commutation</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Travelling" onclick="javascript:markCategory(this);"></td>
					<td id="tab_body">Travelling</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Fuel" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Fuel</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Vehicle Maintenance" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Vehicle Maintenance</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Investments" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Investments</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Recievables" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Recievables</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Clothing" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Clothing</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Gifts" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Gifts</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Stationary Items" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Stationary Items</td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="x_cat" value="Miscellenious" onclick="javascript:markCategory(this);" /></td>
					<td id="tab_body">Miscellenious</td>
				</tr>
			</table>
		</td>
		</tr>
		<tr>
			<td>
				<table id="tblVExpense" align="center" border="1" width="80%" cellpadding="0" cellspacing="1" bgcolor=#CAEBCA>
					<caption style="background: #B0B019; font-weight:bold; font-family:arial; color:#FAFCFA">Variable Expenses</caption>
					<tr align="center" valign="middle">
						<td id="tab_hdr"><img src="calendar_icon.jpg" alt="pick a date" width="35" height="35"></td>
						<td id="tab_hdr">Description</td>
						<td id="tab_hdr">Category</td>
						<td id="tab_hdr">Amount</td>
						<td id="tab_hdr">Recipient</td>
					</tr>
				
					<tr id="tab_body" valign="middle" align="center">
						<td><input type="date" name="v_exp_dt1"></td>
						<td><input type="text" name="v_exp_ds1" value="" size="40"></td>
						<td><input name="v_exp_cat1" value=""  onclick="selectCategory(this)" /></td>
						<td><input type="text" name="v_exp_am1" size="20"></td>
						<td><input type="text" name="v_exp_re1" size="40"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<p>
		<input type="button" value="Add" onclick="addRowToTable()" /> 
		<input type="button" value="Remove" onclick="removeRowFromTable();" />
	</p>
</form>
</body>

</html>