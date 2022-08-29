import javascript
import semmle.javascript.frameworks.jQuery
import DataFlow::SourceNode

from DataFlow::SourceNode srcNode
where srcNode = jquery() and  srcNode.getAPropertyRead().getPropertyName() = "fn"
select srcNode.getACall()

