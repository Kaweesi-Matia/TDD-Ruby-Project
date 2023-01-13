require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe 'Factorial' do
    it 'Return 1 for factorial of 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'Return factorial' do
      expect(@solver.factorial(2)).to eq(2)
    end

    it 'Return error for a negative number' do
      expect { @solver.factorial(-1) }.to raise_error(StandardError)
    end
  end

  describe 'Reverse' do
    it 'returns the reverse of a word' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'should return fizzbuzz when number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'Should return fizz  when number is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'should return Buzz if number is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'should return number if number is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
