class Api::V1::SetListsController < ApplicationController

  def index
    @set_lists_future = SetList.future(current_user)
    @set_lists_past = SetList.past(current_user)
  end

end
