Entrant.delete_all

Entrant.seed_once(:id) do |s|
s.id = 1
s.cnamef = "Marvin"
s.cnamel = "Johnson"
s.contact_id = "1"
s.dob = "2000-05-25"
s.grade = "8"
s.shelterid = "1"
s.mnres = "Yes"
s.entrydate = "01-20-2013"
s.exitdate = "0"
s.totaldays = "0"
s.lastschool = School.find(1)
s.shelterschool = "2"
s.mpsschool = "0"
s.nonmpsschool = "0"
s.note = ""
end

Entrant.seed_once(:id) do |s|
s.id = 2
s.cnamef = "Sally"
s.cnamel = "Powers"
s.contact_id = "2"
s.dob = "2008-05-25"
s.grade = "K"
s.shelterid = "3"
s.mnres = "Yes"
s.entrydate = "01-01-2013"
s.exitdate = "30-01-2013"
s.totaldays = "29"
s.lastschool = School.find(1)
s.shelterschool = "2"
s.mpsschool = "0"
s.nonmpsschool = "0"
s.note = ""
end