Bank.create!([
                 {account_number: 2400001000162548, first_name: "Peggy ", last_name: "Lam", currency: "1"}
             ])
Customer.create!([
                     {first_name: "Brian", last_name: "Ho", alias: "Power", address: "Puimsteenstraat 9", email: "pilotbear19@gmail.com", telephone: "8519832", is_forwarder: false, customer_number: nil},
                     {first_name: "Jurgen", last_name: "Ho", alias: "Invictus", address: "Goudstraat", email: "jurgen@msn.com", telephone: "8615638", is_forwarder: false, customer_number: nil},
                     {first_name: "Gabor", last_name: "Tjong A Hung", alias: "Iqreate", address: "Kwatta", email: "g.v.tjongahung@gmail.com", telephone: "8703443", is_forwarder: false, customer_number: nil},
                     {first_name: "Sonny", last_name: "Law", alias: "Bana", address: "Mahonylaan", email: "bana@gmail.com", telephone: "8718384", is_forwarder: false, customer_number: nil},
                     {first_name: "Peggy", last_name: "Lam", alias: "Pegota", address: "Puimsteenstraat 9", email: "peggy.s.f.lam@gmail.com", telephone: "8965020", is_forwarder: false, customer_number: nil},
                     {first_name: "TML", last_name: "Imports", alias: "", address: "", email: "tml.importsr@gmail.com", telephone: "", is_forwarder: true, customer_number: nil}
                 ])
Logistic.create!([
                     {logistic: "UPS"},
                     {logistic: "USPS"},
                     {logistic: "FEDEX"},
                     {logistic: "DHL"}
                 ])
Shipper.create!([
                    {company_name: "Veloxia"},
                    {company_name: "Dynamax"},
                    {company_name: "Coastal"}
                ])
