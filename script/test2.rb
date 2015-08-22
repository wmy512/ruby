require "/home/mingyinw/rails/depot/config/environment.rb"


order = Order.find(1)
puts order.inspect
order.name = "Dave Thomas"
order.save
