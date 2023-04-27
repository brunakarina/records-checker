require 'date'
class Validator
  attr_accessor :user
  def initialize(data)
    @user = data
  end

  def data_checker
    (@user[:nome_completo].split(" ").size > 1 &&
    @user[:nome_completo].count("0-9") == 0 &&
    Date.today - Date.strptime(@user[:aniversario] , "%m/%d/%Y") > 13 ) ? "Valido" : "Inválido"
  end
end
