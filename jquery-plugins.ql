import javascript
import semmle.javascript.frameworks.jQuery
import DataFlow::SourceNode

from DataFlow::Node node, DataFlow::SourceNode srcNode
where node = jquery().getAPropertyRead("fn") and srcNode = node.getALocalSource()
select srcNode.getAPropertySource()