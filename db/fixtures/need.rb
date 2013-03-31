Need.delete_all

Need.seed_once(:item) do |s|
s.id = 1
s.item = "Asthma"
end

Need.seed_once(:item) do |s|
s.id = 2
s.item = "IEP"
end


Need.seed_once(:item) do |s|
s.id = 3
s.item = "Gifted and Talented"
end


Need.seed_once(:item) do |s|
s.id = 4
s.item = "Health Concerns"
end


Need.seed_once(:item) do |s|
s.id = 5
s.item = "ADHD"
end
