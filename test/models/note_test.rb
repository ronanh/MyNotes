require 'test_helper'

class NoteTest < ActiveSupport::TestCase
	test "read note" do
		note = notes(:one)
		assert_equal note.title, "note1"
		assert_equal note.content, "note1 content"
	end

	test "search note" do
		notes = Note.search("CONTENT")
		assert_equal notes.length, 3

	end

end
