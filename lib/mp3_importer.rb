# mp3_importer.rb

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end


  def files
    @files = []
    Dir.entries(self.path).each do |file|
      if file.include?(".mp3")
      @files << File.basename(file)
    end
    end
    @files
  end

  #this passed the test too
  #def files
  #  files = []
  #  Dir.new(self.path).each do |file|
  #    if file.include?(".mp3")
  #    files << file
  #    end
  #  files
  #end

  def import
    self.files.each  {|filename| Song.new_by_filename(filename)}
  end
end
