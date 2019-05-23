class Engineers::SessionsController < Devise::SessionsController
=begin


 def index
    @engineers = Engineer.all
    @recording_sessions = RecordingSession.all
    @studios = Studio.all
    @artists = Artist.all
       redirect_to action: 'index'
 end


#  def destroy
# #    session[:engineer_id] = nil
#  session[:current_user_id] = user.id
# sign_out @engineer 
# redirect_to root_url, notice: "Logged out!"
#   end


def show
     index
#     # binding.pry
     @engineer = Engineer.find(params[:id])
     redirect_to action: 'index'
    
#   end


  def new
    index
    @recording_session = RecordingSession.new
    @engineer = current_engineer
    # params.require(:recording_session).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)
    # if artist_id or not -- that
    # if nested_--tind artist build --what is associated
  end



def create
    # binding.pry
    @recording_session = RecordingSession.new(recording_session_params)
    index
    # @recording_session = Zat.find(params[:id])
    if @recording_session.save
      # raise params.inspect
#      redirect_to action: 'index' # , notice: 'Recording Session created'
      redirect_to @recording_session # , notice: 'Recording Session created'
    else
      # @studios = Studio.all
      render action: 'new'
    end
  end

  private

def recording_session_params
  params.require(:recording_session).permit(:appointment_date, :studio_id, :engineer_id, :artist_id)
end

=end
end
