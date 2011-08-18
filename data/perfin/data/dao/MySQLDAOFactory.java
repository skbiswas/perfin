/**
 * 
 */
package perfin.data.dao;

import java.util.HashMap;
import java.util.Map;

import perfin.data.dao.expense.ExpenseDAO;
import perfin.data.dao.expense.MySQLExpenseDAOImpl;
import perfin.data.dao.investment.InvestmentDAO;
import perfin.data.dao.investment.InvestmentDAOImpl;
import perfin.data.dao.savings.SavingsDAO;
import perfin.data.dao.savings.SavingsDAOImpl;

/**
 * @author skbiswas
 *
 */
public class MySQLDAOFactory extends DAOFactory {
	
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost/perfin";
	private static final String USER = "root";
	private static final String PWD = "root1234";
	
	
	@Override
	public ExpenseDAO getExpenseDAO() {
		Map<String,String> dbDetails = new HashMap<String,String> ();
		dbDetails.put("driver", DRIVER);
		dbDetails.put("url", DB_URL);
		dbDetails.put("user", USER);
		dbDetails.put("password", PWD);
		return MySQLExpenseDAOImpl.getInstance(dbDetails);
	}
	@Override
	public InvestmentDAO getInvestmentDAO() {
		return InvestmentDAOImpl.getInstance();
	}
	@Override
	public SavingsDAO getSavingsDAO() {
		return SavingsDAOImpl.getInstance();
	}

}
