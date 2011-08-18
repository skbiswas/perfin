/**
 * 
 */
package perfin.data.util;

/**
 * This class encapsulates all the details related to the query.
 * 
 * @author skbiswas
 */
public class Query {
	
	private String queryString;
	private Object[] params;
	
	/**
	 * @return the queryString
	 */
	public final String getQueryString() {
		return queryString;
	}
	/**
	 * @param queryString the queryString to set
	 */
	public final void setQueryString(String queryString) {
		this.queryString = queryString;
	}
	/**
	 * @return the params
	 */
	public final Object[] getParams() {
		return params;
	}
	/**
	 * @param params the params to set
	 */
	public final void setParams(Object[] params) {
		this.params = params;
	}
}
