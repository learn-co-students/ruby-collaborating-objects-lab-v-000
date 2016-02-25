require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path= path
    @files= []

  end

  def files
    @files= []
    Dir.foreach(path) do|track|
      if track =~ (/[.mp3]{4}/)
       @files<< track
      end
    end
    @files
  end

  def import
    @files.map do |file|
      binding.pry
      Song.new_by_filename(file)

    end
  end
# works
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end