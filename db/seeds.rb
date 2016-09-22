require 'csv'

csv_text = File.read(Rails.root.join('db', 'songs.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  song = Song.new
  song.title = row['title']
  song.artist = row['artist']
  song.album = row['album']
  song.save
end

puts "There are now #{Song.count} rows in the songs table."
