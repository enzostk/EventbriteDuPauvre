class EventsController < ApplicationController
  
  def new 
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create

    @event = Event.new(params_event)
    #@event.admin_id = current_user.id

    if @event.save
      redirect_to event_path(@event.id)
      flash[:success]= "Ton évenement a bien été créé !"
    else
      render new_event_path
    end
  end
  
  def params_event
    params.require(:event).permit(:start_date, :duration, :title, :price, :description, :location)
end

end
