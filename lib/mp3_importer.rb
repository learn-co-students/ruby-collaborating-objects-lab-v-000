require('pry')

class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    # Parses directory of files.
    # Returns array of files.
    Dir[@path + "/*"].collect do |file|
        File.basename(file)
    end
  end

  def import
    filenames = self.files # Gets back array of file names...

    filenames.each do |filename| # Iterate through each filename...
      # Send to new_by_filename
      Song.new_by_filename(filename)
    end
  end

end
