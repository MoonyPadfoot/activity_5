# activity_5

* Create atleast 10 records using the create method

```rails=
Product.create(name: "product 1", description: "whole milk", quantity: 3, price: 20.50, available: true, released_at: DateTime.now - 5, expiry_date: DateTime.now + 25, discount: 10)
Product.create(name: "product 2", description: "almond milk", quantity: 5, price: 21.00, available: false, released_at: DateTime.now - 10, expiry_date: DateTime.now + 20, discount: 15)
Product.create(name: "product 3", description: "soy milk", quantity: 2, price: 19.75, available: true, released_at: DateTime.now - 3, expiry_date: DateTime.now + 15, discount: 5)
Product.create(name: "product 4", description: "oat milk", quantity: 10, price: 22.00, available: true, released_at: DateTime.now - 1, expiry_date: DateTime.now + 30, discount: 20)
Product.create(name: "product 5", description: "coconut milk", quantity: 4, price: 19.00, available: false, released_at: DateTime.now - 7, expiry_date: DateTime.now + 10, discount: 10)
Product.create(name: "product 6", description: "skim milk", quantity: 6, price: 20.75, available: true, released_at: DateTime.now - 2, expiry_date: DateTime.now + 18, discount: 25)
Product.create(name: "product 7", description: "goat milk", quantity: 8, price: 18.50, available: false, released_at: DateTime.now - 12, expiry_date: DateTime.now + 5, discount: 10)
Product.create(name: "product 8", description: "lactose-free milk", quantity: 7, price: 21.50, available: true, released_at: DateTime.now - 4, expiry_date: DateTime.now + 28, discount: 30)
Product.create(name: "product 9", description: "hazelnut milk", quantity: 9, price: 20.25, available: true, released_at: DateTime.now - 6, expiry_date: DateTime.now + 22, discount: 10)
Product.create(name: "product 10", description: "rice milk", quantity: 1, price: 19.95, available: false, released_at: DateTime.now - 8, expiry_date: DateTime.now + 12, discount: 15)
```

* Create atleast 10 records using the save method

```rails=
product1 = Product.new
product1.name = 'apple'
product1.description = 'red fruit'
product1.quantity = 1
product1.price = 10.25
product1.available = true
product1.released_at = DateTime.now - 8
product1.expiry_date = DateTime.now + 12
product1.discount = 15
product1.save

product2 = Product.new
product2.name = 'banana'
product2.description = 'yellow fruit'
product2.quantity = 2
product2.price = 8.50
product2.available = true
product2.released_at = DateTime.now - 5
product2.expiry_date = DateTime.now + 10
product2.discount = 10
product2.save

product3 = Product.new
product3.name = 'orange'
product3.description = 'citrus fruit'
product3.quantity = 3
product3.price = 9.00
product3.available = true
product3.released_at = DateTime.now - 6
product3.expiry_date = DateTime.now + 15
product3.discount = 20
product3.save

product4 = Product.new
product4.name = 'grape'
product4.description = 'small berry'
product4.quantity = 1
product4.price = 12.00
product4.available = false
product4.released_at = DateTime.now - 4
product4.expiry_date = DateTime.now + 8
product4.discount = 5
product4.save

product5 = Product.new
product5.name = 'pear'
product5.description = 'sweet fruit'
product5.quantity = 2
product5.price = 11.50
product5.available = true
product5.released_at = DateTime.now - 2
product5.expiry_date = DateTime.now + 14
product5.discount = 10
product5.save

product6 = Product.new
product6.name = 'kiwi'
product6.description = 'fuzzy fruit'
product6.quantity = 1
product6.price = 15.00
product6.available = false
product6.released_at = DateTime.now - 7
product6.expiry_date = DateTime.now + 5
product6.discount = 25
product6.save

product7 = Product.new
product7.name = 'mango'
product7.description = 'tropical fruit'
product7.quantity = 3
product7.price = 13.75
product7.available = true
product7.released_at = DateTime.now - 3
product7.expiry_date = DateTime.now + 20
product7.discount = 15
product7.save

product8 = Product.new
product8.name = 'peach'
product8.description = 'juicy fruit'
product8.quantity = 2
product8.price = 9.99
product8.available = true
product8.released_at = DateTime.now - 1
product8.expiry_date = DateTime.now + 18
product8.discount = 10
product8.save

product9 = Product.new
product9.name = 'plum'
product9.description = 'purple fruit'
product9.quantity = 1
product9.price = 8.75
product9.available = false
product9.released_at = DateTime.now - 9
product9.expiry_date = DateTime.now + 6
product9.discount = 30
product9.save

product10 = Product.new
product10.name = 'pineapple'
product10.description = 'tropical delight'
product10.quantity = 4
product10.price = 14.00
product10.available = true
product10.released_at = DateTime.now - 11
product10.expiry_date = DateTime.now + 22
product10.discount = 10
product10.save
```

