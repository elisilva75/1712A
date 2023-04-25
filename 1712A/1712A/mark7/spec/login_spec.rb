
require_relative 'pages/login_page'
require_relative 'pages/tasks_page'

describe('Login') do
  before(:all) do
    @login = LoginPage.new
    @tasks = TasksPage.new
  end
  describe('com sucesso') do
    it('login com sucesso') do
      @login.load
      @login.faz_login('fernando@papito.io', '123456')

      @tasks.wait_for_page_title
      expect(@tasks.page_title.text).to eql 'Tasks'
    end

    after do
      click_link 'fernando@papito.io'
      sleep(2)
      click_link 'Logout'
    end
  end

  describe('tentativa de login') do
    it('quando o usuário iforma senha inválida') do
      @login.load
      @login.faz_login('fernando@papito.io', 'abc123')

      sleep(1)

      toast = find('.toast .toast-message')
      expect(toast.text).to eql 'Incorrect password'
    end

    it('quando o usuário email não cadastrado') do
      @login.load
      @login.faz_login('padrekevedo@noekziste.org', 'abc123')

      sleep(1)

      toast = find('.toast .toast-message')
      expect(toast.text).to eql 'User not found'
    end
    it('quando o email é incorreto') do
      @login.load
      @login.faz_login('fernando&papito.io', 'abc123')

      sleep(1)

      toast = find('.toast .toast-message')
      expect(toast.text).to eql 'Please enter your e-mail address.'
    end
  end
end
