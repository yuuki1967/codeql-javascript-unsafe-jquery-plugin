/**
 *  @name Cross-site scripting vunerable plugin
 *  @kind path-problem
 *  @is js/xss-unsage-plugin
 */
import javascript
import DataFlow::PathGraph

class Configuration extends TaintTracking::Configuration {
    Configuration() { this = "Config" }
    override predicate isSource(DataFlow::Node source) {
        exists(DataFlow::FunctionNode fn | fn = jquery().getAPropertySource("fn") and source = fn.getLastParameter())
    }
    override predicate isSink(DataFlow::Node sink){
        sink = jquery().getACall().getArgument(0)
    }
}

from Configuration config, DataFlow::PathNode source, DataFlow::PathNode sink
where config.hasFlowPath(source, sink)
select sink, source, sink, "Potential XSS vulnerability in plugin"
