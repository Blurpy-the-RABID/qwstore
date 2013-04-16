# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: utf-8
Product.delete_all
Product.create(title: '3-ft. White Nylon Whip', 
  description: 
    %{<p>
        This whip is three feet long and has not been dyed any color. 
        It has a black grip-taped handle and a frayed pommel.
    </p>},
  image_url: '3ftWhiteWhip.png', 
  price: 15.00)
# . . .
Product.create(title: '4-ft. Red Nylon Whip', 
  description: 
    %{<p>
        This whip is four feet long and has been dyed cherry red. 
        It has a black grip-taped handle and a frayed pommel.
    </p>},
  image_url: '4ftRedWhip.png', 
  price: 25.00)
# . . .
Product.create(title: '6-ft. Blue Nylon Whip', 
  description: 
    %{<p>
        This whip is six feet long and has been dyed royal blue. 
        It has a black grip-taped handle and a frayed pommel.
    </p>},
  image_url: '6ftBlueWhip.png', 
  price: 35.00)