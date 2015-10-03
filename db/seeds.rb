require 'faker'
Bank.create!([
                 {account_number: 2400001000162548, name: "Peggy Lam", currency: "1"}
             ])
10.times {Customer.create!([
                     {first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      alias: Faker::Name.name,
                      address: Faker::Address.street_address,
                      email: Faker::Internet.email,
                      telephone: Faker::PhoneNumber.phone_number,
                      customer_number: nil},
                 ])}
Logistic.delete_all
Logistic.create!([
                     {logistic: "UPS"},
                     {logistic: "USPS"},
                     {logistic: "FEDEX"},
                     {logistic: "DHL"}
                 ])
5.times {
  Logistic.create!([
                       {logistic: Faker::Company.name},
                   ])
}
Shipper.delete_all
Shipper.create!([
                    {company_name: "Veloxia"},
                    {company_name: "Dynamax"},
                    {company_name: "Coastal"}
                ])
5.times {
  Shipper.create!([
                       {company_name: Faker::Company.name},
                   ])
}
OrderLine.delete_all
Order.delete_all
50.times {
  Order.create!([
                  :order_number => Faker::Number.number(10),
                  :invoice_number=> Faker::Number.number(10),
                  :order_date=> Faker::Date.backward(30),
                  :customer_id => Faker::Number.between(1, 10),
                  :order_lines_attributes => [{
                      :product_name => Faker::Commerce.product_name,
                      :product_description => Faker::Lorem.words,
                      :url => Faker::Internet.url,
                      :size_color => Faker::Commerce.color,
                      :quantity => Faker::Number.number(1),
                      :online_price => Faker::Commerce.price,
                      :tml_price => Faker::Commerce.price,
                      :estimated_weight => Faker::Number.number(2),
                  }]
              ])}