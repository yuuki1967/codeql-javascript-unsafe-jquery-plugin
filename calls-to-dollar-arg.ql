import javascript

from CallExpr dollarCall 
where dollarCall.getCalleeName() = "$"
select dollarCall, dollarCall.getArgument(0)