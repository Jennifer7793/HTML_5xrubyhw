class Cat
  def call(env)
    [
    '200',
    {'Content-Type' => 'text/html'},
    ['hello you are in class']
   ]
  end
end

kitty = Cat.new

run kitty

# run Proc.new { |env|
#   [
#     '200',
#     {'Content-Type' => 'text/html'},
#     ['hello rack']
#   ]
# }