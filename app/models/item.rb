class Item < ApplicationRecord
	belongs_to :menu_item

	enum category: [:appetizers, :maindishes, :desserts, :drinks]

end




