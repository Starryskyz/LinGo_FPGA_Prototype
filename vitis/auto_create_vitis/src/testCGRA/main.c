


/*************************** GEMM TEST ************************************/
//
//#include <stdio.h>
//#include <stdlib.h>
//#include <ctype.h>
//#include <time.h>
//#include <math.h>
//#include <string.h>
//
//#include "xil_io.h"
//
//#include "gemm.h"
//
//#include "xtime_l.h"
//#include "xparameters.h"
//
//
//static XAxiCdma AxiCdmaInstance;	/* Instance of the XAxiCdma */
//static XScuGic IntcController;	/* Instance of the Interrupt Controller */
//
//
//#define N 8
//
//int x[N][N] __attribute__((aligned(16)));
//int y[N][N] __attribute__((aligned(16)));
//int o[N][N] __attribute__((aligned(16)));
//int oc[N][N] __attribute__((aligned(16)));
//
//// Reference GEMM
//void gemm_ref(void) {
//    for (int i = 0; i < N; i++) {
//        for (int j = 0; j < N; j++) {
//            int sum = 0;
//            for (int k = 0; k < N; k++) {
//                sum += x[i][k] * y[k][j];
//            }
//            o[i][j] = 3 * sum + 2 * o[i][j];
//        }
//    }
//}
//
//
//
//
//int main() {
//
//
//
////    FRESULT rc;
////    rc = f_mount(&fatfs, "1:/", 0);
////    if (rc != FR_OK){
////    	return 0 ;
////    }
//
//
//    //---------------CDMA Prepare------------------//
//    int Status;
//	Status = XAxiCdma_Prepare(&IntcController, &AxiCdmaInstance);
//	if (Status != XST_SUCCESS) {
//		xil_printf("XAxiCdma Prepare Failed\r\n");
//		return XST_FAILURE;
//	}
//
//
//
//    for (int i = 0; i < N; i++) {
//        for (int j = 0; j < N; j++) {
//            x[i][j] = i+j;
//            y[i][j] = 3*i-j;
//            o[i][j] = 0;
//            oc[i][j] = 0;
//        }
//    }
//
//    // Reference calculation
//    gemm_ref();
//
//    // Run GEMM under test
//    gemm_sdk(&IntcController, &AxiCdmaInstance, (void *)x, (void *)y, (void *)oc);
//
//    // Check results
//    int errors = 0;
//    for (int i = 0; i < N; i++) {
//        for (int j = 0; j < N; j++) {
//            if (oc[i][j] != o[i][j]) {
//                xil_printf("Mismatch at (%d, %d): %d != %d\r\n", i, j, oc[i][j], o[i][j]);
//                errors++;
//            }
//        }
//    }
//    xil_printf("Errors: %d\n", errors);
//
//    if (errors == 0) {
//        xil_printf("GEMM TEST PASSED!\n");
//    } else {
//        xil_printf("GEMM TEST FAILED! Errors: %d\r\n", errors);
//    }
//
//
//    XAxiCdma_CloseAndClean(&IntcController);
////    f_mount(NULL, "1:/", 0);
//    return 0;
//}




/*************************** LUT TEST ************************************/


