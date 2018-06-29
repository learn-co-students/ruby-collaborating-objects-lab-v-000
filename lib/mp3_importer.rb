require_relative "./song.rb"
class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  #def files
  #  allfiles = Dir.entries(@path)
 #   allfiles.each do |file|
 #      if file.end_with? '.mp3'
 #        @@filenames << file
  #     end
  #   end
  #  @@filenames
 # end
  
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/","")}
  end

 

  def import
    files.each do |file| 
       Song.new_by_filename(file)
    end
  end
  
end



