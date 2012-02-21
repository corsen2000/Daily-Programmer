=begin
create a program that will allow you to enter events in a schedule format. There must be menu options of some form, 
and you must be able to easily edit, add, and delete events without directly changing the source code.

(note that by menu i dont necessarily mean gui. as long as you can easily access the different options 
and receive prompts and instructions telling you how to use the program, it will probably be fine)
=end

require 'yaml'

class Event
	attr_accessor :title, :description, :start
	def initialize(title, description, start)
		@title = title
		@description = description
		@start = start
	end
	def to_s
		"#{title} :: #{description} :: #{start}"
	end
end

$events = []

def print_welcome
	puts "Welcome to event management, what would you like to do?"
	puts "1: List Events"
	puts "2: Add Event"
	puts "3: Edit Event"
	puts "4: Delete Event"
	puts "5: Save And Exit"
end

def list_events
	$events.each_index do |index|
		puts "#{index} = #{$events[index].to_s}"
	end
end

def add_event
	print "What is the name of the event? : "
	name = gets.chomp
	print "What is the description for this event? : "
	desc = gets.chomp
	print "What is the start date / time of the event? : "
	start = gets.chomp
	$events << Event.new(name, desc, start)
end

def edit_event
	puts "Type the number of the event to edit"
	list_events
	num = gets.to_i
	event = $events[num]
	puts "Type the new name then description then start, enter nothing to keep current"
	new_title = gets.chomp
	new_desc = gets.chomp
	new_start = gets.chomp
	event.title = new_title unless new_title.empty?
	event.description = new_desc unless new_desc.empty?
	event.start = new_start unless new_start.empty?
end

def save_and_exit
	File.open("intermediate_1.mydb", "w") do |file|
		file.write YAML::dump($events)
	end
end

def delete_event
	puts "Type the number of the event to delete"
	list_events
	num = gets.to_i
	$events.delete_at num
end

$events = YAML::load(File.open("intermediate_1.mydb", "a+b").read) || []

flag = 0
while flag != 5
	print_welcome
	flag = gets.to_i
	case flag
	when 1
		list_events
	when 2
		add_event
	when 3
		edit_event
	when 4
		delete_event
	end
end
save_and_exit