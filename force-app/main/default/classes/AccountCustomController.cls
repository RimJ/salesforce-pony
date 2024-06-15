public class AccountCustomController {

    public PageReference savetheRecord() {
    update account;
        return null;
    }


    private final Account account;
    
    public AccountCustomController(){
        account = [Select id, Name, Site from Account where id=:ApexPages.currentPage().getParameters().get('id')];
    }
    
    public Account getAccount() {
        return account;
    }
    
}