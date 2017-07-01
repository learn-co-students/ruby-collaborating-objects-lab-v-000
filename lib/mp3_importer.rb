require "pry"

class MP3Importer

  attr_accessor :path, :files

  def initialize(filename)

    @path = filename

  end

  def files

    files = Dir["#{self.path}/*.mp3"]

    self.files = files.map { |file| file.sub("#{self.path}/", '') }

  end

  def import

    self.files.each do |song|

      Song.new_by_filename(song)

    end

  end

end
