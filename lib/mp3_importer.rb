require 'pry'

class MP3Importer

attr_accessor :path

def initialize(path) #initialized w/ a path to parse MP3 files from
 @path = path # sets argument to variable
end

def files
#binding.pry
 @files = Dir.glob("#{@path}/*.mp3").collect {|file| file.gsub("#{@path}/", "")}
#setting what we access to @file; accessing the directory and selecting files according to argument;
#argument interpolates the @path to say 'match what path given in argument ending in mp3.' ex: ("#{@path}/*.mp3")
#we then call collect on these matching files and iterate over the new array produced calling each item 'file'
#once we've named these as file we operate on them using .gsub to substitute the @path ex: ("#{@path}/")
#with what we have written in the .gsub argument after the comma ex: (, "")
end

def import
 files.each {|file| Song.new_by_filename(file)} #iterating over each file produced in method above, naming each item array file and
 #producing a new Song object with new_by_filename method; creation information is passed via file argument
end


end
