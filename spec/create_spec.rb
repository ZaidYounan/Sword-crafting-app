require "./parts"

RSpec.describe "Test that the Weapon class variables respond" do 
    subject { Weapon.new(@weapon_name, @grip, @guard, @blade) }

    it "Should respond to..." do 
        expect(subject).to respond_to :weapon_name
        expect(subject).to respond_to :grip
        expect(subject).to respond_to :guard
        expect(subject).to respond_to :blade
    end
end

RSpec.describe do
    describe "Tests that weapon_name will store input values" do
      it 'returns sword as input' do
        allow($stdin).to receive(:gets).and_return('sword')
        @weapon_name = $stdin.gets.chomp.downcase.strip
  
        expect(@weapon_name).to eq('sword')
      end
    end
end