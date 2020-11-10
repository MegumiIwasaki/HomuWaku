class PostHomework < ApplicationRecord
	belongs_to :teacher
	has_many :submissions

	validates :name, presence: true
	validates :file, presence: true
	validates :subject, presence: true

	enum subject:{"未選択":0, "国語":1, "算数":2, "理科":3, "社会":4, "英語":5, "その他":6}
end
