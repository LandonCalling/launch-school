def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!"}

# Because the block argument in the execute method definition doesn't
# have an ampersand in front of it, it is treated as a regular
# variable.  Therefore, when execute is called the method is looking
# for a regular argument to be passed to the method and not a block.