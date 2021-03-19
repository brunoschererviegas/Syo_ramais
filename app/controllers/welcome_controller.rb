class WelcomeController < ApplicationController
  def index
    cookies[:teste] = "Teste de cookies"
    
    @testeteste = Date.today.strftime ("%d/%m/%Y")
  end
end
