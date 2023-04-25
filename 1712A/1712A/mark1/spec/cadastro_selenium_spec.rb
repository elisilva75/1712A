
require 'selenium-webdriver'

describe('Cadastro com Selenium') do


  before do
    @driver = Selenium::WebDriver.for :firefox

    @driver.navigate.to 'http://localhost:8080/'

    expect(@driver.title).to eql 'Mark1'
  end

  it('deve fazer um cadastro com sucesso') do
    nome = @driver.find_element(id: 'nome')
    nome.send_keys 'Fernando'

    email = @driver.find_element(id: 'email')
    email.send_keys 'eu@papito.io'

    senha = @driver.find_element(id: 'senha')
    senha.send_keys '123456'

    enviar = @driver.find_element(css: 'button[type=submit]')
    enviar.click

    mensagem = @driver.find_element(css: 'h4')
    expect(mensagem.text).to eql 'Tudo ok.'
  end

  it('quando não preenche o campo email') do
    # ?????
  end

  # Hooks
  after(:each) do
    @driver.quit
  end
end
