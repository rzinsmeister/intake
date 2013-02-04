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
s.entrydate = "01-30-2013"
s.exitdate = ""
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
s.entrydate = "01-01-2013"
s.exitdate = "01-30-2013"
end