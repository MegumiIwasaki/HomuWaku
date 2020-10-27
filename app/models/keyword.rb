class Keyword < ApplicationRecord
	belongs_to :student

	enum status:{'認証確認中': 0, '認証済み':1, '認証不可':2}
end
