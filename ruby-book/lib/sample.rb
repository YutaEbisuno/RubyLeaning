class Product
  def name
    "A great film"
  end
end

module NameDecorator
  def name
    "<<#{super}>>"
  end
end

class Product
  prepend NameDecorator
end

product = Product.new
puts product.name
puts Product.ancestors