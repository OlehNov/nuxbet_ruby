require_relative '../pages/user_cabinet_page'
require_relative '../pages/main_page'


describe 'User cabinet' do

  it 'Open cabinet' do
    MainPage.new('rf35+/-g', 'gamer@mail.com').authorization
    User_cabinet.new.open_user_cabinet
  end

end
