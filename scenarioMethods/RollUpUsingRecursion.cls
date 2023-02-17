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
            account.Answer__c = calculateRollupSummary(account.Custom_Objects__r);
        }
        
        // Update the Accounts
        update accounts;
    }
    
    // Recursive method to calculate the roll-up summary value
    private static Integer calculateRollupSummary(List<Custom_Object__c> customObjects) {
        Integer totalValue = 0;
        for (Custom_Object__c customObject : customObjects) {
            totalValue += customObject.Values__c;
            // Recursively call the method for the child custom object records
            totalValue += calculateRollupSummary(customObject.Child_Custom_Objects__r);
        }
        return totalValue;
    }
}

**/