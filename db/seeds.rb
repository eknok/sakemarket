# 一段階目(jsonファイルからPostモデル)
# # ActiveSupport::JSONを使ってhoge.jsonをデコードしてrubyオブジェクトに変換。変数jsonに展開
# json = ActiveSupport::JSON.decode(File.read('sake.json'))
#
# # 変数jsonに入った配列状態のjsonデータを一つ一つ取り出して、モデル.createを使ってdbに投入
# json.each do |data|
#   data['city_r'].each do |city_r|
#     city_r['details'].each do |detail|
#       Post.create(
#         name: data['name_n'],
#         company: city_r['company'],
#         city: city_r['city'],
#         sake_name: detail['name'],
#         kana_name: detail['kana_name']
#         )
#     end
#   end
# end

# # ２段階目（geocoding）
# posts = Post.all
# posts.each do |post|
#   Map.create!(
#     address: post.name + post.city,
#     post_id: post.id
#   )
# end

# ３段階目（緯度経度がnilを探して更新）
maps = Map.where(latitude: nil)
maps.each do |map|
  map.update(
    address: map.address
  )
end
