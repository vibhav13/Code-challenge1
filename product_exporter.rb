require 'product'
require 'json'

class ProductExporter
  attr_reader :products

  def initialize(products)
    @products = products
  end

  def to_hash
    json1 = {}
    my_hash = products
    for i in my_hash do
      if i.name == "Forklift"
        json = { :forklift =>
         {:cost => i.price, :current_location => i.location}
       }
     elsif i.name == "Skip Loader"
         json = { :skip_loader =>
         {:cost => i.price, :current_location => i.location}
       }
     elsif i.name == "Truck"
          json = { :truck =>
         {:cost => i.price, :current_location => i.location}
       }
      end
      json1.merge!(json)
    end
    return json1
  end
end
