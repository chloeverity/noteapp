require 'notepad'

describe Notepad do
	it 'adds a note and lists it out' do
		notepad = Notepad.new
		notepad.add("Horse notes", "I love horses")
		expect(notepad.list).to eq "Horse notes"
	end

  it 'adds two notes and lists them out' do
    notepad = Notepad.new
    notepad.add("Cat notes", "I love cats")
    notepad.add("Horse notes", "I love horses")
    expect(notepad.list).to eq "Cat notes\nHorse notes"
  end

  it 'alowes user to pick and see title and boby of notes' do
    notepad = Notepad.new
    notepad.add("Cat notes", "I love cats")
    notepad.add("Horse notes", "I love horses")
    notepad.list
    expect(notepad.pick(0)).to eq "Cat notes: I love cats"
  end
end
