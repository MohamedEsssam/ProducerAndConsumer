//
// Created by mohamedessam on 12/9/19.
//

#ifndef THREAD_SEMAPHORES_H
#define THREAD_SEMAPHORES_H

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include </usr/include/semaphore.h>
#include <unistd.h>


typedef struct {
    sem_t empty;
    sem_t full;
    pthread_mutex_t mutex;
    int buffer[5];
    int  inBuffer;
    int outBuffer;
}Memory;

void init();
void *Producer(void *);
void *Consumer(void *);
void run();


#endif //THREAD_SEMAPHORES_H
