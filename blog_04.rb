class Blog 
	@@blog_counter =0
	@@blog_array=[]
	@@blog_name="Blog"

	def initialize 
		@@blog_counter+=1
	end

	def self.set_name_of_the_blog= (name_of_blog)
		@@blog_name= name_of_blog
	end

	def self.get_name_of_blog
		return @@blog_name
	end

	def self.current_count
		puts "There are #{@@blog_counter} enteries in this blog"
	end

	def self.enter_new_story(blog_post)
		@@blog_array.push(blog_post)
	end

	def self.publish_blog
		puts "#{self.get_name_of_blog}'s Blog"
		@@blog_array.each do |content|
			puts "********************************"
			puts "Title #{content.get_title}"
			puts "Date Published #{content.get_publish_date}"
			puts "Author: #{content.get_author}"
			puts "#{content.get_content}"
		end 

	end
	
	def self.list_blog_titles
		counter=0
		while counter<@@blog_array.length do
			puts "#{counter} ) #{@@blog_array[counter].get_title}"
			counter = counter + 1
		end
	end

	def self.delete_blog_post
		puts "Which blog post do you want to delete? Select number"
		self.list_blog_titles
		post_to_delete = gets.chomp
		puts"#{@@blog_array[post_to_delete.to_i].get_title} will be deleted"
		@@blog_array.delete(@@blog_array[post_to_delete.to_i])
	end

	def self.select_blogpost_to_read 
		puts"Which blog post do you want to read? Select a number"
		self.list_blog_titles
		post_to_read=gets.chomp
		puts "\n"
		puts "#{@@blog_array[post_to_read.to_i].get_content}"
	end

	def self.menu
		puts "\n"
		puts "What would you like to do? Please enter choice number 1-5"
		puts "1) Write a new blog post"
		puts "2) Delete a blog post"
		puts "3) Publish entire blog"
		puts "4) Show blog titles and select one to read"
		puts "5) EXIT"
		puts "\n"
		entered_choice= gets.chomp

		if (entered_choice == "1")
			Blog_post.create_new_blog_post
			menu
		elsif (entered_choice =="2")
			self.delete_blog_post
			menu
		elsif (entered_choice =="3")
			self.publish_blog
			menu
		elsif (entered_choice =="4")
			self.select_blogpost_to_read
			menu
		elsif (entered_choice == "5")
			puts "Bye for now, see you next time!"
		else puts "Please enter a choice between 1-5"
			menu
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

	def get_content
		return @content
	end

	def self.create_new_blog_post

			post = new

			puts "Please enter the TITLE of the blog post"
			post.set_title = gets.chomp
			
			puts "Please enter the AUTHOR of the blog post"
			post.set_author =gets.chomp
			
			puts "Please enter the CONTENT of the blog post"
			post.set_content =gets.chomp

			post.set_publish_date = "#{Time.now.month} #{Time.now.day}, #{Time.now.year}"
				
			puts "You have just published a blog entry #{post.get_title}, by #{post.get_author}, published on #{post.get_publish_date}."
			
			Blog.enter_new_story(post)
		end
	
end

puts "What is the name of your entire blog?"
name_of_blog_entered= gets.chomp
puts "#{name_of_blog_entered} is a great name! \n"
Blog.set_name_of_the_blog= name_of_blog_entered

puts"\n"
Blog.menu




