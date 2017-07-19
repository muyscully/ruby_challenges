class Blog 
	@@blog_counter =0
	@@blog_array=[]

	def initialize 
		@@blog_counter+=1
	end

	def self.current_count
		puts "There are #{@@blog_counter} enteries in this blog"
	end

	def self.enter_new_story(blog_post)
		@@blog_array.push(blog_post)
	end

	def self.publish_blog
		@@blog_array.each do |content|
		puts "Title #{content.get_title}"
		end
	end	

	def set_title=(title)
		@title= title
	end

	def get_title
		return @title
	end

	def set_author= (author)
		@author= author
	end

	def get_author
		return @author
	end

	def set_publish_date=(publish_date)
		@publish_date= publish_date
	end

	def get_publish_date
		return @publish_date
	end

	def set_content= (content)
		@content= content
	end
	
end

puts "Do you want to publish a new blog post? Enter y or n."
answer= gets.chomp


while (answer== "y")
	blog_post= Blog.new

		
			puts "Please enter the TITLE of the blog post"
			entered_title= gets.chomp
			
			puts "Please enter the AUTHOR of the blog post"
			entered_author=gets.chomp
			
			puts "Please enter the CONTENT of the blog post"
			entered_content=gets.chomp

			time= Time

			blog_post.set_title = entered_title
			blog_post.set_author = entered_author
			blog_post.set_content = entered_content
			blog_post.set_publish_date = time.now
			
			puts "You have just published a blog entry #{blog_post.get_title}, by #{blog_post.get_author}, published on #{blog_post.get_publish_date}."
			
			Blog.enter_new_story(blog_post)

			puts "Do you want to publish a new blog post? Enter y or n."
			answer= gets.chomp
	end

Blog.publish_blog
Blog.current_count



