class ResponsesController < ApplicationController
  def new
    @topic = Topic.new
    @topic = Topic.find_by(id: params[:format])

    @response = Response.new
  end

  def create
    binding.pry
    # @response = current_user.responses.build(res_params)
    @response = Response.new(res_params)
    if @response.save
      flash[:success] = 'レスを投稿しました。'
      redirect_to ("/topics/show")
    else
      flash.now[:danger] = 'レスの投稿に失敗しました。'
      render 'new'
    end
  end

  private

  def res_params
    params.require(:response).permit(:name, :comment)
  end
end
