class Notepad

	def initialize
		@titles = []
    @bodies = []
	end

	def add(title, body)
		@titles << title
    @bodies << body
	end

	def list
		@titles.join("\n")
	end

  def pick(integer)
    p "#{@titles[integer]}: #{@bodies[integer]}"
    end
  end
