import javascript
import semmle.javascript.frameworks.jQuery
import DataFlow::SourceNode

from DataFlow::Node node, DataFlow::FunctionNode fn
where node = jquery().getAPropertyRead("fn") and fn = node.getALocalSource().getAPropertySource().getAFunctionValue()
select fn