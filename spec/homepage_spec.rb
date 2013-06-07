require 'rspec'
require 'capybara'

describe "Homepage" do

  it 'should show the title' do
    homepage = get '/'
    homepage.title.should eq('hello')
  end
end