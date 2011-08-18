/**
 * 
 */
package perfin.finance.controller;

import java.sql.Date;
import java.sql.SQLException;
import java.util.Map;

import perfin.finance.common.Category;
import perfin.finance.expense.ExpenseDTO;
import perfin.finance.finmgr.FinanceManager;

/**
 * @author skbiswas
 * 
 */
public class FinanceController {

	private FinanceManager finMgr = null;

	private FinanceController() {
	}

	private static class InnerFinanceController {
		private static final FinanceController finCtr = new FinanceController();

	}

	public static FinanceController getInstance() {
		return FinanceController.InnerFinanceController.finCtr;
	}
	
	public void addExpense(Map<String,String> requestMap) {
		ExpenseDTO expenseDTO = new ExpenseDTO();
		
		expenseDTO.setDesc(requestMap.get("desc"));
		expenseDTO.setAmount(Double.valueOf(requestMap.get("amount")).floatValue());
		expenseDTO.setTransDate(Date.valueOf(requestMap.get("date")));
		expenseDTO.setCategory(requestMap.get("category"));
		
		finMgr = FinanceManager.getInstance();
		try {
			finMgr.addExpense(expenseDTO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updateExpense(ExpenseDTO expenseData,int expenseId) {
		finMgr = FinanceManager.getInstance();
		finMgr.updateExpense(expenseData, expenseId);
	}
	public void deleteExpense(int expenseId) {
		finMgr = FinanceManager.getInstance();
		finMgr.deleteExpense(expenseId);
	}
}
