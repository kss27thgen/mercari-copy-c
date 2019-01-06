# [
#   '---',
#   'レディース',
#   'ベビー・キッズ',
#   '本・音楽・ゲーム',
# ].each do |name|
#   LargeCategory.create!(
#     { name: name }
#   )
# end

# [
#   ['---', 2],
#   ['トップス', 2],
#   ['スカート', 2 ],
#   ['ワンピース', 2],
#   ['---', 3 ],
#   ['キッズ服', 3 ],
#   ['キッズ靴', 3 ],
#   ['オムツ/トイレ/バス', 3 ],
#   ['---', 4 ],
#   ['本', 4 ],
#   ['dvd', 4 ],
#   ['ゲーム', 4 ]
# ].each do |name, id|
#   MiddleCategory.create!(
#     { name: name ,large_category_id: id}
#   )
# end

# [
#   ['---',2],
#   ['シャツ',2],
#   ['ポロシャツ',2],
#   ['キャミソール',2],
#   ['---',3],
#   ['ミニスカート',3],
#   ['ロングスカート',3],
#   ['キュレット',3],
#   ['---',4],
#   ['ミニワンピース',4],
#   ['ロングワンピース',4],
#   ['---',6],
#   ['おくるみ',6],
#   ['下着/肌着',6],
#   ['パジャマ',6],
#   ['---',7],
#   ['サンダル',7],
#   ['ブーツ',7],
#   ['スニーカー',7],
#   ['---',8],
#   ['オムツ',8],
#   ['おまる',8],
#   ['ベビーバス',8],
#   ['---',10],
#   ['文学',10],
#   ['ビジネス',10],
#   ['アート',10],
#   ['---',11],
#   ['洋画',11],
#   ['邦画',11],
#   ['バラエティ',11],
#   ['---',12],
#   ['FF',12],
#   ['キングダムハーツ',12],
#   ['ドラクエ',12],
# ].each do |name, id|
#   SmallCategory.create!(
#     { name: name, middle_category_id: id }
#   )
# end



# [
#   ['ポクポク星人','pokupoku@gmail.com','pokupokupoku','2018-12-12','2018-12-12']
# ].each do |nickname,email,pass,create,update|
#   User.create!(
#     { nickname: nickname, email:email, password: pass, created_at: create, updated_at: update}
#   )
# end


require 'csv'

# CSV.read("db/womanbrands.csv", headers: false).each do |row|
#   WomanBrand.create!(
#     name: row[0]
#   )
# end

# CSV.read("db/kidsbrands.csv", headers: false).each do |row|
#   KidsBrand.create!(
#     name: row[0]
#   )

CSV.read("db/hobbybrands.csv", headers: false).each do |row|
  HobbyBrand.create!(
    name: row[0]
  )
end