* Fetch all products where name is "Laptop".

```ruby=
Product.find_by(name: 'Laptop') 
```

* Find products where price is greater than 100.

```ruby=
Product.where("price > ? ", 100)
```
* Retrieve products where available is true.

```ruby=
Product.find_by(available: true)
```

* Fetch products where quantity is less than 50.

```ruby=
Product.where("quantity < ? ", 50)
```

* Find products where discount is exactly 10%.

```ruby=
Product.where(discount: 10)
```

* Retrieve products where name contains the word "Pro".

```ruby=
Product.where("name LIKE ? ", '%Pro%'")
```

* Fetch products where description includes the word "portable".

```ruby=
Product.where("description LIKE ?", '%portable%'")
```

* Find products where price is between 50 and 150.

```ruby=
Product.where(:price => 50..150)
```

* Retrieve products where available is false and quantity is greater than 0.

```ruby=
Product.where(available: false).and(Product.where("quantity > '0'"))
```

* Fetch products where released_at is after January 1, 2023.

```ruby=
Product.where('released_at > ?', '2023-01-01')
```

* Find products where expiry_date is nil.

```ruby=
Product.find_by(expiry_date: nil)
```

* Retrieve products where released_at is before January 1, 2022.

```ruby=
Product.where('released_at < ?', '2022-01-01')
```

* Fetch products where quantity is between 10 and 100.

```ruby=
Product.where(quantity: [10..100])
```

* Find products where discount is greater than or equal to 5%.

```ruby=
Product.where("discount >= ?", 5)
```

* Retrieve products where price is less than or equal to 200 and available is true.

```ruby=
Product.where("price <= ? AND available = ? ", 200, true)
```

* Fetch products where expiry_date is before today’s date.

```ruby=
Product.where("expiry_date < ? ", DateTime.now)
```

* Find products where name starts with the letter "A".

```ruby=
Product.where("name LIKE ? ", 'A%')
```

* Retrieve products where price is not equal to 100.

```ruby=
Product.where.not(price: 100)
```
* Fetch products where quantity is nil.

```ruby=
Product.where(quantity: nil)
```

* Find products where discount is not nil.

```ruby=
Product.where.not(discount: nil)
```

* Update the price of a product where name is "Laptop" to 120.

```ruby=
Product.where(name: 'Laptop').update(price: 120)
```

* Set the available status to false for products where quantity is 0.

```ruby=
Product.where(quantity: 0).update(available: false)
```

* Increase the discount by 5% for products where price is greater than 100.

```ruby=
Product.where('price > ?', 100).update(discount: 5)
```

* Update the description to "Out of stock" for products where available is false.

```ruby=
Product.where(available: false).update(description: 'Out of stock')
```

* Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.

```ruby=
Product.where(discount: 11..).update(expiry_date: Date.new(2024, 12, 31))
```

* Update the quantity to 50 for products where name starts with "Pro".

```ruby=
Product.where('name LIKE ?', 'Pro%').update(quantity: 50)
```

* Set the price to 200 for all products where discount is nil.

```ruby=
Product.where(discount: nil).update(price: 200)
```

* Mark products as available if their released_at is before January 1, 2023.

```ruby=
Product.where('released_at < ?', DateTime.new(2023, 01, 01)).update(available: true)
```

* Update the price to 80 where the quantity is between 10 and 20.

```ruby=
Product.where(quantity: 10..80).update(price: 80)
```

* Remove any discount (set to nil) for products where expiry_date is before today.

```ruby=
Product.where(expiry_date: ..DateTime.now - 1).update(discount: nil)
```

* Update the name to "Premium Laptop" for products where price is more than 500.

```ruby=
Product.where(price: 501..).update(name: 'Premium Laptop')
```

* Set the quantity to nil for products where available is false.

```ruby=
Product.where(available: false).update(quantity: nil)
```

* Update released_at to the current date for products with a price less than 50.

```ruby=
Product.where(price: ..49).update(released_at: DateTime.now)
```

* Reduce the price by 20% for products where quantity is less than 5.

