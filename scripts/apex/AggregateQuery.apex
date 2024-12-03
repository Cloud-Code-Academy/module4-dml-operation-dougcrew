AggregateResult[] groupedResults = [SELECT AccountId, SUM(Amount)amtSum, AVG(Amount)amtAvg FROM Opportunity GROUP BY AccountId];
System.debug('List group results --- ' +groupedResults);
System.debug('Sum --- ' +groupedResults[0].get('amtSum'));
Decimal sumOppAmount = (Decimal)groupedResults[0].get('amtSum');
System.debug('Sum Var --- ' + sumOppAmount);


for (AggregateResult ar : groupedResults){
    System.debug('Ar results --- ' + ar);
    Double amountSum = (Double)ar.get('amtSum');
    Integer amountAvg = (Integer)ar.get('amtAvg');
    System.debug('Sum --- ' + amountSum + 45000);
    System.debug('AVG --- ' + amountAvg);      
}   