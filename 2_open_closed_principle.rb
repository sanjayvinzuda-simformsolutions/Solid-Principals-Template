# Example of open closed principle
# In this example, the TaxPayment class is open for extension by allowing subclasses to implement their own calculate_tax method. 
# This means that if a new type of tax needs to be added, a new subclass can be created without changing the existing TaxPayment class.

class TaxPayment
    def initialize(amount)
      @amount = amount
    end
  
    def calculate_tax
      raise NotImplementedError, 'Subclasses must implement this method'
    end
end
  
class SalesTaxPayment < TaxPayment
    def calculate_tax
        "Your Tax is: #{@amount * 0.1}"
    end
end
  
class VatPayment < TaxPayment
    def calculate_tax
        "Your Tax is: #{@amount * 0.2}"
    end
end

