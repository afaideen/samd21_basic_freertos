/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app3.c

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

#include "app3.h"

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
    This structure should be initialized by the APP3_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP3_DATA app3Data;
static SemaphoreHandle_t dataRxSemaphore;
extern SemaphoreHandle_t uartMutexLock;
// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void uartReadEventHandler(SERCOM_USART_EVENT event, uintptr_t context )
{
    if (event == SERCOM_USART_EVENT_READ_THRESHOLD_REACHED)
    {
        BaseType_t xHigherPriorityTaskWoken;

        /* Unblock the task by releasing the semaphore. */
        xSemaphoreGiveFromISR( dataRxSemaphore, &xHigherPriorityTaskWoken );

        /* If xHigherPriorityTaskWoken was set to true you
        we should yield */

        portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
    }
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
    void APP3_Initialize ( void )

  Remarks:
    See prototype in app3.h.
 */

void APP3_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app3Data.state = APP3_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP3_Tasks ( void )

  Remarks:
    See prototype in app3.h.
 */

void APP3_Tasks ( void )
{
    uint8_t readByte;
    bool status = false;
    TickType_t timeNow;

    SERCOM5_USART_ReadCallbackRegister(uartReadEventHandler, 0);
    SERCOM5_USART_ReadThresholdSet(1);
    SERCOM5_USART_ReadNotificationEnable(true, false);

    dataRxSemaphore = xSemaphoreCreateBinary();

    if (dataRxSemaphore != NULL)
    {
        status = true;
    }

    while (status == true)
    {
        /* Block until a character is received on the terminal */
        if( xSemaphoreTake( dataRxSemaphore, portMAX_DELAY ) == pdTRUE )
        {
            /* Task3 is running (<-) now */
            xSemaphoreTake(uartMutexLock, portMAX_DELAY);
            SERCOM5_USART_Write((uint8_t*)"                      Tsk3-P3 <-\r\n", 34);
            xSemaphoreGive(uartMutexLock);

            /* Toggle an LED if character received is 'L' or 'l' */
            while (SERCOM5_USART_Read(&readByte, 1) == true)
            {
                if (readByte == 'L' || readByte == 'l')
                {
//                    LED_Toggle();
                    LED_CON_GPIO_PA20_Toggle();
                }
            }

            /* Work done by task3 for 50 ticks */
            timeNow = xTaskGetTickCount();
            while ((xTaskGetTickCount() - timeNow) < 50);

            /* Task3 is exiting (->) now */
            xSemaphoreTake(uartMutexLock, portMAX_DELAY);
            SERCOM5_USART_Write((uint8_t*)"                      Tsk3-P3 ->\r\n", 34);
            xSemaphoreGive(uartMutexLock);
        }
    }

    
}


/*******************************************************************************
 End of File
 */
