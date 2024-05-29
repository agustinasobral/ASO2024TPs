EJERCICIO 1)

A) ¿Qué se puede notar con respecto al tiempo de ejecución? ¿Es predecible?

RTA: El tiempo de ejecucion de los codigos no es predecible ya que estos varian levemente en cada ejecucion, ademas, puedo notar que el codigo conhilos, con un tiempo de ejecucion de 4.01 a 4.03 segundos, se ejecuta mas rapido que el codigo sinhilos, cuyo tiempo de ejecucion varia de 5.14 a 5.24 segundos.


B) Comparar con un campañero el tiempo de ejecución. ¿Son iguales?

RTA: Al comparar los tiempo de ejecucion con mi compañero, observamos que en el codigo conhilos, tuvimos el mismo tiempo de ejecucion, que va de 4.01 a 4.03 segundos, mientras que en el codigo sinhilos, los tiempos de ejecucion fueron levemente diferentes, los mios promediando de los 5.14 a 5.24 segundos, y los de el de 5.41 a 5.43 segundos. Los resultados del tiempo de ejecución varia dependiendo de cada computadora, al igual que si se tiene una aplicacion abierta al momento de ejutarlo o no.


C)Ejecutar el archivo suma_rasta.py unas 10 veces, luego descomentar (borrar el #) las líneas 11,12,19 y 20 guardarlo y ejecutarlo otras 10 veces. 
¿Qué pasó? ¿Por qué?

RTA:Lo que pasa al des-comentar el código y hacer que ambos hilos comiencen a ciclar dentro del rango especificado es que, en cierto punto se provocara una race condition, esto ocurre ya que cuando los dos hilos , en este caso, sumador y restador utilizan una misma variable global llamada acumulador, esta, se convierte en una región de zona critica entre ambos hilos. En el rango mostrado en el código, el resultado de estos hilos al ejecutarse es 0, pero tal vez, al ejecutarse mas veces, es posible que ocurra una race condition, lo que haría que el resultado varíe; las race conditions ocurren cuando dos hilos están utilizando un recurso compartido sin ningún tipo de control. En este código por mas que este comentado o no, la race condition ocurre igual.


EJERCICIO 2)

A) [codigocompleto.txt](https://github.com/agustinasobral/ASO2024TPs/files/15315156/codigocompleto.txt)


B) ![DiagramaHamburguesas](https://github.com/agustinasobral/ASO2024TPs/assets/167656580/259217cb-209c-4a70-93e9-51557d766f6c)




