public class AccountController {
    
    public static List<Account> insertAccounts(List<Account> accountToInsert){
        insert accounTtoInsert;
        return accountToInsert;
        
    }
    public static Account insertAccount(Account accountToInsert){
        insert accounTtoInsert;
        return accountToInsert;
        
    }
    
    public static List<Account> getAllAccounts(){
        List<Account> accounts = [SELECT Name, Phone from Account];
        return accounts;
    }
    
    public static void printAllAccounts(){
        List<Account> accounts = getAllAccounts();
        for(Account account:accounts){
            System.debug('Account: ' + account.Name + ' Account Phone: ' +account.Phone);
        }
        
        
    }
    public static Integer getAccountSize(){
        List<Account> accounts = [SELECT Name, Phone from Account];
        return accounts.size();
        
    }

}