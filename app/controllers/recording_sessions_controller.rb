class RecordingSessionsController < ApplicationController


  def index
    @engineers = Engineer.all
    @studios = Studio.all
    @artists = Artist.all
    if params[:artist_id]
      @recording_sessions = Artist.find(params[:artist_id]).recording_sessions
    elsif params[:engineer_id]
      @recording_sessions = Engineer.find(params[:engineer_id]).recording_sessions
    elsif params[:studio_id]
      @recording_sessions = Studio.find(params[:studio_id]).recording_sessions
    else
      @recording_sessions = RecordingSession.all
   #    redirect_to action: 'index'
 end
 end



    def show
        @recording_session = RecordingSession.find(params[:id])
    end

    def new
        @recording_session = RecordingSession.new 
    end

    def edit
      @recording_session = RecordingSession.find(params[:id])
    end

    def create
      @recording_session = RecordingSession.new(recording_session_params)

      if @recording_session.save
        redirect_to @recording_session
      else
        render 'new'
      end
    end

    def update
      @recording_session = RecordingSession.find(params[:id])

      if @recording_session.update(recording_session_params)
        redirect_to @recording_session
      else
        render 'edit'
      end
    end

    def destroy
      @recording_session = RecordingSession.find(params[:id])
      @recording_session.destroy

      redirect_to recording_sessions_path
    end


end
