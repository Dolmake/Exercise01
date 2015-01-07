#Exercise 01

Un pequeño ejercicio para repasar la sintaxis de **Objective C** y estar listos para la vuelta al cole.

Teneis que crear una jerarquía de clases:

Clases:*StarWarsCharacter*, *Jedi*, *LightSaber*
Jedi hereda de StarWarsCharacter. Tanto StarWarsCharacter como LightSaber heredan de NSObject.

Teneis que usar vuestro prefijo (yo lo pondré sin él).
Clase LightSaber

    Propiedades: color, de tipo NSColor (mirad esa clase en la documentación). No usaremos UIColor ya que ésta es de UIKit y aun no sabemos hacer Apps para iOS, así que el ejercicio será una App de linea de comandos para OSX.

    Inicializadores: un designado que acepta valores RGB (mirad la documentación de NSColor) y crea el NSColor apropiado.

4 inicializadores de conveniencia para crear un sable blue, red, green y purple.

Cread también los métodos factory de clase correspondientes.

Crea un par de sables laser de colores diferentes e implementa description e isEqual: para comparar sables laser (solo serán iguales si sus colores lo son ¿cómo lo harías?).
Clase StarWarsCharacter

    Propiedades: name de tipo NSString
    Inicializadores: designado y métodos factory.

Implementa description e isEqual:. Crea dos personajes (Jabba the Hutt y Han Solo) y compáralos. ¿Cuando serán iguales dos personajes).
Clase Jedi

Desciende de StarWarsCharacter.

Propiedades
—————

    midichlorians: un entero con el recuento total de midiclorianos (http://bit.ly/midi-chlorian). El valor por defecto de un Jedi es de 100 midiclorianos y el de un maestro es de 1000. Grandes maestros como Yoda tendrán 10.000.

    lightSaber: de tipo LightSaber (la clase que has creado previamente). Todo Jedi tiene que tener su sable.

    padawanOf: de tipo Jedi. Indica de quien ha sido padawan (http://bit.ly/padawanOf). Puede ser nil si el Jedi en cuestión es autodidacta.

Métodos:
* init designado: initWithName:midichlorians:lightSaber:padawanOf:
* init de conveniencia: initWithName:
Crea un Jedi autodidacta con 100 midichlorianos y un sable azul
* initJediMasterWithName:
Crea un maestro jedi autodidacta con 1000 midiclorianos y sable verde.

    unsheathe: método que devuelve un NSString con el siguiente contenido █||||||(•)█Ξ█████████████████████

Implementa description e isEqual (cunado son iguales dos jedis?).
Crea 4 Jedis con su correcta relación de padawaneo: Qui-Gon Jinn, Obi Wan Kenobi, Yoda y Luke Skywalker.

¡Al tajo!

