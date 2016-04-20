require 'pry'

class MP3Importer 
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
    @files = []
    @temp_files = []
    get_files
   end
    

  def get_files  
    Dir[path + '/*'].each { |file| @temp_files << file }
    # get the files from directory
    @files = @temp_files.map { |file| file.split(path + '/').last }
    #normalize files and save in @files var
  end

  def files
    @files
  end

  def import
    @files.each { |file| Song.new_by_filename(file) }
      # binding.pry
  end

end
