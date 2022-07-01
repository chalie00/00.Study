/*
 * (C) COPYRIGHT 2009 CRZ
 *
 * File Name : main.c
 * Author    : POOH
 * Version   : V1.0
 * Date      : 08/12/2009
 */

/* includes */

#include "Device.h"

/* functions */

void DebugMsg_FunctionStart(char const * fName_p)
{
#ifdef  DEBUG_MSG_LEVEL0
    printf("%s() S\n", fName_p);
#endif
}

void DebugMsg_FunctionEnd(char const * fName_p)
{
#ifdef  DEBUG_MSG_LEVEL0
    printf("%s() E\n", fName_p);
#endif
}

void DebugMsg_FunctionNotify(char const * fName_p, int lineNum)
{
#ifdef  DEBUG_MSG_LEVEL0
    printf("%s() %d\n", fName_p, lineNum);
#endif
}

void DebugMsg_FunctionError(char const * fName_p, int lineNum)
{
#ifdef  DEBUG_MSG_LEVEL0
    printf("[ERROR] %s() %d\n", fName_p, lineNum);
#endif
}

#ifdef  USE_FULL_ASSERT
/*
void DebugMsg_Assert(char const * fName_p, int lineNum)
{
    printf("!!! ASSERT FAILED !!! %s() %d\n", fName_p, lineNum);
}
*/


#endif

