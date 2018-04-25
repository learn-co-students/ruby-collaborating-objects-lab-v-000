class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    regulated = []
    files = Dir["#{@path}/*"]
    files.each { |file|
      regulated << file.match(/[^\/]+\z/).to_s if File.extname(file) == ".mp3"
    }
    regulated
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename) }
    binding.pry
  end
end
