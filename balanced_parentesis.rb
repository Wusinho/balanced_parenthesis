#1. Es un mensaje vacío
#2. Contiene sólo una o más repeticiones de las letras "a" a la "z", espacio " ", o dos puntos ":"
#3. Comienza por un paréntesis de apertura "(", seguido de un mensaje con paréntesis balanceados, seguido de un paréntesis de cierre ")"
#4. Es un mensaje con paréntesis balanceados seguido de otro mensaje con paréntesis balanceados
#5. Es un emoticón feliz ":)" o uno triste ":("

# class Balanceado

#   attr_accessor :string
#   attr_reader   :faces

#   def initialize(string)
#     @string = string.tr('a-zA-Z0-9', '').split('')
#     @faces = [':)', ':(']
#     @open_par = 0
#     @closed_par = 0
#   end

#   def checkString
#     test_string = @string
    
#     test_string.each do |ele|

#       @open_par += 1 if ele == '('
       
#       break if ele != '('

#     end
#     puts @open_par

#   end


#   def removefaces(str)
#     loop do

#       do_puntos = test_string.index(':)')
#       close_par =  test_string.index(')')
#       open_par = nil
#       test_string
    
#       break unless close_par


#       counter += 1
#       break if counter == 10
#     end
#   end



# end

# balanceado = Balanceado.new('((:):):)))')
# balanceado.checkString


def balacend_parenthesis(string)
  arr = string.tr('a-zA-Z0-9', '').split('')

  counter = 0


  loop do


    







    p counter
    counter +=1 

    break if counter == 10
  end

end




# puts balacend_parenthesis('((:):):)') #balanceado
# puts balacend_parenthesis('((:):):)))') #balanceado

# puts balacend_parenthesis('') #balanceado
# puts balacend_parenthesis('hola') #balanceado
# puts balacend_parenthesis('(hola)') #balanceado
# puts balacend_parenthesis('(()')  #desbalanceado
# puts balacend_parenthesis('(:()') #balanceado
# puts balacend_parenthesis(':):)') #balanceado
# puts balacend_parenthesis(":((" ) #desbalanceado
# puts balacend_parenthesis("a (b (c (d) c) b) a :)") #balanceado
# puts balacend_parenthesis(':)(:') #balanceado
# puts balacend_parenthesis('(:::(:)')  #desbalanceado
# puts balacend_parenthesis(')))(((') #desbalanceado
# puts balacend_parenthesis(':(:(:())))))') #desbalanceado
# puts balacend_parenthesis('((:):):)))') #balanceado