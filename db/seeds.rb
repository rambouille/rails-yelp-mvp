puts 'cleaning database'
Restaurant.destroy_all

puts 'creating 3 restaurants'
RESTAURANTS = [
  {
    name: "l'Alicheur",
    address: '120 rue Saint Maur 75011 Paris',
    category: 'chinese',
    phone_number: '01 88 32 65 71'
  },
  {
    name: 'Chez Tonio : Pizza i Pasta',
    address: '40 rue Oberkampf 75011 Paris',
    category: 'italian',
    phone_number: '+33 6 18 98 17 61'
  },
  {
    name: 'Mamie au fourneau',
    address: 'villa Gaudelet 75011 Paris',
    category: 'french',
    phone_number: '01 30 13 65 00'
  }
]

RESTAURANTS.each do |resto|
  Restaurant.create(
    name: resto[:name],
    address: resto[:address],
    phone_number: resto[:phone_number],
    category: resto[:category]
  )
end
