class ApplicationController < ActionController::Base


 def index
    @engineers = Engineer.all
    #@engineer = Engineer.find(params[:id])
    @engineer = current_engineer #Engineer.find(params[:id])
    @recording_sessions = RecordingSession.all
    @studios = Studio.all
    @artists = Artist.all
       redirect_to '/recording_sessions'
 end


def show
     index
#     # binding.pry
     @engineer = Engineer.find(params[:id])
     redirect_to action: 'index'
    
   end

  def edit
    index
     @studios = Studio.all
    @engineer = Engineer.find(params[:id])
    @artist = Artist.find(params[:id])
    @recording_session = RecordingSession.find(params[:id])
    @studio =Studio.find(params[:id])
  end






end
