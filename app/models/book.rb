class Book < ApplicationRecord
  # 唯一のUserモデルに所属しているという関係性です
  belongs_to :user

  # バリテーションです
  # 今回は:title,:body,:user_idの３つとも必要なので全部にpresence: trueを、
  # 更に本文に二百字制限が掛かっているのでlength: {maximum: 200}を入れます
  validates :title, presence: true
  validates :body, presence: true,
                   length: {maximum: 200}
  validates :user_id, presence: true
end
