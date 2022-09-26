require 'goto'
require_relative 'mercado.rb'
require_relative 'produto.rb'
require_relative 'carrinho.rb'

frame_start
x = 0
label(:questions) do
    cart = Cart.new
    product = Product.new

    system ("cls")
    puts "Selecione a opção desejada"
    puts "1 - Adicionar item ao carrinho"
    puts "2 - Remover item do carrinho"
    
    if (x != 0)
        puts "3 - Listar itens do carrinho"
    end

    puts "0 - Sair"


    op = gets.chomp.to_i

    case op
    when 1

        system ("cls")
        puts "Informe o nome do produto: "
        product.name = gets.chomp
        puts "Informe o valor do produto: "
        product.price = gets.chomp.to_f

        cart.add(product.name, product.price)
        
    when 2
        system ("cls")
        puts "Informe o nome do produto que deseja excluir: "
        nameP = gets.chomp
        cart.remove(nameP)
    
    when 3
        system ("cls")
        cart.list
        
        sleep 5
        system ("cls")

    else
        system ("cls")
        return
    end
end

label (:goto) do
    x = 1
    goto :questions
end

frame_end