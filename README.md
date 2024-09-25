# activity_5

* Create atleast 10 records using the create method

```rails=
Product.create(name: "product 1", description: "whole milk", quantity: 3, price: 20.50, available: true, released_at: DateTime.now - 5, expiry_date: DateTime.now + 25, discount: 0.10)
Product.create(name: "product 2", description: "almond milk", quantity: 5, price: 21.00, available: false, released_at: DateTime.now - 10, expiry_date: DateTime.now + 20, discount: 0.15)
Product.create(name: "product 3", description: "soy milk", quantity: 2, price: 19.75, available: true, released_at: DateTime.now - 3, expiry_date: DateTime.now + 15, discount: 0.05)
Product.create(name: "product 4", description: "oat milk", quantity: 10, price: 22.00, available: true, released_at: DateTime.now - 1, expiry_date: DateTime.now + 30, discount: 0.20)
Product.create(name: "product 5", description: "coconut milk", quantity: 4, price: 19.00, available: false, released_at: DateTime.now - 7, expiry_date: DateTime.now + 10, discount: 0.10)
Product.create(name: "product 6", description: "skim milk", quantity: 6, price: 20.75, available: true, released_at: DateTime.now - 2, expiry_date: DateTime.now + 18, discount: 0.25)
Product.create(name: "product 7", description: "goat milk", quantity: 8, price: 18.50, available: false, released_at: DateTime.now - 12, expiry_date: DateTime.now + 5, discount: 0.10)
Product.create(name: "product 8", description: "lactose-free milk", quantity: 7, price: 21.50, available: true, released_at: DateTime.now - 4, expiry_date: DateTime.now + 28, discount: 0.30)
Product.create(name: "product 9", description: "hazelnut milk", quantity: 9, price: 20.25, available: true, released_at: DateTime.now - 6, expiry_date: DateTime.now + 22, discount: 0.10)
Product.create(name: "product 10", description: "rice milk", quantity: 1, price: 19.95, available: false, released_at: DateTime.now - 8, expiry_date: DateTime.now + 12, discount: 0.15)
```