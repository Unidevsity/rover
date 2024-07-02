require 'rover'

describe Rover do
  describe '#turn_right' do
    context 'when rover is initially turned to N' do
      context 'when turned right once' do
        it 'should be turned to the E' do
          rover = Rover.new
          rover.turn_right
          expect(rover.direction).to eq "E"
        end
      end

      context 'when turned right twice' do
        it 'should be turned to the S' do
          rover = Rover.new
          rover.turn_right
          rover.turn_right
          expect(rover.direction).to eq "S"
        end
      end

      context 'when turned around to the right' do
        it 'should be turned to the N' do
          rover = Rover.new
          4.times { rover.turn_right }
          expect(rover.direction).to eq "N"
        end
      end
    end
  end

  describe '#turn_left' do
    context 'when turning left once' do
      it 'is turned to the W' do
        rover = Rover.new
        rover.turn_left
        expect(rover.direction).to eq "W"
      end
    end
  end

  describe '#move' do
    context 'when initial position' do
      context 'when moved once' do
        it 'changes position correctly' do
          rover = Rover.new
          rover.move
          expect(rover.position).to eq({ x: 0, y: 1})
        end
      end

      context 'when moved twice' do
        it 'changes position correctly' do
          rover = Rover.new
          2.times { rover.move }
          expect(rover.position).to eq({ x: 0, y: 2})
        end
      end

      context 'when moved twice and turned right and moved once' do
        it 'changes position correctly' do
          rover = Rover.new
          rover.move
          rover.move
          rover.turn_right
          rover.move
          expect(rover.position).to eq({ x: 1, y: 2})
        end
      end

      context 'when turned right twice, moved twice, turned left, and moved once' do
        it 'changes position correctly' do
          rover = Rover.new
          rover.turn_right
          rover.turn_right
          rover.move
          rover.move
          rover.turn_left
          rover.move
          expect(rover.position).to eq({ x: 1, y: - 2})
        end
      end
    end
  end
end
