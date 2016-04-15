require_relative 'solution'


describe Name do
  let(:name_1) { Name.new("bob") }
  let(:name_2) { Name.new("eunice")}

  it 'should be reversable' do
    expect(name_1.reversed_name).to eq("bob")
  end

  describe '#palindrome' do
    it 'should return false if not a palindrome' do
      expect(name_1.is_palindrome?).to eq(true)
    end

    it 'should return true if is a palindrome' do
      expect(name_2.is_palindrome?).to eq(false)
    end
  end
end
