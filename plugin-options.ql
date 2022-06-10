import javascript
import semmle.javascript.dataflow.DataFlow

from DataFlow::FunctionNode fnode, DataFlow::ParameterNode paramnode
where  fnode = jquery().getAPropertyRead("fn").getAPropertySource() and
    paramnode = fnode.getLastParameter()
select fnode, paramnode
