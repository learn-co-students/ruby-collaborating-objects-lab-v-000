class MP3_importer

  def initialize('./spec/fixtures')  #set the path attribute 
  end 
  
  def files 
  end
  
  def import 
    Song.new_by_filename(some_filename)
  end 

end 
