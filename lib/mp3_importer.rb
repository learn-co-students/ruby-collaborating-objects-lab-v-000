require 'pry'

class MP3Importer
  attr_accessor :music_path, :music_files

  def initialize(music_path)
    @music_path = music_path
  end

  def path
    @music_path
  end

  def files
    @music_files = []
    Dir.foreach(@music_path) do |file|
      next if file == '.' or file == '..'
      @music_files << file
    end
    @music_files
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end
end
