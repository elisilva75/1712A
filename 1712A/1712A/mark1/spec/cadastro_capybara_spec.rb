



describe('Cadastro com Capybara') do


  before(:each) do
    visit 'http://localhost:8080/'

    expect(page.title).to eql 'Mark1'
  end

  it('deve fazer um cadastro com sucesso') do
    fill_in 'nome', with: 'Fernando'
    fill_in 'email', with: 'eu@papito.io'
    fill_in 'senha', with: '123456'
    click_button 'Enviar meus dados'

    expect(page).to have_content 'Tudo ok.'
  end

end
