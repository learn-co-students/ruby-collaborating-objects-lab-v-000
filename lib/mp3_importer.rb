require 'pry'


class MP3Importer
  attr_accessor :files, :importer, :path

  def initialize(file_path)
    @path = Dir[file_path][0]
  end

  def files
    @files = Dir.entries(@path).delete_if {|file| file.length < 3}
    # @files
    # binding.pry
  end

  def import
    # binding.pry
    Dir.entries(@path).delete_if {|file| file.length < 3}.each do |filename|
      Song.new_by_filename(filename)
    end

  end

end
