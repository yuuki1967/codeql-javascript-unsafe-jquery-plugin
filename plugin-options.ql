import javascript
import semmle.javascript.frameworks.jQuery
import DataFlow::SourceNode

from DataFlow::FunctionNode fn, DataFlow::ParameterNode optionsParam
where fn = jquery().getAPropertyRead("fn").getAPropertySource() and optionsParam = fn.getLastParameter()
select fn, optionsParam