/**
 * 
 */
package perfin.data.dao;

import perfin.data.dao.expense.ExpenseDAO;
import perfin.data.dao.investment.InvestmentDAO;
import perfin.data.dao.savings.SavingsDAO;

/**
 * @author skbiswas
 * 
 */
public abstract class DAOFactory {

	// Types of DAOFactory supported
	public static final int MYSQL = 1;
	public static final int ORACLE = 2;

	public static DAOFactory getDAOFactory(int type) {

		switch (type) {
		case MYSQL:
			return new MySQLDAOFactory();
		case ORACLE:
			return new OracleDAOFactory();
		default:
			return null;

		}
	}
	
	//Every concrete DAOFactory must implement the following methods
	public abstract ExpenseDAO getExpenseDAO();
	public abstract InvestmentDAO getInvestmentDAO();
	public abstract SavingsDAO getSavingsDAO();

}
