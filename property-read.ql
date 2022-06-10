import javascript
import semmle.javascript.dataflow.DataFlow

from DataFlow::SourceNode source
where  source = jquery().getAPropertyRead("fn")
select source