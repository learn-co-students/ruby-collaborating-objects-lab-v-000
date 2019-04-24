class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # file = File.dirname("path/mp3")
    # file
    # All files containing "spec" in the name
    Dir.glob(".mp3*")
  end

end



# def find_files_in_current_directory
#   entries = Dir.entries(".")
#   entries.reject { |entry| File.directory?(entry) }
# end
