String status = 'Close';
List<String> caseFields = new List<String>{'Status', 'CreatedDate', 'CaseNumber'};
Integer caseLimit = 3;
//SELECT Id, Status FROM Case - What we need
//SELECT Id, ['Status'] - What we have
String query = 'SELECT Id, '+String.join(caseFields, ',')+' FROM Case WHERE  Status = :status LIMIT :caseLimit';
System.debug(String.escapeSingleQuotes(query));
List<Case> cases = Database.query(String.escapeSingleQuotes(query));
System.debug(JSON.serializePretty(cases));