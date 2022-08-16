/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app4.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app4.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP4_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP4_DATA app4Data;
static SemaphoreHandle_t switchPressSemaphore;
extern SemaphoreHandle_t uartMutexLock;
// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

static void EIC_User_Handler(uintptr_t context)
{
    BaseType_t xHigherPriorityTaskWoken;

    /* Unblock the task by releasing the semaphore. */
    xSemaphoreGiveFromISR( switchPressSemaphore, &xHigherPriorityTaskWoken );

    /* If xHigherPriorityTaskWoken was set to true you
    we should yield */

    portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP4_Initialize ( void )

  Remarks:
    See prototype in app4.h.
 */

void APP4_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app4Data.state = APP4_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP4_Tasks ( void )

  Remarks:
    See prototype in app4.h.
 */

void APP4_Tasks ( void )
{
    bool status = false;
    TickType_t timeNow;    

    switchPressSemaphore = xSemaphoreCreateBinary();

    if (switchPressSemaphore != NULL)
    {
        status = true;
    }
    
    EIC_CallbackRegister(EIC_PIN_0, EIC_User_Handler, 0);

    while (status == true)
    {
        /* Block until user presses the switch */
        if( xSemaphoreTake( switchPressSemaphore, portMAX_DELAY ) == pdTRUE )
        {
            /* Task4 is running (<-) now */
            xSemaphoreTake(uartMutexLock, portMAX_DELAY);
            SERCOM5_USART_Write((uint8_t*)"                                Tsk4-P4 <-\r\n", 44);
            xSemaphoreGive(uartMutexLock);

            /* Work done by task3 for 10 ticks */
            timeNow = xTaskGetTickCount();
            while ((xTaskGetTickCount() - timeNow) < 10);

            /* Task4 is exiting (->) now */
            xSemaphoreTake(uartMutexLock, portMAX_DELAY);
            SERCOM5_USART_Write((uint8_t*)"                                Tsk4-P4 ->\r\n", 44);
            xSemaphoreGive(uartMutexLock);
        }
    }
    
}


/*******************************************************************************
 End of File
 */
