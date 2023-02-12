public class getUltimateParent{
    public static Id getUltimateParentId(Id accountId) {
        Map<Id, Id> parentMap = new Map<Id, Id>();
        for (Account account : [SELECT Id, ParentId FROM Account]) {
            parentMap.put(account.Id, account.ParentId);
        }
        system.debug('');
        
        Id currentId = accountId;
        while (parentMap.get(currentId) != null) {
            if(currentId==parentMap.get(currentId)){
                break;
            }
            currentId = parentMap.get(currentId);
            
        }
        
        return currentId;
    }
    }
