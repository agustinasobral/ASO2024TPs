EJERCICIO 1)

A) ¿Qué se puede notar con respecto al tiempo de ejecución? ¿Es predecible?

RTA: El tiempo de ejecucion de los codigos no es predecible ya que estos varian levemente en cada ejecucion, ademas, puedo notar que el codigo conhilos, con un tiempo de ejecucion de 4.01 a 4.03 segundos, se ejecuta mas rapido que el codigo sinhilos, cuyo tiempo de ejecucion varia de 5.14 a 5.24 segundos.


B) Comparar con un campañero el tiempo de ejecución. ¿Son iguales?

RTA: Al comparar los tiempo de ejecucion con mi compañero, observamos que en el codigo conhilos, tuvimos el mismo tiempo de ejecucion, que va de 4.01 a 4.03 segundos, mientras que en el codigo sinhilos, los tiempos de ejecucion fueron levemente diferentes, los mios promediando de los 5.14 a 5.24 segundos, y los de el de 5.41 a 5.43 segundos.


C)Ejecutar el archivo suma_rasta.py unas 10 veces, luego descomentar (borrar el #) las líneas 11,12,19 y 20 guardarlo y ejecutarlo otras 10 veces. 
¿Qué pasó? ¿Por qué?

RTA: Al descomentar el codigo, a este se le agregan lineas con instrucciones que en este caso, hacen recorren un cierto rango de numeros, produciendo que el tiempo de ejecucion del codigo se incremente. Las primeras 10 ejecuciones del codigo comentado, tuvieron un promedio de 0.14 a 0.30 segundos, mientras que en las 10 ejecuciones del codigo sin comentar el promedio fue de 2.76 a 3.50 segundos.


EJERCICIO 2)

A)

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#define NUMBER_OF_THREADS 2
#define CANTIDAD_INICIAL_HAMBURGUESAS 20
int cantidad_restante_hamburguesas = CANTIDAD_INICIAL_HAMBURGUESAS;
int turno = 0; //LUGAR ADECUADO PRIMERA LINEA

void *comer_hamburguesa(void *tid)
{
	while (1 == 1)
	{ 
		while(turno!=(int)tid); //LUGAR ADECUADO SEGUNDA LINEA
    // INICIO DE LA ZONA CRÍTICA
		if (cantidad_restante_hamburguesas > 0)
		{
			printf("Hola! soy el hilo(comensal) %d , me voy a comer una hamburguesa ! ya que todavia queda/n %d \n", (int) tid, cantidad_restante_hamburguesas);
			cantidad_restante_hamburguesas--; // me como una hamburguesa
		}
		else
		{
			printf("SE TERMINARON LAS HAMBURGUESAS :( \n");

			pthread_exit(NULL); // forzar terminacion del hilo
		}
    // SALIDA DE LA ZONA CRÍTICA   
       turno = (turno + 1)% NUMBER_OF_THREADS; //LUGAR ADECUADO TERCERA LINEA
	}
}

int main(int argc, char *argv[])
{
	pthread_t threads[NUMBER_OF_THREADS];
	int status, i, ret;
	for (int i = 0; i < NUMBER_OF_THREADS; i++)
	{
		printf("Hola!, soy el hilo principal. Estoy creando el hilo %d \n", i);
		status = pthread_create(&threads[i], NULL, comer_hamburguesa, (void *)i);
		if (status != 0)
		{
			printf("Algo salio mal, al crear el hilo recibi el codigo de error %d \n", status);
			exit(-1);
		}
	}

	for (i = 0; i < NUMBER_OF_THREADS; i++)
	{
		void *retval;
		ret = pthread_join(threads[i], &retval); // espero por la terminacion de los hilos que cree
	}
	pthread_exit(NULL); // como los hilos que cree ya terminaron de ejecutarse, termino yo tambien.
}


B) ![DiagramaHamburguesas](https://github.com/agustinasobral/ASO2024TPs/assets/167656580/2052393a-2cf2-4cfd-b704-2f2487580492)


