# Implementation of the Dependency Inversion principle in Ruby using an abstract base class IPayment.
# It works with and making it easier to change or add new payment-related classes in the future without affecting the GetPayments class.

class IPayment
  def get
    raise NotImplementedError, "Subclasses must implement the get method"
  end
end

class ProductPayment < IPayment
  def initialize(product)
    @product = product
  end

  def get
    @product.payment
  end
end

class UserPayments < IPayment
  def initialize(user)
    @user = user
  end

  def get
    @user.payments
  end
end

class GetPayments
  def initialize(payment)
    @payment = payment
  end

  def get_payments
    @payment.get
  end
end

gp = GetPayments.new(UserPayments.new(User.first))
gp.get_payments # returns user payments
gp = GetPayments.new(ProductPayment.new(Product.first))
gp.get_payments # returns payment done on that product
