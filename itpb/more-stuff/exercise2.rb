def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# This won't print anything to the screen because the there is
# no call method attached to the block variable inside the execute
# method definition