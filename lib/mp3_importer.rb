class MP3Importer

  attr_accessor :path

 def initialize(path)
   @path = path
 end

  def files
  tracks = Dir.entries(path).find_all{|files| files =~ /mp3$/}
end
  def import
   files.each{|file_name| Song.new_by_filename(file_name)}
  end
end