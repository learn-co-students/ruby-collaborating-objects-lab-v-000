class MP3Importer 
  attr_accessor :path, :list_of_files
  
  def initialize(path)
    @path = path
  end
  
  def files
   Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "") }
  end
  
  def import
    list_of_files = self.files
    list_of_files.each { |filename| Song.new_by_filename(filename) }
  end
end


 #def import(file_names)
   # file_names.each do |filename| 
    #  song = Song.new_by_filename(filename) 
    #end
  #end