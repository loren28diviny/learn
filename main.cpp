/*
 * Copyright 2002-2010 Guillaume Cottenceau.
 *
 * This software may be freely redistributed under the terms
 * of the X11 license.
 *
 */

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <png.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GLFW/glfw3.h>
//#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
using namespace cv;
int main(int argc, char **argv)
{
     IplImage* img = cvLoadImage( argv[1] );                 // Получение имени изображения
     cvNamedWindow("DisplayPicture", CV_WINDOW_AUTOSIZE );  // Создание окна
     cvShowImage("DisplayPicture", img );                   // Показ изображения
     cvWaitKey(0);                                           // Ожидание
     cvReleaseImage(&img);                                 // Освобождение памяти из под изображения
     cvDestroyWindow("DisplayPicture");                    // Удаление окна
     GLFWwindow* window;

        /* Initialize the library */
        if (!glfwInit())
            return -1;
        /* Create a windowed mode window and its OpenGL context */
        window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
        if (!window)
        {
            glfwTerminate();
            return -1;
        }

        /* Make the window's context current */
        glfwMakeContextCurrent(window);

        /* Loop until the user closes the window */
        while (!glfwWindowShouldClose(window))
        {
            /* Render here */
            glClear(GL_COLOR_BUFFER_BIT);

            /* Swap front and back buffers */
            glfwSwapBuffers(window);

            /* Poll for and process events */
            glfwPollEvents();
        }

        glfwTerminate();

        return 0;


}
