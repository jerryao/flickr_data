require 'csv'

CSV.foreach("db/tags.csv") do |row|
c =Photo.new
c.lat = row[0]
c.lon = row[1]
c.shot_at = row[2]
c.user_name = row[3]
c.user_id = row[4]
c.photo_title = row[5]
c.url = row[6]
c.tags = row[7]
c.save
# FasterCSV.foreach { |row| Geo.create(:lat => row[0], :lon => row[1],) }
end
