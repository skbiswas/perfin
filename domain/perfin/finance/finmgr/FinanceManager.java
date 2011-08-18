/**
 * 
 */
package perfin.finance.finmgr;

import java.sql.SQLException;

import perfin.data.dao.DAOFactory;
import perfin.data.dao.expense.ExpenseDAO;
import perfin.finance.expense.ExpenseDTO;

/**
 * @author skbiswas
 * 
 */
public class FinanceManager {

	private FinanceManager() {
	}

	private static class InnerFinanceManager {
		private static final FinanceManager FMGR_INSTANCE = new FinanceManager();
	}

	public static FinanceManager getInstance() {
		return InnerFinanceManager.FMGR_INSTANCE;
	}

	/**
	 * Method to add the details of expense transaction
	 * 
	 * @param expenseData
	 * @throws ClassNotFoundException 
	 * @throws SQLException 
	 */
	public void addExpense(ExpenseDTO expenseDTO) throws SQLException, ClassNotFoundException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		ExpenseDAO expenseMgr = factory.getExpenseDAO();
		expenseMgr.addExpense(expenseDTO);
	}

	public void updateExpense(ExpenseDTO expenseDto, int expenseId) {
		this.updateTotalExpense(expenseDto.getAmount());
	}

	public void deleteExpense(int expenseId) {
		// TODO Auto-generated method stub

	}

	private void updateTotalExpense(float amount) {

	}

}
