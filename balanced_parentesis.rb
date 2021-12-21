#1. Es un mensaje vacío
#2. Contiene sólo una o más repeticiones de las letras "a" a la "z", espacio " ", o dos puntos ":"
#3. Comienza por un paréntesis de apertura "(", seguido de un mensaje con paréntesis balanceados, seguido de un paréntesis de cierre ")"
#4. Es un mensaje con paréntesis balanceados seguido de otro mensaje con paréntesis balanceados
#5. Es un emoticón feliz ":)" o uno triste ":("

def balacend_parenthesis(string)

  arr =  string.tr('a-zA-Z0-9', '')
  arr2 = string.tr('a-zA-Z0-9', '')
  return 'balanceado' if arr == ''
  counter = 0
  faces = [':)', ':(']
  
  no_faces = removeFace(arr)

  answer1 = checkString(no_faces)
  answer2 = checkString(arr2)
  
  check_asnwer(answer1, answer2)

end

def checkString(str)
  loop do
    close_par =  str.index(')')
    dos_puntos = nil

    open_par = nil

    return str unless close_par

    (0..close_par-1).reverse_each do |i|
      if str[i] == '('
        open_par = i
        break
      end
    end

    return str if open_par == nil
    
    str.slice!(open_par.to_i..close_par)
    str.strip!

    return str if str.empty? 
  end
end

def removeFace(str)
  while str.index(':(') || str.index(':)')
    index1 = str.index(':(')
    index2 = str.index(':)')

    str.slice!(index1..index1+1) if index1
    str.slice!(index2..index2+1) if index2
  end
  str
end

def check_asnwer(arr1,arr2)
  ans1 = removeFace(arr1)
  ans2 = removeFace(arr2)
  return 'balanceado' if ans1.empty? || ans2.empty?
  return 'desbalanceado'
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
puts balacend_parenthesis('((:):):)))')