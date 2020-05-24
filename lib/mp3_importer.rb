class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries("#{self.path}").reject {|f| f == "." || f == ".."}
    # I imagine I could refactor this with regex pattern match
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename("#{filename}")
    end
  end
end
