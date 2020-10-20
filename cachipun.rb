print "Juguemos Piedra, Papel o Tijera!\n"
valid = false
terminate = ""
while valid = false do
    print " Jugador1 elige tu opción\n
            Digita  1 para Piedra,\n
                    2 para Papel,\n
                    3 para Tijera o\n
                    4 para terminar el juego\n"
    user1 = gets.to_i

    if user1 != 1 || user1 != 2 || user1 != 3 || user1 != 4
        print "Debes ingresar una opción válida"
    elsif user1 == 4
        while terminate != "s" || terminate != "n"
            print "Realmente quieres terminar el juego?
                Ingresa S para confirmar o N para continuar jugando"
            terminate = gets.to_s
            if terminate != "s" || terminate != "n"
                print "Debes ingresar una opción válida"
            elsif terminate == "s"
                break
            else terminate == "n"
                terminate = ""
            end
    else   
        valid = true
    end
end
valid = false
while valid = false do
    print "Jugador2 elige tu opción \n
        Digita  1 para Piedra,\n
                2 para Papel,\n
                3 para Tijera o\n
                4 para terminar el juego\n"
    user2 = gets.to_i
    if user2 != 1 || user2 != 2 || user2 != 3 || user2 != 4
        print "Debes ingresar una opción válida"
    elsif user2 == 4
        while terminate != "s" || terminate != "n"
            print "Realmente quieres terminar el juego?
                Ingresa S para confirmar o N para continuar jugando"
            terminate = gets.to_s
            if terminate != "s" || terminate != "n"
                print "Debes ingresar una opción válida"
            elsif terminate == "s"
                break
            else terminate == "n"
                terminate = ""
            end
    else   
        valid = true
    end
end

cpu = 'piedra' if cpu == 0
cpu = 'papel' if cpu == 1
cpu = 'tijera' if cpu == 2

if usuario != 'piedra' && usuario != 'papel' && usuario != 'tijera'
    puts "Argumento inválido: Debe ser piedra, papel o tijera."
elsif usuario == cpu
    puts "Ambos hicieron #{usuario}. Es un empate!"
elsif usuario == 'piedra' && cpu == 'tijera' || usuario == 'papel' && cpu == 'piedra' || usuario == 'tijera' && cpu == 'papel'
    puts "Hiciste #{usuario} y la CPU hizo #{cpu}. Ganaste!!!"
else usuario == 'papel' && cpu == 'tijera' || usuario == 'tijera' && cpu == 'piedra' || usuario == 'piedra' && cpu == 'papel'
    puts "Hiciste #{usuario} y la CPU hizo #{cpu}. Perdiste."
end