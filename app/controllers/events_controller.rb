class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]
  before_action :signed_in_user, only: [:edit, :update, :new, :create]
  before_action :correct_user, only: [:edit, :update]

  # GET /events
  # GET /events.json
  def index
    @my_events = current_user ? Event.where('user_id = ?', current_user.id).order('start_time ASC') : false
    @events = Event.where('status = ?', 'Scheduled').order('start_time ASC').limit(20)
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @start_time_default_value = ''
    @end_time_default_value = ''
  end

  # GET /events/1/edit
  def edit
    @start_time_default_value = @event.start_time
    @end_time_default_value = @event.end_time
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
#  def destroy
#    @event.destroy
#    respond_to do |format|
#      format.html { redirect_to events_url }
#      format.json { head :no_content }
#    end
#  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
      #@event.start_time = Time.at(@event.start_time).strftime('%d-%b-%Y %I:%M%p')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:user_id, :title, :description, :start_time, :end_time, :full_address, :latitude, :longitude, :repeat, :status)
    end

    def correct_user
      @user = User.find(@event.user_id)
      redirect_to(root_path) unless current_user?(@user)
    end
end
