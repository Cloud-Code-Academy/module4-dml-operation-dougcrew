

Map<id, Account> accountById = new map<id, Account>([SELECT Id, Name, (SELECT Id, Name, Amount FROM Opportunities) FROM Account LIMIT 5]);
System.debug(accountById);
Account singleAccount = accountById.get('001ak00000buru2AAA');
System.debug('Single Account ' + singleAccount);

for ( Account acc : accountById.values()){
    System.debug(acc.Name);
    System.debug('Child Opportunities ' + acc.Opportunities);
    for(Opportunity opp : acc.Opportunities) {
        System.debug(opp.Name + '; ' + opp.Amount);
    }
    System.debug('-------------');
}