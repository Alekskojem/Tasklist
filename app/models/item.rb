class Item < ApplicationRecord

belongs_to :user


def completed?
	!comleted_at.blank?
end

end