class Book < ApplicationRecord
  # 唯一のUserモデルに所属しているという関係性です
  belongs_to :user
end
