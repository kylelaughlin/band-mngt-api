class Api::V1::SetListsController < ApplicationController

  before_action :set_set_list, only: [:show, :update, :destroy]

  def index
    if params[:past] = true
      @set_lists = SetList.past(current_user)
      render json: @set_lists
    else
      @set_lists = SetList.future(current_user)
      render json: @set_lists
  end

  def create
    @set_list = SetList.new(set_list_params)
    @set_list.band_id = current_user.band_id
    if @set_list.save
      render json: @set_list
    else
      render json: { errors: @set_list.errors.full_messages }
    end
  end

  def show
    render json: @set_list
  end

  def update
    if @set_list.update_attributes(set_list_params)
      render json: @set_list
    else
      render json: {errors: @set_list.errors.full_messages}
    end
  end

  private

  def set_list_params
    params.require(:set_list).permit(:name, :performance_date)
  end

  def set_set_list
    @set_list = SetList.find(params[:id])
  end

end
