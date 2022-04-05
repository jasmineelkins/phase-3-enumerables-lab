# classes are created with upper CamelCase, and always singular
class VideoGame
    # need to initialize, to be able to pass in info as arguments
    # MUST be called initialize
    # can set up multiple variables at once
    def initialize(name, playtime)
        @name = name
        @playtime = playtime
        @@all_videogames.push(self) 
        # @@all_videogames << self - does the same thing 
    end
    # can add each instance to an array right inside the initializer
    # creates an arry of instances/ array of references in 
    # if self is inside of an instance, self refers to that instance
    # self. makes it into a class method, so self will always be the class

    @@all_videogames = []

    # call .new to call initialize method

    def play
        puts "#{@name} is so cool!"
    end

    # instance variable
    def name=(name)
        # if somebody calls this method (manually for now),
        # this method sets the name of the instance as an attribute
        @name = name.add_method_here
    end

    # to access the set name, need a getter:
    def name
        @name
    end
    # then can call instance.name
end


# create a new instance of a class:
super_mario = VideoGame.new
super_mario.name = "SUPER MARIO"
# super_mario.name => "SUPER MARIO"

