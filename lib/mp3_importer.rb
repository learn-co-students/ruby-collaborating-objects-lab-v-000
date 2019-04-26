require 'pathname'


class MP3Importer
  attr_accessor :path, :some_filename

  def initialize(path)
  @path = path
  end

  def files
    File.basename(".mp3")

    # file = Dir.entries("mp3")
    # file = Pathname("mp3")
    # file = Dir.entries("./spec/fixtures/mp3s")
    # file = Pathname("./spec/fixtures/mp3s")
  end

  def import
    Song.new_by_filename(some_filename)
  end

end

# def split_path(path)
#     Pathname(path).each_filename.to_a
# end

# rb_file_s_size - .mp3
