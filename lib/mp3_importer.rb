require 'pry'
class MP3Importer

  attr_accessor :path, :filecollection

  def initialize(path)
    @path = path
    binding.pry 
  end
  
  def files
    #entries method: Returns an array containing all of the filenames in the given directory.
    @filecollection ||= Dir.entries(@path).select {|filename| !File.directory?(song) && song.end_with?(".mp3")} 
    #directory is another name for a folder, and we're not looking for folders, only file names, and specifically file names that end with .mp3
  end

  def import
    filecollection.each {|song| Song.new_by_filename(song)}    #We're creating new instances of the Song class 
    # files.each {|song| Song.new_by_filename(song)}
  end

end

# Taken from stack overflow:

# @_current_user ||= {SOMETHING}
# This is saying, set @_current_user to {SOMETHING} if it is nil, false, or undefined. Otherwise set it to @_current_user, or in other words, do nothing. An expanded form:

# @_current_user || @_current_user = {SOMETHING}