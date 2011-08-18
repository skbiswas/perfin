package perfin.data.dao.investment;

import java.sql.SQLException;

import perfin.finance.investment.InvestmentDTO;

public class InvestmentDAOImpl implements InvestmentDAO {

	/**************** Singleton Implementation *****************/
	private static InvestmentDAOImpl invDaoImpl;

	/**
	 * Private constructor
	 */
	private InvestmentDAOImpl() {
	}

	public static InvestmentDAO getInstance() {
		return SingletonHolder.getInstance();
	}

	private static class SingletonHolder {

		private static final InvestmentDAOImpl getInstance() {
			if (invDaoImpl == null) {
				invDaoImpl = new InvestmentDAOImpl();
			}
			return invDaoImpl;
		}
	}

	/***********************************************************/

	@Override
	public boolean addInvestment(InvestmentDTO investmentDTO)
			throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateInvestment(InvestmentDTO investmentDTO,
			int InvestmentId) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteInvestment(int InvestmentId) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

}
