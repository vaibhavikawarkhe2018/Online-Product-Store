package test;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserBean implements Serializable 
{
	private String userName,passWord,firstName,lastName,address,mailId;
	private Long phoneNumber;
	
	public UserBean() 
	{
		
	}

	public String getUserName() 
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getPassWord()
	{
		return passWord;
	}

	public void setPassWord(String passWord)
	{
		this.passWord = passWord;
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(String firstName) 
	{
		this.firstName = firstName;
	}

	public String getLastName() 
	{
		return lastName;
	}

	public void setLastName(String lastName) 
	{
		this.lastName = lastName;
	}

	public String getAddress() 
	{
		return address;
	}

	public void setAddress(String address)
	{
		
		this.address = address;
	}

	public String getMailId()
	{
		return mailId;
	}

	public void setMailId(String mailId) 
	{
		this.mailId = mailId;
	}

	public Long getPhoneNumber()
	{
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) 
	{
		this.phoneNumber = phoneNumber;
	}
	
	
}
