jeff, raghu = User.create [{name: 'Jeff'}, {name: 'Raghu'}]

["Giordano's", "Cheesecake Factory", "Kansaku", "Wildfire"].each do |r|
  jeff.restaurants.create name: r
end

["Bull & Bear", "Crossroads", "Pepper Canister"].each do |r|
  raghu.restaurants.create name: r
end

["Coding", "Watching Hockey"].each do |a|
  jeff.activities.create name: a
end

["Hang Gliding", "Coding"].each do |a|
  raghu.activities.create name: a
end
