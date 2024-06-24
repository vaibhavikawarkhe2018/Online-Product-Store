package test;

import java.io.Serializable;

@SuppressWarnings("serial")
public class OrdersDetailsInfoBean implements Serializable 
{
	private String uName;
	private String pCode;
	private Integer quant;
	
	public OrdersDetailsInfoBean() 
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public OrdersDetailsInfoBean(String uName, String pCode, Integer quant) 
	{
		super();
		this.uName = uName;
		this.pCode = pCode;
		this.quant = quant;
	}

	public String getuName()
	{
		return uName;
	}

	public void setuName(String uName) 
	{
		this.uName = uName;
	}

	public String getpCode() 
	{
		return pCode;
	}

	public void setpCode(String pCode)
	{
		this.pCode = pCode;
	}

	public Integer getQuant() 
	{
		return quant;
	}

	public void setQuant(Integer quant) 
	{
		this.quant = quant;
	}
	
	
}
