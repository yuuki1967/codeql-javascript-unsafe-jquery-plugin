import javascript

from CallExpr dollarCallWithArgument
where dollarCallWithArgument.getCalleeName() = "$" and exists(dollarCallWithArgument.getAnArgument())
select dollarCallWithArgument