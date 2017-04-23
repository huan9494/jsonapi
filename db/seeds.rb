# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = 'https://randomapi.com/api/6de6abfedb24f889e0b5f675edc50deb?fmt=raw&sole'
    response = RestClient.get(url)
    (JSON.parse(response)).each_with_index do |data,index|
       if User.all.size < 99
        u = User.new(:first_name => data["first"], :last_name => data["last"], :email => data["email"],
        :address => data["address"], :created_at => data["created"], :balance => data["balance"])
        u.save
     end
 end