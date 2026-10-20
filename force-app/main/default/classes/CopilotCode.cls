public class CopilotCode {

    public static UserInfoWrapper getLoggedInUserInfo() {

        User currentUser = [
            SELECT LastLoginDate
            FROM User
            WHERE Id = :UserInfo.getUserId()
            LIMIT 1
        ];

        return new UserInfoWrapper(UserInfo.getLocale(),UserInfo.getUserEmail(),UserInfo.getName(),UserInfo.getTimeZone().getID(),currentUser.LastLoginDate);
    }

    
    
    public class UserInfoWrapper {

        public String locale { get; set; }
        public String email { get; set; }
        public String userName { get; set; }
        public String timeZoneInfo { get; set; }
        public Datetime lastLoginDetails { get; set; }

        public UserInfoWrapper(String locale, String email,String userName, String timeZoneInfo,Datetime lastLoginDetails) {
            this.locale = locale;
            this.email = email;
            this.userName = userName;
            this.timeZoneInfo = timeZoneInfo;
            this.lastLoginDetails = lastLoginDetails;
        }
    }
}