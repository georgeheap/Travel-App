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

      unless User.find_by(email: "lion@king.com")
        User.create(username: "Simba", email: "lion@king.com", password: "123456")
      end
    end
  end
end

extend SeedData if ARGV.include?("db:seed")
