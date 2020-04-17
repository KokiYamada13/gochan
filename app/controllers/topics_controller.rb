class TopicsController < ApplicationController
  before_action :require_user_logged_in

  def index
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.build(topic_params)
    # @topic = Topic.new(topic_params)
    if @topic.save
        flash[:success] = 'ネタを投稿しました。'
        redirect_to root_url
    else
        flash.now[:danger] = 'ネタの投稿に失敗しました。'
        render 'new'
    end
  end

  def destroy
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :content)
  end
end
