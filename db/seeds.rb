# ActiveSupport::JSONを使ってhoge.jsonをデコードしてrubyオブジェクトに変換。変数jsonに展開
json = ActiveSupport::JSON.decode(File.read('sake.json'))

# 変数jsonに入った配列状態のjsonデータを一つ一つ取り出して、モデル.createを使ってdbに投入
json.each do |data|
  data['city_r'].each do |city_r|
    city_r['details'].each do |detail|
      Post.create(
        name: data['name_n'],
        company: city_r['company'],
        city: city_r['city'],
        sake_name: detail['name'],
        kana_name: detail['kana_name']
        )
    end
  end
end
