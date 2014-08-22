class SecretNumber
  attr_reader :number

  def initialize
    @number = rand(1..10)
  end
end