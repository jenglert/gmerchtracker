class CallbacksController < ApplicationController

  def index
    
    Callback.create(:body => request.body.read)    
    render :text => ""
  end

end
