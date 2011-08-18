/**
 * 
 */
package perfin.data.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Map;

/**
 * Class to interact with JDBC layer
 * 
 * @author skbiswas
 * 
 */
public class DBManager {

	private static Connection con = null;	

	private static Connection getConnection(Map<String, String> dbDetailsMap)
			throws SQLException, ClassNotFoundException {
		if (null == con) {
			Class.forName(dbDetailsMap.get("driver"));
			con = DriverManager.getConnection(dbDetailsMap.get("url"),
					dbDetailsMap.get("user"), dbDetailsMap.get("password"));
		}
		return con;
	}
	
	/**
	 * This method shold be invoked when the query is NOT supposed to return
	 * a set of rows.
	 * i.e. DML statements (INSERT, UPDATE, DELETE) or DDL statements
	 * 
	 * @param query
	 * @param dbDetailsMap
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public static int executeUpdate(Query query,Map<String, String> dbDetailsMap) throws SQLException, ClassNotFoundException{
		Connection con  = DBManager.getConnection(dbDetailsMap);
		PreparedStatement pStmt = con.prepareStatement(query.getQueryString());
		Object[] params = query.getParams();
		initializePStmt(pStmt,params);		
		
		return pStmt.executeUpdate();
	}
	
	/**
	 * Must be invoked when the query is supposed to return a resultset.
	 * i.e. a SELECT SQL query returning a set of rows
	 * 
	 * @param query
	 * @param dbDetailsMap
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public static ResultSet executeQuery(Query query,Map<String, String> dbDetailsMap) throws SQLException, ClassNotFoundException{
		Connection con  = DBManager.getConnection(dbDetailsMap);
		PreparedStatement pStmt = con.prepareStatement(query.getQueryString());
		Object[] params = query.getParams();
		initializePStmt(pStmt,params);		
		
		return pStmt.executeQuery();
	}	
	
	private static void initializePStmt(PreparedStatement pStmt,Object[] params) throws SQLException{
		for(int i=0;i<params.length;i++){			
			if(params[i].getClass().getSimpleName().equals("Boolean")){
				pStmt.setBoolean(i, ((Boolean)params[i]).booleanValue());
			} else if(params[i].getClass().getSimpleName().equals("Byte")){
				pStmt.setByte(i, ((Byte)params[i]).byteValue());
			} else if(params[i].getClass().getSimpleName().equals("Integer")){
				pStmt.setInt(i, ((Integer)params[i]).intValue());
			} else if(params[i].getClass().getSimpleName().equals("Long")){
				pStmt.setLong(i, ((Long)params[i]).longValue());
			} else if(params[i].getClass().getSimpleName().equals("Float")){
				pStmt.setFloat(i, ((Float)params[i]).floatValue());
			} else if(params[i].getClass().getSimpleName().equals("Double")){
				pStmt.setDouble(i, ((Double)params[i]).doubleValue());
			} else if(params[i].getClass().getSimpleName().equals("String")){
				pStmt.setString(i, params[i].toString());
			} else if(params[i].getClass().getSimpleName().equals("Date")){
				pStmt.setDate(i, (java.sql.Date)params[i]);
			} else if(params[i].getClass().getSimpleName().equals("Object")){
				pStmt.setObject(i, params[i]);
			} else {
				pStmt.setNull(i, java.sql.Types.NULL);
			}
		}
	}
	
	/*private static Map<String, String> getDBDetails(){
		if(detailsMap.isEmpty()){
			detailsMap.put("url","jdbc:mysql://localhost/perfin");
			detailsMap.put("user","root");
			detailsMap.put("password","root1234");
			detailsMap.put("driver","com.mysql.jdbc.Driver");
		} 
		return detailsMap;
	}*/
}
