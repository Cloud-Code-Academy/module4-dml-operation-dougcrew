List<String> allowedStages = new List<String>();
allowedStages.add('Closed Won');
allowedStages.add('Prospecting');
allowedStages.add('Bananas');
Double amountFilter = 100000;
Integer numOppLimit = 2;
List<Opportunity> opps = [SELECT Id, Name, StageName, Amount FROM Opportunity WHERE StageName IN :allowedStages AND Amount > :amountFilter OFFSET :numOppLimit];
System.debug(JSON.serializePretty(opps));
System.debug('Number of opps; ' + opps.size());