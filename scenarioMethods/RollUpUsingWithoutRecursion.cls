/**public class RollupHelper {
    
    // Method to update the roll-up summary field on the account
    public static void updateRollupSummary(List<Custom_Object__c> customObjects) {
        // Collect the Account Ids for the custom objects
        Set<Id> accountIds = new Set<Id>();
        for (Custom_Object__c customObject : customObjects) {
            accountIds.add(customObject.Account__c);
        }
        
        // Query for the related Accounts and the custom object records associated with them
        List<Account> accounts = [SELECT Id, Answer__c, (SELECT Id, Values__c FROM Custom_Objects__r) 
                                  FROM Account WHERE Id IN :accountIds];
        
        // Loop through the Accounts and update the roll-up summary field
        for (Account account : accounts) {
            Integer totalValue = 0;
            for (Custom_Object__c customObject : account.Custom_Objects__r) {
                totalValue += customObject.Values__c;
                for (Custom_Object__c childCustomObject : customObject.Child_Custom_Objects__r) {
                    totalValue += childCustomObject.Values__c;
                }
            }
            account.Answer__c = totalValue;
        }
        
        // Update the Accounts
        update accounts;
    }
}**/
