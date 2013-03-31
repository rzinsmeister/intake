Contact.delete_all

Contact.seed_once(:id) do |s|
s.id = 1
s.pnamef = "Leann"
s.pnamel = "Johnson"
s.street = "614 Third Street South"
s.city = "Minneapolis"
s.state = "MN"
s.zip = "55415"
s.phone ="612.332.4500"
end

Contact.seed_once(:id) do |s|
s.id = 2
s.pnamef = "Molly"
s.pnamel = "Powers"
s.street = "323 Oak Street"
s.city = "Minneapolis"
s.state = "MN"
s.zip = "55415"
s.phone ="612.555.5555"
end

Contact.seed_once(:id) do |s|
s.id = 3
s.pnamef = "Sarah"
s.pnamel = "Simmons"
s.street = "323 Elm Street"
s.city = "Minneapolis"
s.state = "MN"
s.zip = "55415"
s.phone ="612.235.5345"
end