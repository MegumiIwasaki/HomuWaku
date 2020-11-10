class Submission < ApplicationRecord
	belongs_to :student
	belongs_to :post_homework

	validates :file, presence: true
	validates :evaluation, presence: true

	enum evaluation:{"評価待ち":0, "不可":1, "可":2, "良":3, "優良":4}
end
