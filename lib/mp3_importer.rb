require 'pry'


class MP3Importer
  attr_accessor :songs, :artist, :path 
  


  def initialize (file_path)
    self.path = file_path

    
  end


  def files
    
  end

  def import(list_of_filenames)
    list_of_filenames.each{|file_name| songs << Song.new_by_filename(file_name)}
  end




end #of MP3Importer class