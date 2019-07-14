module Eratos
  def self.prime_numbers_less_than(number)
    raise ArgumentError.new("Argument should be more than 2.") unless number >= 2

    search_numbers = [*2..number]
    prime_numbers = []

    while Math.sqrt(number) > search_numbers[0] do
      candidate_number = search_numbers[0]
      prime_numbers << candidate_number
      search_numbers.delete_if {|number| number % candidate_number == 0 }
    end
    prime_numbers + search_numbers
  end
end

if __FILE__ == $0
  puts Eratos.prime_numbers_less_than(ARGV[0].to_i).to_s.delete("[]")
end
