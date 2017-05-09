require 'pry'
class MP3Importer
	attr_accessor :path, :files

	def initialize(path)
		@path = path
		@files = []
		Dir.entries(@path).each { |filename| @files << filename if filename.match(/.mp3/) != nil }
	end

	def import
		@files.each { |filename| Song.new_by_filename(filename) }
	end

end