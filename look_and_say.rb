class LookAndSay
  def initialize(start = 1)
    @sequence = start.to_s
  end

  def get
    curr_val = @sequence
    @sequence = calc_sequence
    curr_val.to_i
  end

  private

  def calc_sequence
    @sequence.to_s.split('').each_with_object(Array.new(0)) do |el, acc|
      acc.last && el == acc.last[:num] ? acc.last[:cnt] += 1 : acc << { num: el, cnt: 1 }
    end
    .map { |el| "#{el[:cnt]}#{el[:num]}" }
    .join('')
  end
end
