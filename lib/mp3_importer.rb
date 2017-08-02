require 'pry'
class MP3Importer

attr_accessor :path, :name

def initialize(file_path)
  @path= file_path

end

def files
  Dir.glob("#{@path}/*.mp3").collect do |filename|
    filename.gsub("#{@path}/","")
  end

end


  def import
    files.each do |filename|
      Song.new_by_filename(filename)
       end
     end

end
