# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create 10 test users

User.create!(name:'Lance Vance', email: 'vance@example.com')
User.create!(name:'Lazlow Jones', email: 'jones@example.com')
User.create!(name:'Donald Love', email: 'love@example.com')
User.create!(name:'Ken Rosenberg', email: 'rosenberg@example.com')
User.create!(name:'Phil Cassidy', email: 'cassidy@example.com')
User.create!(name:'Ricardo Diaz', email: 'diaz@example.com')
User.create!(name:'Claude Maginot', email: 'maginot@example.com')
User.create!(name:'Fernando Martinez', email: 'martinez@example.com')
User.create!(name:'Oliver Biscuit', email: 'biscuit@example.com')
User.create!(name:'Avery Carrington', email: 'carrington@example.com')

# Bali is located within lat: -7.65 to -9.25 and long: 114.27 to 115.87
# Create 4 neighborhoods

Neighborhood.create!(   name: 'Vice Point',
                        maxlat: -7.65,
                        minlat: -8.00,
                        maxlong: 115.00,
                        minlong: 114.27)

Neighborhood.create!(   name: 'Fort Baxter',
                        maxlat: -7.65,
                        minlat: -8.00,
                        maxlong: 115.87,
                        minlong: 115.00)

Neighborhood.create!(   name: 'Ocean Beach',
                        maxlat: -8.00,
                        minlat: -9.25,
                        maxlong: 115.00,
                        minlong: -114.27)

Neighborhood.create!(   name: 'Starfish Port',
                        maxlat: -8.00,
                        minlat: -9.25,
                        maxlong: 115.87,
                        minlong: 115.00)

# Create 6 flats 

Flat.create!(name:'Marina Sands Suite',
            latitude: -7.998877, 
            longitude: 114.282930)

Flat.create!(name:'Ocean Bay Apartment',
            latitude: -8.009999, 
            longitude: 114.301020)

Flat.create!(name:'Parsons Villa',
            latitude: -8.101122, 
            longitude: 114.404099)

Flat.create!(name:'Riverside Condo',
            latitude: -8.252500, 
            longitude: 114.607011)

Flat.create!(name:'Russell Guesthouse',
            latitude: -8.509999, 
            longitude: 114.909999)

Flat.create!(name:'Sunshine Flat',
            latitude: -9.201122, 
            longitude: 115.567890)

# Manually set tenants to flats

Tenant.create!(flat_id: 1, user_id: 1)
Tenant.create!(flat_id: 2, user_id: 2)
Tenant.create!(flat_id: 3, user_id: 3)
Tenant.create!(flat_id: 4, user_id: 4)
Tenant.create!(flat_id: 5, user_id: 5)
Tenant.create!(flat_id: 6, user_id: 6)
Tenant.create!(flat_id: 3, user_id: 7)
Tenant.create!(flat_id: 3, user_id: 8)
Tenant.create!(flat_id: 5, user_id: 9)
