//
// Created by mohamedessam on 12/9/19.
//

#include "semaphores.h"
#define bufferSize 5
#define NoOfItemInMemory      5/* number of items produced/consumed */
#define NoOfProducerAndConsumer          3 /*number of threads that will work on task*/

Memory memory;

void init(){
    //init semaphores
    sem_init(&memory.full,0,0);
    sem_init(&memory.empty,0,bufferSize);
    //init mutex
    pthread_mutex_init(&memory.mutex,NULL);
 // intialize buffer index
    memory.inBuffer=0;
    memory.outBuffer=0;
}

void *Producer(void *arg)
{
    int  item;
    int index = (int)arg;
    for (int i=0; i < NoOfItemInMemory; i++)
    {
        item = i;
        /* If there are no empty slots, wait */
        sem_wait(&memory.empty);
        /* If another thread uses the buffer, wait */
        pthread_mutex_lock(&memory.mutex);
        memory.buffer[memory.inBuffer] = item;
        memory.inBuffer = (memory.inBuffer+1)%bufferSize;
        printf("Producer Thread[%d] received message %d ...\n", index, item);
        sleep(1);
        if (i !=NoOfItemInMemory-1){printf(" wait to receive message %d ...\n", item+1);sleep(1);}
        if (i==NoOfItemInMemory-1)printf("memory is full\n");
        /* Release the buffer */
        pthread_mutex_unlock(&memory.mutex);
        /* Increment the number of full slots */
        sem_post(&memory.full);

         sleep(1);
    }
    return NULL;
}


void *Consumer(void *arg)
{
    int item ;
    int index = (int)arg;
    for (int i=NoOfItemInMemory; i > 0; i--) {
        sem_wait(&memory.full);
        pthread_mutex_lock(&memory.mutex);
        item=memory.buffer[memory.outBuffer];
        memory.outBuffer = (memory.outBuffer+1)%bufferSize;
        printf("Consumer Thread[%d] removed message %d \n", index, item);
        /* Release the buffer */
        pthread_mutex_unlock(&memory.mutex);
        /* Increment the number of full slots */
        sem_post(&memory.empty);

         sleep(1);
    }
    return NULL;
}

void run(){
    init();
    pthread_t producerThread, ConsumerThread;
    /* Create a new producer */
    for (int index = 0; index < NoOfProducerAndConsumer; index++)pthread_create(&producerThread, NULL, Producer, (void*)index);
    /*create a new Consumer*/
    for(int index=0; index<NoOfProducerAndConsumer; index++)pthread_create(&ConsumerThread, NULL, Consumer, (void*)index);
    //destroy mutex and semaphore .
    pthread_mutex_destroy(&memory.mutex);
    sem_destroy(&memory.empty);
    sem_destroy(&memory.full);
    pthread_exit(NULL);
}
