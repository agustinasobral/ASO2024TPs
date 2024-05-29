EJERCICIO 1)

A) ¿Qué se puede notar con respecto al tiempo de ejecución? ¿Es predecible?

RTA: El tiempo de ejecucion de los codigos no es predecible ya que estos varian levemente en cada ejecucion, ademas, puedo notar que el codigo conhilos, con un tiempo de ejecucion de 4.01 a 4.03 segundos, se ejecuta mas rapido que el codigo sinhilos, cuyo tiempo de ejecucion varia de 5.14 a 5.24 segundos.


B) Comparar con un campañero el tiempo de ejecución. ¿Son iguales?

RTA: Al comparar los tiempo de ejecucion con mi compañero, observamos que en el codigo conhilos, tuvimos el mismo tiempo de ejecucion, que va de 4.01 a 4.03 segundos, mientras que en el codigo sinhilos, los tiempos de ejecucion fueron levemente diferentes, los mios promediando de los 5.14 a 5.24 segundos, y los de el de 5.41 a 5.43 segundos. Los resultados del tiempo de ejecución varia dependiendo de cada computadora, al igual que si se tiene una aplicacion abierta al momento de ejutarlo o no.


C)Ejecutar el archivo suma_rasta.py unas 10 veces, luego descomentar (borrar el #) las líneas 11,12,19 y 20 guardarlo y ejecutarlo otras 10 veces. 
¿Qué pasó? ¿Por qué?

RTA: Lo que pasa al descomentar el codigo y ejecutarlo es que, los hilos sumador y restador al compartir una misma variable global y comenzar a ciclar al mismo momento, entran en una zona critica, y puede producirse una race condition, estas suceden cuando dos hilos estan utilizando un mismo recurso compartido sin ningun tipo de control. En este codigo en especifico, la race condition es inevitable, por mas que el codigo este comentado o no.


EJERCICIO 2)

A) [codigo.funcional.txt](https://github.com/agustinasobral/ASO2024TPs/files/15478530/codigo.funcional.txt)



B) ![DiagramaHamburguesas](https://github.com/agustinasobral/ASO2024TPs/assets/167656580/259217cb-209c-4a70-93e9-51557d766f6c)




