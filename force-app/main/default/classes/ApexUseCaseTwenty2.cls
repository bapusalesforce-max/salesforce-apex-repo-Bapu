public with sharing class ApexUseCaseTwenty2 {
   
    //write a method to include the user timezone; locale; ;lastlogindate; email; name
    public static void getUserLoggedInInfo(){

        
       // return 
        UserInfoWrapper wrapper = new UserInfoWrapper(UserInfo.getName(),UserInfo.getUserEmail() );
        //DateTime lastLogin;
        wrapper.firstName = UserInfo.getFirstName();
        wrapper.timeZone = String.valueOf(UserInfo.getTimeZone());
       // wrapper.email = UserInfo.getUserEmail();
        wrapper.locale = UserInfo.getLocale();
       // wrapper.name = UserInfo.getName();
        wrapper.userId = UserInfo.getUserId();
        
        // Query the User record here

        List<User> userRecordInfoList = [SELECT Id,LastLoginDate FROM User WHERE Id=:UserInfo.getUserId() LIMIT 1];
        
        if(userRecordInfoList.size() > 0){
           
           wrapper.lastLogin = userRecordInfoList[0].LastLoginDate;
        }
        
		System.debug(wrapper);
		//System.debug(name);
        //System.debug(timeZone);
       // System.debug(lastLogin);

    }

    public class UserInfoWrapper{
        
        public DateTime lastLogin;
        public String firstName; 
        public String timeZone; 
        public String email;
        public String locale;
        public String name;
        public String userId;
        
        	public UserInfoWrapper(String name, String email){
        
        	this.name = name;
        	this.email = email;
    	
        	}
        
    }
    
}