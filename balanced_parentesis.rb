#1. Es un mensaje vacío
#2. Contiene sólo una o más repeticiones de las letras "a" a la "z", espacio " ", o dos puntos ":"
#3. Comienza por un paréntesis de apertura "(", seguido de un mensaje con paréntesis balanceados, seguido de un paréntesis de cierre ")"
#4. Es un mensaje con paréntesis balanceados seguido de otro mensaje con paréntesis balanceados
#5. Es un emoticón feliz ":)" o uno triste ":("

def balacend_parenthesis(string)
  return 'balanceado' if string.empty?
  
  stack = string.tr('a-zA-Z0-9', '').split('').tally

  return 'balanceado' if stack == {}

  stack['('] = 0 if !stack['(']
  stack[')'] = 0 if !stack[')'] 
  
  return 'balanceado' if stack['('] == stack[')']

  diff = stack['('] - stack[')']

  diff = diff.positive? ? diff : diff * -1
  
  return 'balanceado' if  diff == stack[':']
  
  return 'desbalanceado'
end


puts balacend_parenthesis('')
puts balacend_parenthesis('hola')
puts balacend_parenthesis('(hola)')
puts balacend_parenthesis('(()')
puts balacend_parenthesis('(:()')
puts balacend_parenthesis(':):)')
puts balacend_parenthesis(":((" )
puts balacend_parenthesis("a (b (c (d) c) b) a :)")