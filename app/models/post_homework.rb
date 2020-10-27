class PostHomework < ApplicationRecord
	belongs_to :teacher
	has_one :submission

	enum status:{'未選択': 0, '国語':1, '算数':2, '理科':3, '社会':4, '英語':5, 'その他':6}
end
