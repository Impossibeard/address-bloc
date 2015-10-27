require_relative '../models/entry'

# #1
RSpec.describe Entry do
    # #2
    describe "attributes" do
        # #3
        it "should respond to name" do
            entry = Entry.new("Jenny Love", "321.867.5309", "jenny.love@gmail.com")
            # #4
            expect(entry).to respond_to(:name)
        end
        
        it "should respond to phone number" do
            entry = Entry.new("Jenny Love", "321.867.5309", "jenny.love@gmail.com")
            expect(entry).to respond_to(:phone_number)
        end
        
        it "should respond to email" do
            entry = Entry.new("Jenny Love", "321.867.5309", "jenny.love@gmail.com")
            expect(entry).to respond_to(:email)
        end
    end

    # #5
    describe "#to_s" do
        it "prints an entry as a string" do
            entry = Entry.new("Jenny Love", "321.867.5309", "jenny.love@gmail.com")
            expected_string = "Name: Jenny Love\nPhone Number: 321.867.5309\nEmail: jenny.love@gmail.com"
            # #6
            expect(entry.to_s). to eq(expected_string)
        end
    end
end

                              
#1 Here is the standard first line of an RSpec test file. We are saying that the file is a spec file and that it tests Entry.

#2 Here we use context to give our test structure and communicate that all specs inside it belong to the same context. In this case, we're using it to communicate that the specs in the context will test Entry attributes.

#3 Here we separate our individual tests using the it method. Each it represents a unique test.
                              
#4 each RSpec test ends with one or more expect method, which we use to declare the expectations for the test. If those expectations are met, our test passes, if they are not, it fails.

#5 Here we use a new context to separate the to_s test from the initializer tests. The # in front of to_s indicates that it is an instance method.

#6 Here we use eq to check that to_s returns a string equal to expected_string.