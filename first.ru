require 'rack'
# require 'shut_up'
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
  [404, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>']]
end
 
run my_server