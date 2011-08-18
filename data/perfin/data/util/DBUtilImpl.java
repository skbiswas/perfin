/**
 * 
 */
package perfin.data.util;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author skbiswas
 * 
 */
public class DBUtilImpl implements DBUtil {

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#insert(java.lang.String)
	 */
	@Override
	public boolean insert(String query) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#update(java.lang.String)
	 */
	@Override
	public boolean update(String query) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#delete(java.lang.String)
	 */
	@Override
	public boolean delete(String query) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#read(java.lang.String)
	 */
	@Override
	public ResultSet read(String query) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#preparedInsert(java.lang.String,
	 * java.lang.Object[])
	 */
	@Override
	public boolean preparedInsert(String query, Object[] params)
			throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#preparedUpdate(java.lang.String,
	 * java.lang.Object[])
	 */
	@Override
	public boolean preparedUpdate(String query, Object[] params)
			throws SQLException {
		
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#preparedDelete(java.lang.String,
	 * java.lang.Object[])
	 */
	@Override
	public boolean preparedDelete(String query, Object[] params)
			throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see perfin.data.util.DBUtil#preparedRead(java.lang.String,
	 * java.lang.Object[])
	 */
	@Override
	public ResultSet preparedRead(String query, Object[] params)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
