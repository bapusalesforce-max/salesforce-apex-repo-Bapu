public class ApexUseCaseTwenty {
    
    // write a method to get the logged in useinfo

    public static UserInfoWrapper getLoggedInUserInfo(){

        UserInfoWrapper wrapper = new UserInfoWrapper();
		wrapper.locale = UserInfo.getLocale();
        wrapper.email = UserInfo.getUserEmail();
        wrapper.userName = UserInfo.getName();
        wrapper.timeZoneInfo = String.valueOf(userInfo.getTimeZone());
       	String userId = UserInfo.getUserId();

        User userRecord = [SELECT Id, LastLoginDate FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];

        wrapper.lastLoginDetails = userRecord.LastLoginDate;
        //System.debug('User Id: ' + UserInfo.getUserId());

        //System.debug(wrapper);

        return wrapper;
       /* System.debug(locale);
        System.debug(email);
        System.debug(timeZoneInfo);
        System.debug(lastLoginDetails);*/
     }
    
    public class UserInfoWrapper{
        
        public String locale;
        public string email;
        public String userName;
        public String timeZoneInfo;
        public DateTime lastLoginDetails;  
        public String testing;
    }
    
}