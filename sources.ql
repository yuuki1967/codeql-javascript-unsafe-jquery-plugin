import javascript

predicate isSource(DataFlow::Node source){
    exists(DataFlow::FunctionNode fn | fn = jquery().getAPropertyRead("fn").getAPropertySource() and source = fn.getLastParameter())
}

from DataFlow::Node node
where isSource(node)
select node