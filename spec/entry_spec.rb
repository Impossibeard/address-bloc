require_relative '../models/entry'


RSpec.describe Entry do

    describe "attributes" do

        it "should respond to name" do
            entry = Entry.new("Jenny Love", "321.867.5309", "jenny.love@gmail.com")

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


    describe "#to_s" do
        it "prints an entry as a string" do
            entry = Entry.new("Jenny Love", "321.867.5309", "jenny.love@gmail.com")
            expected_string = "Name: Jenny Love\nPhone Number: 321.867.5309\nEmail: jenny.love@gmail.com"

            expect(entry.to_s). to eq(expected_string)
        end
    end
end
