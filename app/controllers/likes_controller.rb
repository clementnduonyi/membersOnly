class LikesController < ApplicationController
    def create
        if params[:like][:member_id].to_i == current_member.id
            Like.create(like_params)
        end
        redirect_to root_url
    end

    def destroy
        like = Like.find(params[:id])
        if like.member == current_member
            Like.destroy(params[:id])
        end
        redirect_to root_url
    end
end

private
def like_params
    params.require(:like).permit(:member_id, :post_id)
end