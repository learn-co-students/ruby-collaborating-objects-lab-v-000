# mp3_importer.rb

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  #def files
  #  @files = Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
  #end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.include?(".mp3")
    end
    files
  end

  def import          #will call 'Song.new_by_filename(some_filename)' in #import
    self.files.each  {|filename| Song.new_by_filename(filename)}
     #that then sends us to Song.new_by_filename

  end
end
