## In this I have implemented liskov substitution means a subclass that adds to a base class’s behaviour,but not replace it.

class UserStatistic
  def initialize(user)
    @user = user
  end

  def products
    @user.products
  end
end
  
class AdminStatistic < UserStatistic
  def products
    user_products = super
    user_products.select { |product| product.status.eql? "Available" }
  end

  def formatted_products
    products.map { |product| "Name: #{product.product_name}, price: #{product.price}" }.join(" || ")
  end
end

# user=UserStatistic.new(User.second)
# admin = AdminStatistic.new(User.second)
# user.products
# admin.products
# admin.formatted_products
