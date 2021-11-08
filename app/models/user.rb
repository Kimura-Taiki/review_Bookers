class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # 上記六種の補足、「作成したUserモデルにdeviseで使用する機能が記述されている」が
  # :database_authenticatable（パスワードの正確性を検証）
  # :registerable（ユーザ登録や編集、削除）
  # :recoverable（パスワードをリセット）
  # :rememberable（ログイン情報を保存）
  # :validatable（emailのフォーマットなどのバリデーション）

  # Bookモデルを複数所有しているという関係性です
  # また、dependent: :destroyと書き加えることでUserモデル削除時に
  # 麾下のBookモデルを一網打尽に削除することができます
  has_many :books, dependent: :destroy
end
