# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

def connect_to_reddit
	stories = []

	reddit_json = JSON.load RestClient.get('http://reddit.com/.json')
	reddit_top_level_data = reddit_json["data"]
	reddit_stories = reddit_json["data"]["children"]

	reddit_stories.each do |story|
		title = story["data"]["title"]
		category = story["data"]["subreddit"]
		upvotes = story["data"]["ups"]
		
		if category.downcase.include? 'cat'
			upvotes = upvotes * 5
		elsif category.downcase.include? 'bacon'
			upvotes = upvotes * 8
		elsif category.downcase.include? 'food'
			upvotes = upvotes * 3
		end

		stories << {
			title: title,
			category: category,
			upvotes: upvotes
		}

		end

	stories.each do |unique_story|
		puts "Story: #{unique_story[:title]}"
		puts "Category: #{unique_story[:category]}"
		puts "Upvotes: #{unique_story[:upvotes]}"
		puts
	end

end

connect_to_reddit


# def show_message(message)
#  puts message
# end

# def get_input
#  gets.chomp
# end

# def show_new_story_notification(story)
#  show_message("New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}")
# end



# def show_all_stories(stories)
#  stories.each do |story|
#    show_message "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
#  end
# end

# stories = []

# show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
# answer = "y"

# while answer == "y"
#  story = {}

#  show_message("Please enter a News story:")
#  story[:title] = get_input

#  show_message("Please give it a category:")
#  story[:category] = get_input

#  calculate_upvotes(story)

#  stories << story
#  show_new_story_notification(story)

#  show_message("Would you like to add another story? Enter 'y' or 'n'")
#  answer = get_input.strip.downcase
# end

# show_all_stories stories

