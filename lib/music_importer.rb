require 'pry'

class MusicImporter
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    
    Dir.glob("#{@path}/*.mp3").each do |file|
    #Dir.new(@path).each do |item|
    #clean_name = file.gsub("#{@path}", "")
    clean_name = file.gsub("#{@path}/", "")
    @files << clean_name
      #binding.pry
    name = file
    end
  
  
  end
  
end