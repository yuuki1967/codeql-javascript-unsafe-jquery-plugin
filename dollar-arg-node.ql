import javascript
import semmle.javascript.frameworks.jQuery
import DataFlow::SourceNode

select jquery().getACall().getArgument(0)