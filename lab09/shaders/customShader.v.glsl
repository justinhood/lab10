/*
 *   Vertex Shader
 *
 *   CSCI 441, Computer Graphics, Colorado School of Mines
 */

#version 120
varying vec4 theColor;
uniform float time;
void main() {
    /*****************************************/
    /********* Vertex Calculations  **********/
    /*****************************************/
    vec4 a=gl_Vertex;
    // TODO #14: modify our vertex in object space

    if(a.x > 0 && a.y>0 && a.z>0 ){

	a.x=gl_Vertex.x+1.2*(sin(time)+1)/2-.2;
	a.y=gl_Vertex.y+1.2*(sin(time)+1)/2-.2;
	a.z=gl_Vertex.z+1.2*(sin(time)+1)/2-.2;

	a.w=gl_Vertex.w+1.2*(sin(time)+1)/2-.2;
	}
    // TODO #8: Perform the Vertex Transformation from Object Space to Clip Space
	gl_Position = gl_ModelViewProjectionMatrix * a;
	
    // TODO #12: set our varying variable equal to the Vertex

	theColor=gl_Vertex;
}
