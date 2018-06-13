class Post < ApplicationRecord
  has_many :maps
  has_many :comments
  
  def self.keyword_search(keyword)
    Post.where("sake_name LIKE :hoge OR kana_name LIKE :hoge", hoge: "\%#{keyword}\%") if keyword
  end

  def self.city_search(city)
    Post.where(['name LIKE ?', "%#{city}%"]) if city
  end

end
