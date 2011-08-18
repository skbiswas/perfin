package perfin.data.dao.investment;

import java.sql.SQLException;

import perfin.finance.investment.InvestmentDTO;

public interface InvestmentDAO {
	public boolean addInvestment(InvestmentDTO investmentDTO) throws SQLException;
	public boolean updateInvestment(InvestmentDTO investmentDTO, int InvestmentId)throws SQLException;
	public boolean deleteInvestment(int InvestmentId)throws SQLException;

}
