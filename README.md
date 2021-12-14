# Balanced Parentesis

¿No te pasa que te duelen los ojos cuando ves un mensaje con paréntesis desbalanceados? A nosotros los programadores, puede llegar a causarnos un dolor de cabeza ver un whatsapp como "gracias por eso :)))", "me encantaría ir (pero no creo que pueda :(", o "estoy trabajando (en lo que me pediste (pero no terminaré hoy:()".
Para peor, con los emoticones, se hace difícil saber si un mensaje tiene los paréntesis balanceados.

Un mensaje tiene los paréntesis balanceados cuando cumple una de las siguientes reglas:

1. Es un mensaje vacío
2. Contiene sólo una o más repeticiones de las letras "a" a la "z", espacio " ", o dos puntos ":"
3. Comienza por un paréntesis de apertura "(", seguido de un mensaje con paréntesis balanceados, seguido de un paréntesis de cierre ")"
4. Es un mensaje con paréntesis balanceados seguido de otro mensaje con paréntesis balanceados
5. Es un emoticón feliz ":)" o uno triste ":("

Crea un programa que identifique _si existe al menos una forma_ de interpretar la entrada como un mensaje de paréntesis balanceados. La entrada es un string y la salida debe ser "balanceado" o "desbalanceado"

Ejemplos:
a. "hola" -> balanceado
b. "(hola)" -> balanceado
c. "(()" -> desbalanceado
d. "(:)" -> balanceado (ej, si consideramos el mensaje como un ":" [regla 2] entre paréntesis [regla 3])
e. "no voy (:()" -> balanceado (ej, si consideramos un emoticón triste [regla 5] entre paréntesis [regla 3])
f. "hoy pm: fiesta :):)" -> balanceado
g. ":((" -> desbalanceado
h. "a (b (c (d) c) b) a :)" -> balanceado (ej, si el último paréntesis es en realidad un emoticón)

Una vez que tengas el desafío listo, mándame un link a un repo con el código y sube el programa a alguna plataforma (Heroku, AWS, GCP o similar) para revisarlo funcionando. Te pido que por favor no menciones a AgendaPro en el código, puesto que hay otros candidatos haciendo el mismo challenge.

Saludos y quedo atento!
