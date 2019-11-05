require 'pry'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Song
  attr_accessor :name
  attr_reader :artist
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
