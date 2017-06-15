class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # OK so I couldn't figure this out for shit and had to look at the solution on GitHub...
    # After you're done solving the rest of the tests...go ahead & break this one to see how it
    # works exactly.
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
#   Dir.entries("./db/mp3s") #=> This will show you a list of files in the directory
    files.each{|x| Song.new_by_filename(x)}

  end
end
