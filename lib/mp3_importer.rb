class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files#filenames being parsed and collected
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }#method tells the path to the filenames.  Removes th actual path that is attached to filename and collects the filename only.

  end

  def import
    files.each{|f| Song.new_by_filename(f)}#sending song names to Song class
  end
end
