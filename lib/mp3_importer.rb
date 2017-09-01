class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end


# class MP3Importer
#   attr_reader :path
#
#   def initialize(filepath)
#     @path = filepath
#   end
#
#   def files
#     #@files = Dir.glob("#{@path}/*.mp3")
#     #@files.collect { |file| file.gsub("#{@path}/", "")}
#     @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
#   end
#
#   def import
#     files.each { |file| Song.new_by_filename(file)}
#   end
#
# end
