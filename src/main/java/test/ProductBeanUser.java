package test;


import java.io.Serializable;

@SuppressWarnings("serial")
public class ProductBeanUser implements Serializable 
{
	private String code,name;
	private float price;
	private int qty;
	public ProductBeanUser() 
	{
		
	}
	public String getCode() 
	{
		return code;
	}
	public void setCode(String code) 
	{
		this.code = code;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public float getPrice() 
	{
		return price;
	}
	public void setPrice(float price)
	{
		this.price = price;
	}
	public int getQty()
	{
		return qty;
	}
	public void setQty(int qty) 
	{
		this.qty = qty;
	}
	
}