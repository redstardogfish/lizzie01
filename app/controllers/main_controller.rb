class MainController < ApplicationController
  def index
    @pic = "et_civcel_trans.png"

  end
  def marriage
    @pic = "et_byline_wedding.png"
    @quote = "All couples hope that their wedding will be remembered as 'The Best Wedding Ever'. Ours was!!! "
    @photo = 1
    
  end
  def naming
    @pic = "et_byline_naming.png"
  end
  def funeral
    @pic = "et_byline_funeral.png"
  end
  def other
    @pic = "et_byline_other.png"
    @quote = "We had this wild Renewal of vows ceremony that involved elephants."
  end
  def contact
    @pic = "et_civcel_trans.png"    
  end
  def pictures
    @photos = Photo.all
    
  end
  def photo
    @pic = "et_byline_wedding.png"
    @photo = :photo
    render :marriage
  end
  
end
