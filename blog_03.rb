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
end

class Blog_post < Blog

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

	def self.create_new_blog_post

			post = new

			puts "Please enter the TITLE of the blog post"
			post.set_title = gets.chomp
			
			puts "Please enter the AUTHOR of the blog post"
			post.set_author =gets.chomp
			
			puts "Please enter the CONTENT of the blog post"
			post.set_content =gets.chomp

			post.set_publish_date = Time.now
				
			puts "You have just published a blog entry #{post.get_title}, by #{post.get_author}, published on #{post.get_publish_date}."
			
			Blog.enter_new_story(post)
		end
	
end

puts "Do you want to publish a new blog post? Enter y or n."
answer= gets.chomp


while (answer== "y")

			Blog_post.create_new_blog_post

			puts "Do you want to publish a new blog post? Enter y or n."
			answer= gets.chomp.downcase 


	end

Blog.publish_blog
Blog.current_count



