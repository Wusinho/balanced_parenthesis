#1. Es un mensaje vacío
#2. Contiene sólo una o más repeticiones de las letras "a" a la "z", espacio " ", o dos puntos ":"
#3. Comienza por un paréntesis de apertura "(", seguido de un mensaje con paréntesis balanceados, seguido de un paréntesis de cierre ")"
#4. Es un mensaje con paréntesis balanceados seguido de otro mensaje con paréntesis balanceados
#5. Es un emoticón feliz ":)" o uno triste ":("

def balacend_parenthesis(string)

  arr =  string.tr('a-zA-Z0-9', '')
  
  return 'balanceado' if arr == ''

  counter = 0
  smile = '(:'
  smile2 = ':)'
  sad = ':('
  
  loop do

    close_par =  arr.index(')')
    open_par = nil

    break unless close_par

    (0..close_par-1).reverse_each do |i|
      if arr[i] == '('
        open_par = i
        break
      end
    end

    break if open_par == nil
    
    arr.slice!(open_par.to_i..close_par)
    arr.strip!
    counter += 1

    return 'balanceado' if arr.empty? 
  end
  
  return 'desbalanceado' unless arr.include?(':')

  loop do
    return 'balanceado' if arr.empty? 
    
    if arr[0..1] == smile || arr[0..1] == sad || arr[0..1] == smile2
      arr.slice!(0..1)
    else
      return 'desbalanceado'
    end
  end


end


# puts balacend_parenthesis('')
# puts balacend_parenthesis('hola')
# puts balacend_parenthesis('(hola)')
# puts balacend_parenthesis('(()')
# puts balacend_parenthesis('(:()')
# puts balacend_parenthesis(':):)')
# puts balacend_parenthesis(":((" )
# puts balacend_parenthesis("a (b (c (d) c) b) a :)")
# puts balacend_parenthesis('((:):):)')
# puts balacend_parenthesis(':)(:') #mi prueba
# puts balacend_parenthesis('(:::(:)') #mi prueba
# puts balacend_parenthesis(')))(((')
# puts balacend_parenthesis(':(:(:())))))')
balacend_parenthesis('((:):):)))')