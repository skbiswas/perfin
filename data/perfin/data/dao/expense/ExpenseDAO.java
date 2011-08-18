/**
 * 
 */
package perfin.data.dao.expense;

import java.sql.SQLException;
import java.util.List;

import perfin.finance.expense.ExpenseDTO;

/**
 * @author skbiswas
 *
 */
public interface ExpenseDAO {
		
	public int addExpense(ExpenseDTO expenseDTO) throws SQLException, ClassNotFoundException;
	public boolean updateExpense(ExpenseDTO expenseDTO, int expenseId)throws SQLException;
	public boolean deleteExpense(int expenseId)throws SQLException;
	public List<ExpenseDTO> viewExpenses()throws SQLException;
	

}
