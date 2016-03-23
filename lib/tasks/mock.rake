namespace :mock do
  desc "Mock placement of an order on behalf of a random customer"
  task place_order: :environment do
    puts "Mocking an Order placement"
    customer = Customer.all.sample
    products_count = rand(5) + 1
    products = Product.all.sample(products_count)
    order = customer.orders.create
    products.each do |product|
      order_item = order.items.create(product_id: product.id, quantity: (1+rand(3)), price_per_item: product.price)
    end
    puts "Placed an order for #{products.collect(&:name).join(', ')} on behalf of #{customer.name}"
  end

end
