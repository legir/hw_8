equire_relative '../ev_test'

describe EvTest   do
  let(:ev_test) do
    EvTest.new
  end

    it "Должен принять 2 цифры" do
      expect(ev_test.test_id('23')).to eq(0)
  end

    it 'Не должен принимать букву и цифру' do
      expect(ev_test.test_id('2a')).to eq(nil)
  end
end