# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# CSV.read(Rails.root.join('lib', 'seeds', 'People.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
#   t = Player.new
#   t.player_id = row['playerID']
#   t.birth_year = row['birthYear']
#   t.birth_month = row['birthMonth']
#   t.birth_day = row['birthDay']
#   t.birth_country = row['birthCountry']
#   t.birth_state = row['birthState']
#   t.birth_city = row['birthCity']
#   t.death_year = row['deathYear']
#   t.death_month = row['deathMonth']
#   t.death_day = row['deathDay']
#   t.death_country = row['deathCountry']
#   t.death_state = row['deathState']
#   t.death_city = row['deathCity']
#   t.first_name = row['nameFirst']
#   t.last_name = row['nameLast']
#   t.given_name = row['nameGiven']
#   t.weight = row['weight']
#   t.height = row['height']
#   t.bats = row['bats']
#   t.throws = row['throws']
#   t.debut = row['debut']
#   t.final_game = row['finalGame']
#   t.retro_id = row['retroID']
#   t.bbref_id = row['bbrefID']
#   t.save
#   puts "#{t.player_id} saved"
# end

# CSV.read(Rails.root.join('lib', 'seeds', 'TeamsFranchises.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
#   t = Franchise.new
#   t.franch_id = row['franchID']
#   t.franch_name = row['franchName']
#   t.active = row['active']
#   t.na_assoc = row['NAassoc']
#   t.save
#   puts "#{t.franch_name} saved"
# end

