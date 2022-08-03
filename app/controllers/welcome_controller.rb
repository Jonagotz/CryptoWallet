class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails"
    @meu_nome = "Jonathan"
    @curso = "Rails"
  end

  
end
