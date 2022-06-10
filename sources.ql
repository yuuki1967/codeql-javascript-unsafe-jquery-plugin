import javascript
import semmle.javascript.dataflow.DataFlow

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode fnode |
        fnode = jquery().getAPropertyRead("fn").getAPropertySource()and
        source = fnode.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node