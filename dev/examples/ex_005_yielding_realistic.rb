# not too clear of an example, but it shows how to use yield in a more realistic scenario

def with_logging(action_name)
	puts "[START] #{action_name}"
	result = yield
	puts "[END] #{action_name}"
	result
	puts "we saved #{result}"
end

with_logging("user signup") do
	puts "Creating user..."
	sleep(1) # Simulate a long-running operation
	puts "User created successfully."
	"User ID: 12345"
end
