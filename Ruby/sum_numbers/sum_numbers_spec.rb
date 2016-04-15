require_relative 'solution'


describe Number do
  let(:test_number) { Number.new(12345) }

  it 'should calculate sum of digits' do
    expect(test_number.sum_of_digits).to eq(15)
  end
end