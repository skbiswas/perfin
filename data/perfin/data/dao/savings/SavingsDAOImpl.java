/**
 * 
 */
package perfin.data.dao.savings;

import java.sql.SQLException;

import perfin.data.dao.savings.SavingsDAO;
import perfin.data.dao.savings.SavingsDAOImpl;
import perfin.finance.savings.SavingsDTO;

/**
 * @author skbiswas
 *
 */
public class SavingsDAOImpl implements SavingsDAO {
	
	/**************** Singleton Implementation *****************/
	private static SavingsDAOImpl savingDaoImpl;

	/**
	 * Private constructor
	 */
	private SavingsDAOImpl() {
	}

	public static SavingsDAO getInstance() {
		return SingletonHolder.getInstance();
	}

	private static class SingletonHolder {

		private static final SavingsDAOImpl getInstance() {
			if (savingDaoImpl == null) {
				savingDaoImpl = new SavingsDAOImpl();
			}
			return savingDaoImpl;
		}
	}

	/***********************************************************/

	@Override
	public boolean addSavings(SavingsDTO SavingsDTO) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateSavings(SavingsDTO SavingsDTO, int SavingsId)
			throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteSavings(int SavingsId) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

}
