#TEDDIT:  Strings - Student's File
#	Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#	This exercise will be used throughout the ruby portion of this course. 
#	Each lesson we will incrementally build a news aggregator. 
#	Lesson 4 we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
#	But until then we will hard code stories.


#This code along demonstrates how to work with strings. 
#Each version below, adds complexity to Teddit. Only run one version at a time so you can see the difference.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
# puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
# puts 'Story: Man raised by wolverines, then eaten. Current upvotes: 4'


#Version 2 - Replace the story title and upvotes with variables.
###########
###########
#story = 'Cat makes fortune by showing elderly how to play dice.'
#upvotes = 7
#puts "Story: " + story + ' Current upvotes: ' + upvotes.to_s


#Version 3 - Add data type casting (fix casting issue).
###########
###########



#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########


#Version 5 - Adding methods
###########
###########

def puts_welcome
	puts 'Welcome to Teddit! A text-based news aggregator.  Get today\'s news tomorrow!'
	puts 'How many upvotes do you want to see?'
end

def headline
	'Cat makes fortune by showing elderly how to play dice.'
end

def upvotes
	gets
end

def story_stats(story, upvotes)
	"Story: #{story.capitalize} \nCurrent Upvotes: \t#{upvotes}"
end

puts_welcome
puts story_stats(headline, upvotes)

