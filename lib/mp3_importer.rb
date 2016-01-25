require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(@path)
    @files = @files.map{|entry| entry.scan(/.*\.mp3/)}.reject!(&:empty?).flatten
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
