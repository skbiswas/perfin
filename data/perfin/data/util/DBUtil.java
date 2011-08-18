/**
 * 
 */
package perfin.data.util;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Interface to perform database related
 * 
 * @author skbiswas
 * 
 */
public interface DBUtil {

	// SQL Statements
	public boolean insert(String query) throws SQLException;

	public boolean update(String query) throws SQLException;

	public boolean delete(String query) throws SQLException;

	public ResultSet read(String query) throws SQLException;

	// Prepared Statements
	public boolean preparedInsert(String query, Object[] params)
			throws SQLException;

	public boolean preparedUpdate(String query, Object[] params)
			throws SQLException;

	public boolean preparedDelete(String query, Object[] params)
			throws SQLException;

	public ResultSet preparedRead(String query, Object[] params)
			throws SQLException;

	// Callable Statements
	/*
	 * public boolean callableInsert(String query) throws SQLException; public
	 * boolean CallableUpdate(String query) throws SQLException; public boolean
	 * CallableDelete(String query) throws SQLException; public ResultSet
	 * CallableRead(String query) throws SQLException;
	 */

}
