/**
 * 
 */
package perfin.finance.expense;

import java.util.Date;

import perfin.finance.common.Category;

/**
 * Class to capture all the attributes of an expense transaction
 * 
 * @author skbiswas
 * 
 */
public class ExpenseDTO {

	private int id=0;
	private String desc = "";
	private Date transDate = null;
	private float amount = 0.0f;
	private String category = null;
	private String recipient = null;
	
	/**
	 * @return the id
	 */
	public final int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public final void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the desc
	 */
	public final String getDesc() {
		return desc;
	}
	/**
	 * @param desc the desc to set
	 */
	public final void setDesc(String desc) {
		this.desc = desc;
	}
	/**
	 * @return the transDate
	 */
	public final Date getTransDate() {
		return transDate;
	}
	/**
	 * @param transDate the transDate to set
	 */
	public final void setTransDate(Date transDate) {
		this.transDate = transDate;
	}
	/**
	 * @return the amount
	 */
	public final float getAmount() {
		return amount;
	}
	/**
	 * @param amount the amount to set
	 */
	public final void setAmount(float amount) {
		this.amount = amount;
	}
	/**
	 * @return the category
	 */
	public final String getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public final void setCategory(String category) {
		this.category = category;
	}
	/**
	 * @return the recipient
	 */
	public String getRecipient() {
		return recipient;
	}
	/**
	 * @param recipient the recipient to set
	 */
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
}
