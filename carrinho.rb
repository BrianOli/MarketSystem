class Cart
    
    $price = Array.new    
    $name = Array.new

    def add(name, price)

        $name.push(name)
        $price.push(price)

        puts "#{$name}"

        
        puts "Produto adicionado :D"
        
        sleep 1
        system('cls')
        
    end

    def remove(item)
        index = $name.index(item)
        
        $name.delete_at(index)
        $price.delete_at(index)
        puts "Produto removido com sucesso :D" 
           

    end

    def list
        x = 0
        while x < $name.size()
            puts "#{x+1} - Nome: #{$name[x]}, valor: #{$price[x]}"
            x += 1
        end
    end
end
