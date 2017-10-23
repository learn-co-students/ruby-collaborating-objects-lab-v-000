require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").map {|e| e.gsub("#{path}/", "")}
    # or/equals :: if left side is true, don't check the right.
    #Dir.glob -- Dir== directory streams, lists directories and paths and contents
    # glob == not a regex * matches any file, ** matches directories recursively,
  end

  def import
    @files.each{|filename| Song.new_by_filename(filename)}
  end
end
