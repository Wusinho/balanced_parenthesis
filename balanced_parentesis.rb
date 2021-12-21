#1. Es un mensaje vacío
#2. Contiene sólo una o más repeticiones de las letras "a" a la "z", espacio " ", o dos puntos ":"
#3. Comienza por un paréntesis de apertura "(", seguido de un mensaje con paréntesis balanceados, seguido de un paréntesis de cierre ")"
#4. Es un mensaje con paréntesis balanceados seguido de otro mensaje con paréntesis balanceados
#5. Es un emoticón feliz ":)" o uno triste ":("

class Balanceado

  attr_accessor :string
  attr_reader   :faces

  def initialize(string)
    @string = arr.tr('a-zA-Z0-9', '')
    @faces = [':)', ':(']
  end

  def checkString
    test_string = @string
    counter = 0

    loop do

      do_puntos = test_string.index(':)')
      close_par =  test_string.index(')')
      open_par = nil
      test_string
    
      break unless close_par


      counter += 1
      break if counter == 10
    end
  end


  def removefaces
    
  end



end

balanceado = Balanceado.new('((:):):)))')
puts balanceado.arr

# puts balacend_parenthesis('') #balanceado
# puts balacend_parenthesis('hola') #balanceado
# puts balacend_parenthesis('(hola)') #balanceado
# puts balacend_parenthesis('(()')  #desbalanceado
# puts balacend_parenthesis('(:()') #balanceado
# puts balacend_parenthesis(':):)') #balanceado
# puts balacend_parenthesis(":((" ) #desbalanceado
# puts balacend_parenthesis("a (b (c (d) c) b) a :)") #balanceado
# puts balacend_parenthesis('((:):):)') #balanceado
# puts balacend_parenthesis(':)(:') #balanceado
# puts balacend_parenthesis('(:::(:)')  #desbalanceado
# puts balacend_parenthesis(')))(((') #desbalanceado
# puts balacend_parenthesis(':(:(:())))))') #desbalanceado
# puts balacend_parenthesis('((:):):)))') #balanceado