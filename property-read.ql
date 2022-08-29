import javascript
import semmle.javascript.frameworks.jQuery
import DataFlow::SourceNode

from DataFlow::Node node 
where node = jquery().getAPropertyRead("fn")
select node

