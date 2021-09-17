# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
  {
    email: "admin123@gmail.com",
    password: "admin123",
    password_confirmation: "admin123",
    username: "Юлия",
    admin: true
  },
  {
    email: "user1@gmail.com",
    password: "admin123",
    password_confirmation: "admin123",
    username: "Евгений",
    admin: false
  },
  {
    email: "user2@gmail.com",
    password: "admin123",
    password_confirmation: "admin123",
    username: "Степан",
    admin: false
  },
  {
    email: "user3@gmail.com",
    password: "admin123",
    password_confirmation: "admin123",
    username: "Ольга",
    admin: false
  },
  {
    email: "user4@gmail.com",
    password: "admin123",
    password_confirmation: "admin123",
    username: "Виктор",
    admin: false
  },
  ])

  ProductGroup.create!([
    {
      name: "Копчёности",
      plan: 560
    },
    {
      name: "Сладости",
      plan: 340
    },
    {
      name: "Молочные",
      plan: 890
    },
    {
      name: "Выпечка",
      plan: 567
    },
    ])

    Product.create!(
      [
        {
          name: "Куриные крылышки",
          product_group_id: 1
        },
        {
          name: "Филе запечёное",
          product_group_id: 1
        },
        {
          name: "Мясо вяленое",
          product_group_id: 1
        },

        {
          name: "Вафли",
          product_group_id: 2
        },
        {
          name: "Конфеты",
          product_group_id: 2
        },
        {
          name: "Пастила",
          product_group_id: 2
        },
        {
          name: "Мармелад",
          product_group_id: 2
        },

        {
          name: "Кефир",
          product_group_id: 3
        },
        {
          name: "Молоко",
          product_group_id: 3
        },
        {
          name: "Сыр",
          product_group_id: 3
        },
        {
          name: "Творог",
          product_group_id: 3
        },
        {
          name: "Сырки",
          product_group_id: 3
        },

        {
          name: "Булочка творожная",
          product_group_id: 4
        },
        {
          name: "Хлеб",
          product_group_id: 4
        }

      ]
    )

Company.create!([
  {
    name: "Фабрика \"Новый Орлеан\"",
    invoice: 0
  },
  {
    name: "Молочный завод \"Зорька\"",
    invoice: 0
  },
  {
    name: "Предприятие \"Звезда\"",
    invoice: 0
  },
  {
    name: "Фабрика \"Пустырёк\"",
    invoice: 0
  },
  {
    name: "Завод выпечки \"Пышка\"",
    invoice: 0
  },
  {
    name: "Мясной завод \"Вираж\"",
    invoice: 0
  },
  ])

  Cost.create!([
    {
      company_id: 1,
      product_id: 1,
      cost: 4
    },
    {
      company_id: 1,
      product_id: 2,
      cost: 3
    },
    {
      company_id: 1,
      product_id: 3,
      cost: 6
    },
    {
      company_id: 1,
      product_id: 5,
      cost: 4
    },
    {
      company_id: 1,
      product_id: 6,
      cost: 8
    },
    {
      company_id: 1,
      product_id: 7,
      cost: 4
    },
    {
      company_id: 1,
      product_id: 10,
      cost: 10
    },
    {
      company_id: 1,
      product_id: 12,
      cost: 3
    },


    {
      company_id: 2,
      product_id: 8,
      cost: 3
    },
    {
      company_id: 2,
      product_id: 9,
      cost: 6
    },
    {
      company_id: 2,
      product_id: 10,
      cost: 11
    },
    {
      company_id: 2,
      product_id: 11,
      cost: 2
    },
    {
      company_id: 2,
      product_id: 12,
      cost: 5
    },


    {
      company_id: 3,
      product_id: 14,
      cost: 23
    },
    {
      company_id: 3,
      product_id: 13,
      cost: 20
    },
    {
      company_id: 3,
      product_id: 1,
      cost: 11
    },
    {
      company_id: 3,
      product_id: 3,
      cost: 5
    },
    {
      company_id: 3,
      product_id: 5,
      cost: 9
    },


    {
      company_id: 4,
      product_id: 3,
      cost: 23
    },
    {
      company_id: 4,
      product_id: 5,
      cost: 20
    },
    {
      company_id: 4,
      product_id: 6,
      cost: 11
    },
    {
      company_id: 4,
      product_id: 8,
      cost: 5
    },
    {
      company_id: 4,
      product_id: 9,
      cost: 9
    },


    {
      company_id: 5,
      product_id: 2,
      cost: 16
    },
    {
      company_id: 5,
      product_id: 4,
      cost: 18
    },
    {
      company_id: 5,
      product_id: 6,
      cost: 8
    },
    {
      company_id: 5,
      product_id: 13,
      cost: 10
    },
    {
      company_id: 5,
      product_id: 14,
      cost: 34
    },


    {
      company_id: 6,
      product_id: 1,
      cost: 32
    },
    {
      company_id: 6,
      product_id: 2,
      cost: 18
    },
    {
      company_id: 6,
      product_id: 3,
      cost: 23
    },
    {
      company_id: 6,
      product_id: 5,
      cost: 30
    },
    ])
