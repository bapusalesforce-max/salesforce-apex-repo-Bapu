public with sharing class ApexUseCaseThree {

   // write a method to send an email to the user

    public static void sendEmailAlertToCustomer(String toAddress){
        
        List<String> toAddressList = new List<String>{toAddress};
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //mail.setToAddresses(toAddressList);
        //mail.setSubject('Its urgent please follow up , immediately');
        mail.setEmailPriority('High');
        //mail.setPlainTextBody('This is an urgent follow up. Please take immediate action.');
        mail.setTemplateId('00Xfj00000FjWhREAV');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail});
    }
}