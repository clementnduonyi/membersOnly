class Like < ApplicationRecord
    belongs_to :member
    belongs_to :post

    validates :post, uniqueness: { scope: :member }
end
