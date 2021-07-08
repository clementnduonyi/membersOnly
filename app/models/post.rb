class Post < ApplicationRecord
    include ActionView::Helpers::DateHelper

    belongs_to :member
    validates :title, :post, presence: true

    has_many :likes

    has_many :member_likes, through: :likes, source: :member

    def post_time_stamp
        post_time_stamp =
        if created_at > 1.day.ago
            post_time_stamp = time_ago_in_words(created_at).concat(" ago")
        else
            post_time_stamp = created_at.strftime(' %b %-d %y')
        end
        created_at == updated_at ? post_time_stamp : (post_time_stamp + ' <i>edited</i>').html_safe
    end

end
