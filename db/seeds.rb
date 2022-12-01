images = [
  "https://res.cloudinary.com/dztwrgpbi/image/upload/v1669894664/random_pets/pets_01.png",
  "https://res.cloudinary.com/dztwrgpbi/image/upload/v1669894667/random_pets/pets_02.png",
  "https://res.cloudinary.com/dztwrgpbi/image/upload/v1669894665/random_pets/pets_03.png",
  "https://res.cloudinary.com/dztwrgpbi/image/upload/v1669894664/random_pets/pets_04.png"
]

species = [
  'dog', 'cat'
]

images.each do |image|
  pet = Pet.create(
    address: Faker::Address.street_name,
    last_seen_at: Faker::Time.between(from: (Time.now - 5.days), to: Time.now),
    image_url: image,
    species: species.sample
  )

end