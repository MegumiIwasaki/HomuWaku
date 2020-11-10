class Keyword < ApplicationRecord
	belongs_to :student

	validates :words, presence: true

	enum is_active:{"未認証":0, "認証済み":1, "認証不可":2}
end
