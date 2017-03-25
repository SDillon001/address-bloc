require_relative '../models/entry'
# #1 is the standard first line of an RSpec test file. We are saying that the file is a spec file and that it tests Entry
RSpec.describe Entry do
		# #2 we use describe to give our test structure. In this case, we're using it to communicate that the specs test the Entry attributes.
		describe "attributes" do
			# RSpec helper methods using let
			let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }
			# #3 we separate our individual tests using the it method. Each it represents a unique test.
			it "responds to name" do
			# #4 each RSpec test ends with one or more expect method, which we use to declare the expectations for the test. If those expectations are met, our test passes, if they are not, it fails.
			expect(entry).to respond_to(:name)
		end
			# tests to read an attributes value e.g 'Ada Lovelace'
			it "reports its name" do
				expect(entry.name).to eq('Ada Lovelace')
			end

			it "responds to phone number" do
				expect(entry).to respond_to(:phone_number)
			end
			# tests to read an attributes value e.g 'Ada Lovelace'
			it "reports its phone_number" do
				expect(entry.phone_number).to eq('010.012.1815')
			end

			it "responds to email" do
				expect(entry).to respond_to(:email)
			end
			# tests to read an attributes value e.g 'Ada Lovelace'
			it "reports its email" do
				expect(entry.email).to eq('augusta.king@lovelace.com')
			end

			# #5 we use a new describe block to separate the to_s test from the initializer tests. The # in front of to_s indicates that it is an instance method.
			describe "#to_s" do
				it "prints an entry as a string" do
					entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
					expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
			   	# #6 we use eq to check that to_s returns a string equal to expected_string
			   	expect(entry.to_s).to eq(expected_string)
			end
		end
	end
end