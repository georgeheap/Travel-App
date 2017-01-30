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

      unless User.find_by(email: "lion@king.com")
        User.create(username: "Simba", email: "lion@king.com", password: "123456")
      end
      unless Destination.find_by(name: "London")
        Destination.create(name: "London", default_img: "London.jpg", description: "Capital City of the UK. Filled with wonderful sites from Buckingham Palace to the British Museum.", lat: 51.505234, lng: -0.128919)
      end
      unless Destination.find_by(name: "Iceland")
        Destination.create(name: "Iceland", default_img: "Iceland.jpg", description: "This amazing country is full of natural wonder.", lat: 64.1265, lng: 21.8174)
      end
    end
  end
end

extend SeedData if ARGV.include?("db:seed")