//#include <stdio.h>
//#include <stdlib.h>
//#include <ctype.h>
//#include <time.h>
//#include <math.h>
//#include <string.h>
//
//#include "xil_io.h"
//
//
//#include "luttest.h"
//
//#include "xtime_l.h"
//#include "xparameters.h"
//
//
//static XAxiCdma AxiCdmaInstance;	/* Instance of the XAxiCdma */
//static XScuGic IntcController;	/* Instance of the Interrupt Controller */
//
//#define size 20
//
//
//int a[size]  __attribute__((aligned(16)));
//int b[size]  __attribute__((aligned(16)));
//int c[size]  __attribute__((aligned(16)));
//int oc[size] __attribute__((aligned(16)));
//
//// Reference kernel
//void luttest_ref(void) {
//    for (int i = 0; i < size; i++) {
//        if (i > 10) {
//            c[i] = a[i];
//        }
//        else if (i > 5) {
//            c[i] = b[i];
//        }
//        else {
//            c[i] = b[i] + 10;
//        }
//    }
//}
//
//int main() {
//
//    //---------------CDMA Prepare------------------//
//    int Status;
//    Status = XAxiCdma_Prepare(
//        &IntcController,
//        &AxiCdmaInstance
//    );
//
//    if (Status != XST_SUCCESS) {
//        xil_printf("XAxiCdma Prepare Failed\r\n");
//        return XST_FAILURE;
//    }
//
//    //---------------Initialize Data---------------//
//    for (int i = 0; i < size; i++) {
//        a[i] = i + 10;
//        b[i] = 3 * i - 5;
//        c[i] = 0;
//        oc[i] = 0;
//    }
//
//    //---------------Reference Calculation---------//
//    luttest_ref();
//
//    //---------------Run CGRA Kernel---------------//
//    luttest_sdk(
//        &IntcController,
//        &AxiCdmaInstance,
//        (void *)a,
//        (void *)b,
//        (void *)oc
//    );
//
//    //---------------Check Results-----------------//
//    int errors = 0;
//
//    for (int i = 0; i < size; i++) {
//        if (oc[i] != c[i]) {
//            xil_printf(
//                "Mismatch at (%d): %d != %d\r\n",
//                i, oc[i], c[i]
//            );
//            errors++;
//        }
//    }
//
//    xil_printf("Errors: %d\r\n", errors);
//
//    if (errors == 0) {
//        xil_printf("KERNEL TEST PASSED!\r\n");
//    }
//    else {
//        xil_printf(
//            "KERNEL TEST FAILED! Errors: %d\r\n",
//            errors
//        );
//    }
//
//    //---------------Clean Up----------------------//
//    XAxiCdma_CloseAndClean(&IntcController);
//
//    return 0;
//}

/*************************** SQRT TEST ************************************/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

#include "ff.h"
#include "xil_io.h"
#include "xil_cache.h"

#include "sqrt.h"

#include "xtime_l.h"
#include "xparameters.h"

static XAxiCdma AxiCdmaInstance;
static XScuGic IntcController;

#define NUM 16
#define EPSILON 1e-4f

float input[NUM]  __attribute__((aligned(16)));
float output[NUM] __attribute__((aligned(16)));
float oc[NUM]     __attribute__((aligned(16)));

// Reference kernel
void sqrt_ref(void) {
    for (int i = 0; i < NUM; i++) {
        output[i] = sqrtf(input[i]);
    }
}

int main() {

    //---------------CDMA Prepare------------------//
    int Status;
    Status = XAxiCdma_Prepare(
        &IntcController,
        &AxiCdmaInstance
    );

    if (Status != XST_SUCCESS) {
        xil_printf("XAxiCdma Prepare Failed\r\n");
        return XST_FAILURE;
    }

    //---------------Initialize Data---------------//
    for (int i = 0; i < NUM; i++) {
        input[i] = (float)(i * i + i + 1);
        output[i] = 0.0f;
        oc[i] = 0.0f;
    }

    //---------------Reference Calculation---------//
    sqrt_ref();

    //---------------Run CGRA Kernel---------------//
    Xil_DCacheFlushRange((UINTPTR)input, sizeof(input));
    Xil_DCacheFlushRange((UINTPTR)oc, sizeof(oc));

    sqrt_sdk(
        &IntcController,
        &AxiCdmaInstance,
        (void *)input,
        (void *)oc
    );

    Xil_DCacheInvalidateRange((UINTPTR)oc, sizeof(oc));

    //---------------Check Results-----------------//
    int errors = 0;

    for (int i = 0; i < NUM; i++) {
        float diff = fabsf(oc[i] - output[i]);

        if (!isfinite(oc[i]) || diff > EPSILON) {
            xil_printf("Mismatch at (%d)\r\n", i);
            printf("  Input:    %.6f\n", input[i]);
            printf("  CGRA:     %.6f\n", oc[i]);
            printf("  Expected: %.6f\n", output[i]);
            printf("  Diff:     %.6f\n", diff);
            errors++;
        }
        xil_printf("Result at (%d)\r\n", i);
        printf("  Input:    %.6f\n", input[i]);
        printf("  CGRA:     %.6f\n", oc[i]);
        printf("  Expected: %.6f\n", output[i]);
        printf("  Diff:     %.6f\n", diff);
    }



    xil_printf("Errors: %d\r\n", errors);

    if (errors == 0) {
        xil_printf("SQRT TEST PASSED!\r\n");
    }
    else {
        xil_printf(
            "SQRT TEST FAILED! Errors: %d\r\n",
            errors
        );
    }

    //---------------Clean Up----------------------//
    XAxiCdma_CloseAndClean(&IntcController);

    return 0;
}

