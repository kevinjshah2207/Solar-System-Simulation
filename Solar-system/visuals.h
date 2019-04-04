#pragma once

struct point
{
	float x;
	float y;
	float z;
};

struct face
{
	int vtx[3];
};

extern int globalW, globalH;

//-------- Functions --------------------------------

void Render();
// The function responsible for drawing everything in the 
// OpenGL context associated to a window. 

void Resize(int w, int h);
// Handle the window size changes and define the world coordinate 
// system and projection type

void Setup();
// Set up the OpenGL state machine and create a light source

void Idle();

void Keyboard(unsigned char key, int x, int y);
// Function for handling keyboard events.


void MouseWheel(int button, int dir, int x, int y);
//functin for handling mouse whell event

void RandomCoordinates(point*);

void DrawStars();

