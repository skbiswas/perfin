/**
 * 
 */
package perfin.data.dao.savings;

import java.sql.SQLException;

import perfin.finance.savings.SavingsDTO;

/**
 * @author skbiswas
 *
 */
public interface SavingsDAO {
	public boolean addSavings(SavingsDTO SavingsDTO) throws SQLException;
	public boolean updateSavings(SavingsDTO SavingsDTO, int SavingsId)throws SQLException;
	public boolean deleteSavings(int SavingsId)throws SQLException;
}
