import javascript
import semmle.javascript.dataflow.DataFlow

from DataFlow::Node node
where node = jquery().getACall().getArgument(0)
select node
