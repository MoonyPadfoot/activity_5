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
Product.where("price > '100'")
```
* Retrieve products where available is true.

```ruby=
Product.find_by(available: true)
```

* Fetch products where quantity is less than 50.

```ruby=
Product.where("quantity < '50'")
```

* Find products where discount is exactly 10%.

```ruby=
Product.where(discount: 10)
```

* Retrieve products where name contains the word "Pro".

```ruby=
Product.where("name LIKE '%Pro%'")
```

* Fetch products where description includes the word "portable".

```ruby=
Product.where("description LIKE '%portable%'")
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