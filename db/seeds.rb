require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'songs.csv'))
puts csv_text
