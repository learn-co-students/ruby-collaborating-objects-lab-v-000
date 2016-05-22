require 'pry'

class MP3Importer
  attr_accessor :songs 
  
  


  pn = Pathname.new('/db/mp3s')



  def files
    
  end

  def import(list_of_filenames)
    list_of_filenames.each{|file_name| songs << Song.new_by_filename(file_name)}
  end




end #of MP3Importer class