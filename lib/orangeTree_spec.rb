require_relative '../lib/orangeTree
'describe orangeTree do 
  let(:obj) { orangeTree.new } 
 end
describe oranges do 
  it 'has a(n) oranges' do 
    expect(:obj.oranges).to be_kind_of(oranges.class) 
  end 
 end
describe age do 
  it 'has a(n) age' do 
    expect(:obj.age).to be_kind_of(age.class) 
  end 
 end
describe height do 
  it 'has a(n) height' do 
    expect(:obj.height).to be_kind_of(height.class) 
  end 
 end
end