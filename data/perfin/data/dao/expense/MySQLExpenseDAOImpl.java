/**
 * 
 */
package perfin.data.dao.expense;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import perfin.data.util.DBManager;
import perfin.data.util.Query;
import perfin.finance.expense.ExpenseDTO;

/**
 * @author skbiswas
 * 
 */
public class MySQLExpenseDAOImpl implements ExpenseDAO {

	private Map<String, String> dbDetails;

	private static MySQLExpenseDAOImpl expDaoImpl;
	private static final String ADD_EXPENSE_QRY = "INSERT INTO `perfin`.`expense` (`desc`, `transaction_dt`, `amount`, `category`, `recipient`) VALUES (?, ?, ?, ?, ?)";
	private static final String UPDATE_EXPENSE_QRY = "UPDATE `perfin`.`expense` SET `desc`=?, `transaction_dt`=?, `amount`=?, `category`=?, `recipient`=? WHERE `id`=? () VALUES (?, ?, ?, ?, ?)";

	/***************** Singleton Implementation **************/

	private MySQLExpenseDAOImpl(final Map<String, String> dbDetails) {
		this.dbDetails = dbDetails;
	}

	private MySQLExpenseDAOImpl() {
		throw new RuntimeException("Database details are not provided!");
	}

	public static ExpenseDAO getInstance(final Map<String, String> dbDetails) {
		return SingletonHolder.getInstance(dbDetails);
	}

	private static class SingletonHolder {

		private static final MySQLExpenseDAOImpl getInstance(
				final Map<String, String> dbDetails) {
			if (expDaoImpl == null) {
				expDaoImpl = new MySQLExpenseDAOImpl(dbDetails);
			}
			return expDaoImpl;
		}
	}

	/**
	 * @throws ClassNotFoundException
	 *******************************************************/

	@Override
	public int addExpense(ExpenseDTO expenseDTO) throws SQLException,
			ClassNotFoundException {
		// Form a query object
		Object[] params = { expenseDTO.getDesc(), expenseDTO.getTransDate(),
						expenseDTO.getAmount(), expenseDTO.getCategory(),
						expenseDTO.getRecipient() };
		Query query = new Query();
		query.setQueryString(ADD_EXPENSE_QRY);
		query.setParams(params);
		
		return DBManager.executeUpdate(query, this.dbDetails);
	}

	@Override
	public boolean updateExpense(ExpenseDTO expenseDTO, int expenseId)
			throws SQLException {
		
		return false;
	}

	@Override
	public boolean deleteExpense(int expenseId) throws SQLException {
		return false;
	}

	@Override
	public List<ExpenseDTO> viewExpenses() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * private boolean updateTotalExpense(float amount) { Connection con = null;
	 * 
	 * }
	 */
}
