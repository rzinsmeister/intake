Shelter.delete_all

Shelter.seed_once(:sheltername) do |s|
s.id = 1
s.sheltername = "People Serving People"
s.street = "614 Third Street South"
s.city = "Minneapolis"
s.state = "MN"
s.zip = "55415"
s.phone="612.332.4500"
end

Shelter.seed_once(:sheltername) do |s|
s.id = 2
s.sheltername = "Sharing and Caring Hands"
s.street = "525 North 7th Street"
s.city = "Minneapolis"
s.state = "MN"
s.zip = "55405"
s.phone="612.338.4640"
end

Shelter.seed_once(:sheltername) do |s|
s.id = 3
s.sheltername = "Drake"
s.street = "416 S 10th St"
s.city = "Minneapolis"
s.state = "MN"
s.zip = "55405"
s.phone="612.359.0947"
end