# CSV.read(Rails.root.join('lib', 'seeds', 'Batting.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
#   t = HittingStat.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.stint = row['stint']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.g = row['G']
#   t.ab = row['AB']
#   t.r = row['R']
#   t.h = row['H']
#   t.doubles = row['2B']
#   t.triples = row['3B']
#   t.hr = row['HR']
#   t.rbi = row['RBI']
#   t.sb = row['SB']
#   t.cs = row['CS']
#   t.bb = row['BB']
#   t.so = row['SO']
#   t.ibb = row['IBB']
#   t.hbp = row['HBP']
#   t.sh = row['SH']
#   t.sf = row['SF']
#   t.gidp = row['GIDP']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.read(Rails.root.join('lib', 'seeds', 'Fielding.csv'), headers:true, encoding: 'ISO-8859-1').each do |row|
#   t = FieldingStat.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.stint = row['stint']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.pos = row['POS']
#   t.g = row['G']
#   t.gs = row['GS']
#   t.inn_outs = row['InnOuts']
#   t.po = row['PO']
#   t.a = row['A']
#   t.e = row['E']
#   t.dp = row['DP']
#   t.pb = row['PB']
#   t.wp = row['WP']
#   t.sb = row['SB']
#   t.cs = row['CS']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'Pitching.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PitchingStat.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.stint = row['stint']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.w = row['W']
#   t.l = row['L']
#   t.g = row['G']
#   t.gs = row['GS']
#   t.cg = row['CG']
#   t.sho = row['SHO']
#   t.sv = row['SV']
#   t.ip_outs = row['IPouts']
#   t.h = row['H']
#   t.er = row['ER']
#   t.hr = row['HR']
#   t.bb = row['BB']
#   t.so = row['SO']
#   t.ba_opp = row['BAOpp']
#   t.era = row['ERA']
#   t.ibb = row['IBB']
#   t.wp = row['WP']
#   t.hbp = row['HBP']
#   t.bk = row['BK']
#   t.bfp = row['BFP']
#   t.gf = row['GF']
#   t.r = row['R']
#   t.sh = row['SH']
#   t.sf = row['SF']
#   t.gidp = row['GIDP']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'Teams.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = TeamStat.new
#   t.year_id = row['yearID']
#   t.lg_id = row['lgID']
#   t.team_id = row['teamID']
#   t.franch_id = row['franchID']
#   t.div_id = row['divID']
#   t.rank = row['Rank']
#   t.g = row['G']
#   t.g_home = row['Ghome']
#   t.w = row['W']
#   t.l = row['L']
#   t.div_win = row['DivWin']
#   t.wc_win = row['WCWin']
#   t.lg_win = row['LgWin']
#   t.ws_win = row['WSWin']
#   t.r = row['R']
#   t.ab = row['AB']
#   t.h = row['H']
#   t.doubles = row['2B']
#   t.triples = row['3B']
#   t.hr = row['HR']
#   t.bb = row['BB']
#   t.so = row['SO']
#   t.sb = row['SB']
#   t.cs = row['CS']
#   t.hbp = row['HBP']
#   t.sf = row['SF']
#   t.ra = row['RA']
#   t.er = row['ER']
#   t.era = row['ERA']
#   t.cg = row['CG']
#   t.sho = row['SHO']
#   t.sv = row['SV']
#   t.ip_outs = row['IPouts']
#   t.ha = row['HA']
#   t.hra = row['HRA']
#   t.bba = row['BBA']
#   t.soa = row['SOA']
#   t.e = row['E']
#   t.dp = row['DP']
#   t.fp = row['FP']
#   t.name = row['name']
#   t.park = row['park']
#   t.attendance = row['attendance']
#   t.bpf = row['BPF']
#   t.ppf = row['PPF']
#   t.team_id_br = row['teamIDBR']
#   t.team_id_lahman = row['teamIDlahman45']
#   t.team_id_retro = row['teamIDretro']
#   t.save
#   puts "#{t.team_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'BattingPost.csv'), headers: true, encoding: 'ISO-8859-1') do |row|
#   t = PostHittingStat.new
#   t.year_id = row['yearID']
#   t.round = row['round']
#   t.player_id = row['playerID']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.g = row['G']
#   t.ab = row['AB']
#   t.r = row['R']
#   t.h = row['H']
#   t.doubles = row['2B']
#   t.triples = row['3B']
#   t.hr = row['HR']
#   t.rbi = row['RBI']
#   t.sb = row['SB']
#   t.cs = row['CS']
#   t.bb = row['BB']
#   t.so = row['SO']
#   t.ibb = row['IBB']
#   t.hbp = row['HBP']
#   t.sh = row['SH']
#   t.sf = row['SF']
#   t.gidp = row['GIDP']
#   t.save
#   puts "#{t.year_id} #{t.player_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'FieldingPost.csv'), headers: true, encoding: 'ISO=8859-1') do |row|
#   t = PostFieldingStat.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.round = row['round']
#   t.pos = row['POS']
#   t.g = row['G']
#   t.gs = row['GS']
#   t.inn_outs = row['InnOuts']
#   t.po = row['PO']
#   t.a = row['A']
#   t.e = row['E']
#   t.dp = row['DP']
#   t.tp = row['TP']
#   t.pb = row['PB']
#   t.sb = row['SB']
#   t.cs = row['CS']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1910s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = GamesNineteenTen.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1920s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenTwenty.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1930s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenThirty.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1940s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenForty.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1950s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenFifty.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1960s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenSixty.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1970s_final_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenSeventy.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1980s_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenEighty.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1990sfields_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenNinety.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '1990sfields_pbp2.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayNineteenNinety.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '2000sfields_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayTwoThousand.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '2000sfields_pbp2.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayTwoThousand.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '2010sfields_pbp.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayTwoThousandTen.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', '2010sfields_pbp2.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayByPlayTwoThousandTen.create(row.to_hash)
#   puts "#{t.game_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'PitchingPost.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PostPitchingStat.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.round = row['round']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.w = row['W']
#   t.l = row['L']
#   t.g = row['G']
#   t.gs = row['GS']
#   t.cg = row['CG']
#   t.sho = row['SHO']
#   t.sv = row['SV']
#   t.ip_outs = row['IPouts']
#   t.h = row['H']
#   t.er = row['ER']
#   t.hr = row['HR']
#   t.bb = row['BB']
#   t.so = row['SO']
#   t.ba_opp = row['BAOpp']
#   t.era = row['ERA']
#   t.ibb = row['IBB']
#   t.wp = row['WP']
#   t.hbp = row['HBP']
#   t.bk = row['BK']
#   t.bfp = row['BFP']
#   t.gf = row['GF']
#   t.r = row['R']
#   t.sh = row['SH']
#   t.sf = row['SF']
#   t.gidp = row['GIDP']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'AllstarFull.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = Allstar.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.game_id = row['gameID']
#   t.team_id = row['teamID']
#   t.lg_id = row['lgID']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'AwardsPlayers.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = PlayerAward.new
#   t.player_id = row['playerID']
#   t.award_id = row['awardID']
#   t.year_id = row['yearID']
#   t.lg_id = row['lgID']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

# CSV.foreach(Rails.root.join('lib', 'seeds', 'HallOfFame.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
#   t = HallOfFame.new
#   t.player_id = row['playerID']
#   t.year_id = row['yearID']
#   t.inducted = row['inducted']
#   t.category = row['category']
#   t.save
#   puts "#{t.player_id} #{t.year_id} saved"
# end

CSV.foreach(Rails.root.join('lib', 'seeds', 'Salaries.csv'), headers:true, encoding: 'ISO-8859-1') do |row|
  t = Salary.new
  t.year_id = row['yearID']
  t.team_id = row['teamID']
  t.lg_id = row['lgID']
  t.player_id = row['playerID']
  t.salary = row['salary']
  t.save
  puts "#{t.player_id} #{t.year_id} saved"
end