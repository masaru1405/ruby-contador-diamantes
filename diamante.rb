def contadorDeDiamantes(input)
   lista = input.split("") #guarda num array, separando cada elemento
   lista = lista.select{|i| i != '.'} #retira a areia
   
   count = 0
   i = 0

   #print "#{lista} - count: #{count}"

   #Verificação para cada item do array
   while i <= lista.length 
      if lista[i] == '<' and lista[i+1] == '>'
         #Deleta os elementos '<' e '>'. Observe que na segunda chamada do comando 'delete_at(x)', o valor de 'x' não é 'i+1', é simplesmente'i', pois ao executar o primeiro comando 'delete_at', o valor de indice 'i' já não existe, e portanto já houve um 'shift' dos elementos à esquerda de 'i'. Se fizéssemos na segunda chamada de 'delete_at(i+1)', estaríamos pulando o elemento '>' e excluindo somente seu próximo elemento.
         lista.delete_at(i)
         lista.delete_at(i)

         #Se descomentar a linha abaixo, comente os dois comandos acima (lista.delete_at(i)), para não executar mais de duas vezes
         #print "*IF 1 => i: #{i} - i+1: #{i+1} - *DELETE: #{lista.delete_at(i)} , #{lista.delete_at(i)}\n"

         count += 1
         i = 0
         
         #print "*IF 2 => #{lista} - count: #{count} - i: #{i} - length: #{lista.length}\n"
         
      else
         i += 1
         #print "*ELSE => i: #{i} - length: #{lista.length}\n"
      end
   end

   return count
   
end

# teste1 = "<<..>>><>>"
# teste2 = "<<.<<..>><>><.>.<<.>.<.>>>><>><>>"
# teste3 = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
# teste4 = ">><.>><>><>.<<>"
# teste5 = "<<<<>><>>"
# print "#{contadorDeDiamantes(teste3)}\n"

