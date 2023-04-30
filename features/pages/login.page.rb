class LoginPage < SitePrism::Page
    
    element :useremail, '#inlineUserEmail'
    element :userpass, '#inlineUserPassword'

    #set your credentials
    $email = '<your email>'
    $password = '<your password>'

    def login
        useremail.set($email)
        click_button 'Entrar com e-mail'
        userpass.set($password)
        find('button[name="submit"]').click
    end
end