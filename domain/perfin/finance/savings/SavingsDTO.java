/**
 * 
 */
package perfin.finance.savings;

import java.util.Date;

/**
 * @author skbiswas
 *
 */
public class SavingsDTO {
	private int id=0;
	private String desc = "";
	private Date savingDate = null;
	private float amount = 0.0f;
	private String category = null;
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the desc
	 */
	public String getDesc() {
		return desc;
	}
	/**
	 * @param desc the desc to set
	 */
	public void setDesc(String desc) {
		this.desc = desc;
	}
	/**
	 * @return the savingDate
	 */
	public Date getSavingDate() {
		return savingDate;
	}
	/**
	 * @param savingDate the savingDate to set
	 */
	public void setSavingDate(Date savingDate) {
		this.savingDate = savingDate;
	}
	/**
	 * @return the amount
	 */
	public float getAmount() {
		return amount;
	}
	/**
	 * @param amount the amount to set
	 */
	public void setAmount(float amount) {
		this.amount = amount;
	}
	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}
}
