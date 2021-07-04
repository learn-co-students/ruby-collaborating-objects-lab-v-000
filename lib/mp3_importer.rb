
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir::entries(path).grep(/\.mp3/)
    # Dir::entries... yeah, I have no idea what this really is or does..
    # .grep uses RegEx patterns to find matches
  end

  def import
    grabbed_files = self.files
    grabbed_files.each { |individual_file| Song.new_by_filename(individual_file) }
    # use above #files method to gather files, one at a time, shove into Song class to handle
  end

end #<----class end
