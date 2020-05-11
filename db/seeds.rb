# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurant = Restaurant.create(name: "La Llanteria")
menu = Menu.create(restaurant: restaurant, description: "Menu Tradicional", active: true)
MenuItem.create([
    {
        name: "Pupusa de queso",
        description: "Tradicionales pupusas de queso",
        price: 0.5,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa de frijol con queso",
        description: "Tradicionales pupusas de frijol con queso",
        price: 0.5,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa revuelta",
        description: "Tradicionales pupusas de frijol, queso y chicharron",
        price: 0.5,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa de Frijol",
        description: "Tradicionales pupusas de frijol",
        price: 0.5,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa de pollo",
        description: "Ricas pupusas de rellenas de pollo dehilado",
        price: 0.5,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa de chicharron",
        description: "Tradicionales pupusas de chicharron",
        price: 0.5,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa de albahaca",
        description: "Ricas pupusas rellenas de queso y albahaca",
        price: 0.7,
        available: true,
        stock: -1
    },
    {
        name: "Pupusa de jalapeño",
        description: "Ricas pupusas rellenas de queso y jalapeño",
        price: 0.7,
        available: true,
        stock: -1
    },
    {
        name: "Cocacola Lata",
        description: "Cocacola lata de 250ml",
        price: 0.7,
        available: true,
        stock: 50
    },
    {
        name: "Cocacola Litro",
        description: "Cocacola botella de 1 lt",
        price: 0.7,
        available: true,
        stock: 50
    },
])