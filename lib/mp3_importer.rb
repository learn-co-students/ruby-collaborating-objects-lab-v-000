class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end

end

# Taken from stack overflow:

# @_current_user ||= {SOMETHING}
# This is saying, set @_current_user to {SOMETHING} if it is nil, false, or undefined. Otherwise set it to @_current_user, or in other words, do nothing. An expanded form:

# @_current_user || @_current_user = {SOMETHING}