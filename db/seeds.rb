# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.read(Rails.root.join('lib', 'seeds', 'People.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
  t = Player.new
  t.player_id = row['playerID']
  t.birth_year = row['birthYear']
  t.birth_month = row['birthMonth']
  t.birth_day = row['birthDay']
  t.birth_country = row['birthCountry']
  t.birth_state = row['birthState']
  t.birth_city = row['birthCity']
  t.death_year = row['deathYear']
  t.death_month = row['deathMonth']
  t.death_day = row['deathDay']
  t.death_country = row['deathCountry']
  t.death_state = row['deathState']
  t.death_city = row['deathCity']
  t.first_name = row['nameFirst']
  t.last_name = row['nameLast']
  t.given_name = row['nameGiven']
  t.weight = row['weight']
  t.height = row['height']
  t.bats = row['bats']
  t.throws = row['throws']
  t.debut = row['debut']
  t.final_game = row['finalGame']
  t.retro_id = row['retroID']
  t.bbref_id = row['bbrefID']
  t.save
  puts "#{t.player_id} saved"
end

CSV.read(Rails.root.join('lib', 'seeds', 'TeamsFranchises.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
  t = Franchise.new
  t.franch_id = row['franchID']
  t.franch_name = row['franchName']
  t.active = row['active']
  t.na_assoc = row['NAassoc']
  t.save
  puts "#{t.franch_name} saved"
end

CSV.read(Rails.root.join('lib', 'seeds', 'Batting.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
  t = HittingStat.new
  t.player_id = row['playerID']
  t.year_id = row['yearID']
  t.stint = row['stint']
  t.team_id = row['teamID']
  t.lg_id = row['lgID']
  t.g = row['G']
  t.ab = row['AB']
  t.r = row['R']
  t.h = row['H']
  t.doubles = row['2B']
  t.triples = row['3B']
  t.hr = row['HR']
  t.rbi = row['RBI']
  t.sb = row['SB']
  t.cs = row['CS']
  t.bb = row['BB']
  t.so = row['SO']
  t.ibb = row['IBB']
  t.hbp = row['HBP']
  t.sh = row['SH']
  t.sf = row['SF']
  t.gidp = row['GIDP']
  t.save
  puts "#{t.player_id} #{t.year_id} saved"
end