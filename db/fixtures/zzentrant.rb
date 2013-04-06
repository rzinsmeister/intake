Entrant.delete_all

Entrant.seed_once(:id) do |s|
s.id = 1
s.cnamef = "Marvin"
s.cnamel = "Johnson"
s.contact_id = "1"
s.dob = "2000-05-25"
s.grade = "8"
s.studentid = "23425785"
s.shelterid = "1"
s.mnres = "Yes"
s.laststate = "MN"
s.lastcity = "Bloomington"
s.lastschool = School.find(1)
s.mpsschool = School.find(2)
s.needs = [Need.find(1)]
s.language = "Spanish"
s.bus = "No"
s.discovery = "No"
s.transport = "No"
s.note = ""
end

Entrant.seed_once(:id) do |s|
s.id = 2
s.cnamef = "Sally"
s.cnamel = "Powers"
s.contact_id = "2"
s.dob = "2008-05-25"
s.grade = "K"
s.studentid = "357363456"
s.shelterid = "3"
s.mnres = "Yes"
s.laststate = "MN"
s.lastcity = "Bloomington"
s.lastschool = School.find(2)
s.mpsschool = School.find(3)
s.bus = "No"
s.discovery = "No"
s.transport = "No"
s.note = ""
end

Entrant.seed_once(:id) do |s|
s.id = 3
s.cnamef = "Stacey"
s.cnamel = "Johnson"
s.contact_id = "1"
s.dob = "2004-05-25"
s.grade = "4"
s.studentid = "226895785"
s.shelterid = "1"
s.mnres = "Yes"
s.laststate = "MN"
s.lastcity = "Bloomington"
s.lastschool = School.find(1)
s.mpsschool = School.find(2)
s.needs = [Need.find(1)]
s.language = "Spanish"
s.bus = "No"
s.discovery = "No"
s.transport = "No"
s.note = ""
end