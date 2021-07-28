class Pirate < ActiveRecord::Base 
    has_many :ships
    attr_reader :name, :weight, :height

    @@all = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end