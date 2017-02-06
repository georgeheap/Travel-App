# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

module SeedData
  def self.extended(object)
    object.instance_exec do
      User.destroy_all
      Destination.destroy_all
      Tour.destroy_all

      unless User.find_by(email: "lion@king.com")
        User.create(username: "Simba", email: "lion@king.com", password: "123456")
      end
      unless Destination.find_by(name: "London")
        london = Destination.create(name: "London", default_img: "London.jpg", img1: "London-005.jpg", img2: "London-004.jpg", description: "Capital City of the UK. Filled with wonderful sites from Buckingham Palace to the British Museum.", lat: 51.505234, lng: -0.128919)
      end
      unless Destination.find_by(name: "Iceland")
        iceland = Destination.create(name: "Iceland", default_img: "Iceland.jpg",img1: "Iceland-002.jpg", img2: "Northern-Lights.jpg", description: "This amazing country is full of natural wonder and adventure.", lat: 64.146814, lng: -21.934501)
      end
      unless Destination.find_by(name: "Brazil")
        brazil = Destination.create(name: "Brazil", default_img: "Brazil.jpg", img1: "Brazil-002.jpg", img2: "Brazil-008.jpg", description: "This amazing country in South America with vibrant cities and amazing scenery.", lat: -22.9068, lng: -43.1729)
      end
      unless Destination.find_by(name: "Prague")
        prague = Destination.create(name: "Prague", default_img: "Prague.jpg", img1: "Prague-clock.jpg", img2: "Prague-castle.jpg",description: "This amazing city in Eastern Europe with a charm all its own.", lat: 50.086743, lng: 14.419526)
      end
      unless Destination.find_by(name: "Washington DC")
        washington = Destination.create(name: "Washington DC", default_img: "Washington.jpg", img1: "Washington-10.jpg", img2: "Washington-2.jpg", description: "Washington DC is the capital of the USA. It is filled with great museums and memorials.", lat: 38.891178, lng: -77.039417)
      end
      unless Destination.find_by(name: "Sydney")
        sydney = Destination.create(name: "Sydney", default_img: "Sydney.jpg", img1: "Sydney-5.jpg", description: "Sydney is an amazing city in Australia with so many exciting things to do.", lat: -33.857577, lng: 151.214628)
      end
      unless Destination.find_by(name: "Cape Town")
        capetown = Destination.create(name: "Cape Town", default_img: "South-Africa.jpg", description: "Cape Town is a beautiful city in South Africa and not far from adventure.", lat: -33.917317, lng: 18.415813)
      end
      unless Destination.find_by(name: "Niagara Falls")
        niagara = Destination.create(name: "Niagara Falls", default_img: "Niagara-3.jpg", img1: "Niagara-9.jpg", img2: "Niagara-10.jpg", description: "Niagara falls is an amazing Waterfall between Canada and the USA.", lat: 43.079765, lng: -79.075832)
      end
      unless Destination.find_by(name: "Hawaii")
        hawaii = Destination.create(name: "Hawaii", default_img: "Hawaii.jpg", img1: "Hawaii-2.jpg", img2: "Hawaii-15.jpg", description: "Kauai is one of the most beautiful of all the Hawaiian Islands.", lat: 22.104412, lng: -159.501731)
      end
      unless Tour.find_by(name: "Learn to Surf")
        Tour.create(name: "Learn to Surf", default_img: "Hawaii-8.jpg", destination_id: hawaii.id, description: "Learn to surf on the amazing Island of Kauai.", lat: 22.204784, lng: -159.501112)
      end
      unless Tour.find_by(name: "Dolphin Cruise")
        Tour.create(name: "Dolphin Cruise", default_img: "Hawaii-11.jpg", destination_id: hawaii.id, description: "Go on a boat trip to see wild dolphins.", lat: 21.901565, lng: -159.588034)
      end
      unless Tour.find_by(name: "Icelandic Horse Riding")
        Tour.create(name: "Icelandic Horse Riding", default_img: "Iceland-001.jpg", destination_id: iceland.id, description: "Ride Icelandic Horses through the beautiful Icelandic countryside.", lat: 64.141331, lng: -21.847310)
      end
    end
  end
end

extend SeedData if ARGV.include?("db:seed")