```ruby=
Product.where(quantity: ..4).update(discount: 20)
```

* Set the discount to 0% for products with a price greater than or equal to 300.

```ruby=
Product.where(price: 300..).update(discount: 0)
```

* Change the description to "Limited time offer" where the discount is 15%.

```ruby=
Product.where(discount: 15).update(description: 'Limited time offer')
```

* Set available to true for products where the price is between 100 and 200.

```ruby=
Product.where(price: 100..200).update(available: true)
```

* Increase the quantity by 10 for products where released_at is after January 1, 2023.

```ruby=
products = Product.where(released_at: DateTime.new(2023, 01, 01) + 1..)
products.each do |product|
    product.increment!(:quantity, 10)
end
```

* Set the expiry_date to nil for products where discount is less than 5%.

```ruby=
Product.where(discount: ..4).update(expiry_date: nil)
```

* Update the price to 150 where the description contains "sale".

```ruby=
Product.where('description LIKE ?' , '%sale%').update(price: 150)
```

* Delete a product where name is "Laptop".

```ruby=
product = Product.find_by(name: 'Laptop').destroy
```

* Remove all products where available is false

```ruby=
products = Product.where(available: false)
products.each { |product| product.destroy }
```

* Delete products where price is greater than 500.

```ruby=
Product.where(price: 501..).each { |product| product.destroy }
```

* Remove all products where quantity is 0.

```ruby=
Product.where(price: 0).each { |product| product.destroy }
```

* Delete products where discount is greater than 20%.

```ruby=
Product.where(discount: 21..).each { |product| product.destroy }
```

* Remove products where expiry_date is before today’s date.

```ruby=
Product.where(expiry_date: ..DateTime.now - 1).each { |product| product.destroy }
```

* Delete all products where name starts with "Pro".

```ruby=
Product.where('name LIKE ?', 'Pro%').each { |product| product.destroy }
```

* Remove products where price is less than 50.

```ruby=
Product.where('price < ?', 50).each { |product| product.destroy }
```

* Delete products where released_at is before January 1, 2022.

```ruby=
Product.where(released_at: ..DateTime.new(2022, 01, 01) - 1).each { |product| product.destroy }
```

* Remove products where description contains "discontinued".

```ruby=
Product.where('description LIKE ?', '%discontinued%').each { |product| product.destroy }
```

* Delete products where quantity is between 1 and 10.

```ruby=
Product.where(quantity: 1..10).each { |product| product.destroy }
```

* Remove all products where available is true and price is greater than 300.

```ruby=
Product.where(available: true).and(Product.where("price > ?", 300)).each { |product| product.destroy }
```

* Delete products where discount is nil.

```ruby=
Product.where(discount: nil).each { |product| product.destroy }
```

* Remove products where price is exactly 100.

```ruby=
Product.where(price: 100).each { |product| product.destroy }
```

* Delete products where released_at is more than 5 years ago.

```ruby=
Product.where("released_at < ?", Time.now - 5.years).each { |product| product.destroy }
```

* Remove products where description includes "obsolete".

```ruby=
Product.where('description LIKE ?', '%obsolete%').each { |product| product.destroy }
```

* Delete products where quantity is nil.

```ruby=
Product.where(quantity: nil).each { |product| product.destroy }
```

* Remove products where expiry_date is within the next month.

```ruby=
Product.where(expiry_date: (DateTime.now + 1.months).all_month).each { |product| product.destroy }
```

* Delete products where discount is less than 5%.

```ruby=
Product.where(discount: ..4).each { |product| product.destroy }
```

* Remove all products where available is true but quantity is less than 5.

```ruby=
Product.where('available = ? AND quantity < ?', true, 5).each { |product| product.destroy }
```

* Print the name of all the products

```ruby=
Product.all.pluck(:name).each { |name| puts name }
```

* Validations rails console

```ruby=
product = Product.new

product.name = ''
product.valid?(:name)
product.errors[:name]
product.errors.full_messages_for(:name).first

product.content = ''
product.valid?(:content)
product.errors[:content]
product.errors.full_messages_for(:content).first

product.quantity = 2.3
product.valid?(:quantity)
product.errors[:quantity]
product.errors.full_messages_for(:quantity).first

product.discount = 101
product.valid?(:discount)
product.errors[:discount]
product.errors.full_messages_for(:discount).first

product.realeased_at = Date.new(1998, 01, 02)
product.valid?(:released_at)
product.errors[:released_at]
product.errors.full_messages_for(:released_at).first
```

