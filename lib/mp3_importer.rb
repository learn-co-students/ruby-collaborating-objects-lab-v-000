class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

 # def files
  #  Dir.entries("#{@path}").each do |file|
   #  if file.include?("mp3")
  #   @files << file
   #  end
   # end
   # puts @files
  #end

  def files
    Dir.entries(path).select { |x| x if x.end_with?('mp3') }
  end

  def import
     files.each { |file_name| Song.new_by_filename(file_name) }

end

 # def import
  #  @files.each do |file|
  #  Song.new_by_filename(file)
  #  end
 # end
end