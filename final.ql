/**
 * @name Cross-site scripting vulnerable plugin
 * @kind path-problem
 * @id js/xss-unsafe-plugin
 */
import javascript
import DataFlow::PathGraph

class Config extends TaintTracking::Configuration {
  Config() { this = "Config" }
  override predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode fn |
        fn = jquery().getAPropertyRead("fn").getAPropertySource() and
        source = fn.getLastParameter()
    )
  }
  override predicate isSink(DataFlow::Node sink) {
    sink = jquery().getACall().getArgument(0)
  }
}

from Config config, DataFlow::PathNode source, DataFlow::PathNode sink
where config.hasFlowPath(source, sink)
select sink, source, sink, "Potential XSS vulnerability in plugin."
