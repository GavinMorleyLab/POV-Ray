// Persistence of Vision/ POV-Ray 3.x Scene file
// Hahn Echo animation by Gavin W Morley, UCL, Dec 2010  
// CC-By-SA: http://creativecommons.org/licenses/by-sa/3.0/
// Include files: 
#include "\colors.inc"     
global_settings{ charset utf8 }         
         
//Camera definition.  Default uses RIGHT hand system (negative right vector).
camera
{  location  <18,5,-35>
//{  location  <0,-7,-30>

   angle 75
//   sky       <0,1,0>
//   up        <0,1,0>
//   right     <-1.33333333333333, 0.0, 0.0>
  look_at  <7,-6,0>
}
//  Object: PointLightObject - Light 1
//   light_source  {  <-200,100,-120> color White }

//  Object: PointLightObject - Light 2
//   light_source  {  <150,200,-80> color White }   
   light_source  {  <150,200,-80> color White }   
   light_source  {  <150,200,-80> color White }      

 #default {
    texture {
        finish
       {  diffuse 0.65
          brilliance 1
          ambient 0.1  reflection 0.1
          phong 0.0 phong_size 250
          specular 0.1  roughness 0.02
        }
     } 
  }  
        
          

 
 //graph 
merge{

//x-axis 
 cylinder { <12,-8,0> <25,-8,0> 0.2
                }
 
 cone { <24.5,-8,0>, 0.5   
        <25.5,-8,0>, 0            
       }
       

//y-axis
 cylinder { <12,-8,0> <12,5,0> 0.2
              }       
       
 cone { <12,4.5,0>, 0.5   
        <12,5.5,0>, 0            
       }
      
difference{      
      
  sphere_sweep {
              b_spline
  8,                       
  <11,15.073,0>, 0.2,
  <13,1.120,0>, 0.2,
  <15,-4.013,0>, 0.2,
  <17,-5.901,0>, 0.2,
  <19,-6.596,0>, 0.2,
  <21,-6.851,0>, 0.2,
  <23,-6.945,0>, 0.2,
  <25,-6.980,0>, 0.2
                                 
                 }
                    
          
          // box to hide graph           
                box { <12.9,-7.4,-0.5> <25.5,5.5,0.5> 

                     translate <#if (clock<0.542268) 0 #else 20*(clock-0.542268) #end,0,0>      // add clock
                      } 
                      
            } //end of difference for exponential decay curve
             
             pigment {colour Blue}       
             translate <#if (clock<0.542268) 1000 #else 0 #end,#if (clock<0.542268) 1000 #else 2 #end,#if (clock<0.542268) -1000 #else 0 #end>    // put the graph a long way away initially
                     

rotate <10,0,0>  
rotate <0,-16,0>

      } //end of merge for graph
           
 
    
                           
  
  
//Bloch sphere
sphere   {
  <0,0,0>, 10
       texture {
             pigment  {rgbt<0.0,0.0,1,0.8>}
             finish
                 {diffuse 0.9
                  brilliance 1
                  ambient 0.3  reflection 0.05
                  phong 0.0 phong_size 250
                  specular 0.15  roughness 0.02
                  }               } 
          }

 //Background Color
sky_sphere {
      pigment
     {color Gray75}}
                               
                               
                           
// spin 1 away initially fast
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                 // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else   // period 2  : 90 degree rotation about z-axis
        -90                                                          // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.14) #else      // period  3       : rotate away fast about y-axis
        -(0.296907-0.117526)*(90/0.14)                              // period  4+      : sit still
        #end #end,
        0>
        
rotate <0,
        0,
        #if (clock<0.296907) 0 #else                                // periods 1,2 and 3: sit still
        #if (clock<0.358763) -(clock-0.296907)*(180/0.061856) #else // period 4  : 180 degree rotation about z-axis
        -(0.358763-0.296907)*(180/0.061856)                         // period 5+ : sit still
        #end #end>         

rotate <0,
        #if (clock<0.358763) 0 #else                               // periods 1,2,3 and 4 : sit still
        #if (clock<0.542268) -(clock-0.358763)*(90/0.14) #else     // period 5 : process
        -(0.542268-0.358763)*(90/0.14) #end #end                   // period 6+
        0>

 scale <  #if (clock<0.542268) 1 #else exp(-4*(clock-0.542268)) #end,1,1>
    
      }  // end of union


                  
// spin 2 away initially medium
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 



rotate <0,
        0,
        #if (clock<0.086598) 0 #else                               // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else // period 2  : 90 degree rotation about z-axis
        -90                                                        // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                               // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.28) #else     // period  3       : rotate away medium about y-axis
        -(0.296907-0.117526)*(90/0.28)                             // period  4+      : sit still
        #end #end,
        0>
        
rotate <0,
        0,
        #if (clock<0.296907) 0 #else                                // periods 1,2 and 3: sit still
        #if (clock<0.358763) -(clock-0.296907)*(180/0.061856) #else // period 4         : 180 degree rotation about z-axis
        -(0.358763-0.296907)*(180/0.061856)                         // period 5+        : sit still
        #end #end>         

rotate <0,
        #if (clock<0.358763) 0 #else                               // periods 1,2,3 and 4 : sit still
        -(clock-0.358763)*(90/0.28) #end                           // period 5+           : rotate away medium about y-axis
        0>
    
translate < #if (clock<0.542268) 0 #else 1000 #end,0,0>        
    
      }  // end of union


                  
// spin 3 away initially slow
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 



rotate <0,
        0,
        #if (clock<0.086598) 0 #else                               // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else // period 2  : 90 degree rotation about z-axis
        -90                                                        // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                               // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.7) #else      // period  3       : rotate away slow about y-axis
        -(0.296907-0.117526)*(90/0.7)                              // period  4+      : sit still
        #end #end,
        0>
        
rotate <0,
        0,
        #if (clock<0.296907) 0 #else                                // periods 1,2 and 3: sit still
        #if (clock<0.358763) -(clock-0.296907)*(180/0.061856) #else // period 4         : 180 degree rotation about z-axis
        -(0.358763-0.296907)*(180/0.061856)                         // period 5+        : sit still
        #end #end>         

rotate <0,
        #if (clock<0.358763) 0 #else                               // periods 1,2,3 and 4 : sit still
        -(clock-0.358763)*(90/0.7) #end                            // period 5+           : rotate away slow about y-axis
        0>
   
   
translate < #if (clock<0.542268) 0 #else 1000 #end,0,0>
    
      }  // end of union



                           
// spin 4 towards initially fast
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 



rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.14) #else       // period  3       : rotate towards fast about y-axis
        (0.296907-0.117526)*(90/0.14)                               // period  4+      : sit still
        #end #end,
        0>
        
rotate <0,
        0,
        #if (clock<0.296907) 0 #else                                // periods 1,2 and 3: sit still
        #if (clock<0.358763) -(clock-0.296907)*(180/0.061856) #else // period 4  : 180 degree rotation about z-axis
        -(0.358763-0.296907)*(180/0.061856)                         // period 5+ : sit still
        #end #end>         

rotate <0,
        #if (clock<0.358763) 0 #else                                // periods 1,2,3 and 4 : sit still
        (clock-0.358763)*(90/0.14) #end                             // period 5+           : rotate towards fast about y-axis
        0>
       
       
translate < #if (clock<0.542268) 0 #else 1000 #end,0,0>
       
      }  // end of union


                  
// spin 5 towards initially medium
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 



rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.28) #else       // period  3       : rotate towards medium about y-axis
        (0.296907-0.117526)*(90/0.28)                               // period  4+      : sit still
        #end #end,
        0>
        
rotate <0,
        0,
        #if (clock<0.296907) 0 #else                                  // periods 1,2 and 3: sit still
        #if (clock<0.358763) -(clock-0.296907)*(180/0.061856) #else   // period 4         : 180 degree rotation about z-axis
        -(0.358763-0.296907)*(180/0.061856)                           // period 5+        : sit still
        #end #end>         

rotate <0,
        #if (clock<0.358763) 0 #else                                 // periods 1,2,3 and 4 : sit still
        (clock-0.358763)*(90/0.28) #end                              // period 5+           : rotate towards medium about y-axis
        0>
  
  
translate < #if (clock<0.542268) 0 #else 1000 #end,0,0>
    
      }  // end of union


                  
// spin 6 towards initially slow
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 



rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.7) #else        // period  3       : rotate towards slow about y-axis
        (0.296907-0.117526)*(90/0.7)                                // period  4+      : sit still
        #end #end,
        0>
        
rotate <0,
        0,
        #if (clock<0.296907) 0 #else                                // periods 1,2 and 3: sit still
        #if (clock<0.358763) -(clock-0.296907)*(180/0.061856) #else // period 4         : 180 degree rotation about z-axis
        -(0.358763-0.296907)*(180/0.061856)                         // period 5+        : sit still
        #end #end>         

rotate <0,
        #if (clock<0.358763) 0 #else                                // periods 1,2,3 and 4 : sit still
        (clock-0.358763)*(90/0.7) #end                              // period 5+           : rotate towards slow about y-axis
        0>
      
      
translate < #if (clock<0.542268) 0 #else 1000 #end,0,0>
      
      }  // end of union


           

// all pulse sequence, text, red ball etc

#declare m=15; // to move out 180 degree pulse

union {          // to rotate all green stuff + red ball
           
             
 //text 
  text {
      ttf "arial.ttf" "90°" 0.05, 0
    pigment { ForestGreen }
    scale 2
    translate <-12.4,-12,-5>
  }                           
    
    
  text {
      ttf "arial.ttf" "180°" 0.05, 0
    pigment { ForestGreen }
    scale 2
    translate <#if (clock<0.542268) -2 #else -2 +((clock-0.542268)*m) #end,-12,-5>
  } 

   

  text {
      ttf "ariali.ttf" "\u2190" 0.05, 0            //left-most arrow for pulse spacing
    pigment { ForestGreen }
     scale <3.94, 2, 2>
    translate <-11.25,-20,-5>
  }  
    
    
  text {
      ttf "ariali.ttf" "      \u2192" 0.05, 0      //2nd arrow for pulse spacing
    pigment { ForestGreen }
     scale <3.94, 2, 2>
    translate <#if (clock<0.542268) -11 #else -11 +((clock-0.542268)*m) #end,-20,-5>
  }                     
  
   
     text {
      ttf "ariali.ttf" "\u2190  " 0.05, 0     //3rd arrow for pulse spacing
    pigment { ForestGreen }
     scale <3.94, 2, 2>
    translate <#if (clock<0.542268) -0.3 #else -0.3 +((clock-0.542268)*m) #end,-20,-5>
  }
 
 
      text {
      ttf "ariali.ttf" "      \u2192" 0.05, 0     //4th arrow for pulse spacing
    pigment { ForestGreen }
     scale <3.94, 2, 2>
    translate <#if (clock<0.542268) -0.05 #else -0.05 +((clock-0.542268)*2*m) #end,-20,-5>
  }
 
     
  text {
      ttf "ariali.ttf" "         t " 0.05, 0
    pigment { ForestGreen }
     scale <2, 2, 2>
    translate <#if (clock<0.542268) -11.25 #else -11.25 +((clock-0.542268)*0.5*m) #end,-20,-5>
  }  
   
   
     text {
      ttf "ariali.ttf" "         t " 0.05, 0
    pigment { ForestGreen }
     scale <2, 2, 2>
    translate <#if (clock<0.542268) -0.3 #else -0.3 +((clock-0.542268)*1.5*m) #end,-20,-5>
  }
            
             
// pulse sequence

union{
cylinder {                      // horizontal 1
    -17*x, -12*x, 0.2
       translate <0,-17,0>
         }   
        
 sphere{<-12,-17,0> 0.2}        
        
cylinder {                      // vertical 1
      0*y, 4*y, 0.2
       translate <-12,-17,0>
         }         

 sphere{<-12,-13,0> 0.2}        

cylinder {                      // horizontal 2 top of 90 deg pulse
    -12*x, -10.5*x, 0.2
       translate <0,-13,0>        
         }
 
 sphere{<-10.5,-13,0> 0.2}
   
cylinder {                      // vertical 2 
    0*y, 4*y, 0.2
       translate <-10.5,-17,0>
         }        

 sphere{<-10.5,-17,0> 0.2}

cylinder {                      // horizonatal 3 first t
    -10.5*x, #if (clock<0.542268) -1.8*x #else -1.8*x +((clock-0.542268)*m)*x #end, 0.2
       translate <0,-17,0>
         }   
      
sphere{<-1.8,-17,0> 0.2}      
     
union{      
cylinder {                      // vertical 3
    0*y, 4*y, 0.2
       translate <-12,-17,0>
         }         
     
sphere{<-12,-13,0> 0.2}             
     
cylinder {                      // horizontal 4 top of 180 deg pulse
    -12*x, -9*x, 0.2
       translate <0,-13,0>        
         }

sphere{<-9,-13,0> 0.2}        
   
cylinder {                      // vertical 4
    0*y, 4*y, 0.2
       translate <-9,-17,0>
         }        

sphere{<-9,-17,0> 0.2}        

cylinder {                      // horizontal 5 second t
    -9*x, #if (clock<0.542268) -1.6*x #else -1.6*x +((clock-0.542268)*m)*x #end, 0.2
       translate <0,-17,0>
         }
      
    //  translate <10.2,0,0>
  
      translate <#if (clock<0.542268) 10.2 #else 10.2 +((clock-0.542268)*m) #end,0,0>
      }      //end of nested union
      
           
cylinder {
    7.6*x, 16*x, 0.2          // horizontal 6 after echo
       translate <#if (clock<0.542268) 0 #else ((clock-0.542268)*2*m) #end,-17,0>
         }
    
      translate <0,0,-5>
      pigment {ForestGreen}
      
      
      }    //end of full pulse sequence union   
      
                
// echo (hump)         
sphere_sweep   {
              b_spline
8,
<8,-19,0>, 0.2,
<8.6,-17,0>, 0.2,
<9.2,-15,0>, 0.2,
<9.8,-14,0>, 0.2,
<10.4,-14,0>, 0.2,
<11,-15,0>, 0.2,
<11.6,-17,0>, 0.2,
<12.2,-19,0>, 0.2
              
              translate <-10.1,17,0>                                                  //move echo to origin
              scale <1, #if (clock<0.542268) 1 #else  exp(-4*(clock-0.542268)) #end,1>  //scale it                 
              translate <10.1,-17,0>                                                  //move it back from origin
              
              translate <#if (clock<0.542268) 0 #else ((clock-0.542268)*2*m) #end, 0,0>
                           
             
    translate <0,0,-5>
     pigment {Navy}
                 }
 
// echo text 
     text {
      ttf "arial.ttf" "echo" 0.05, 0
    pigment { Navy }
    scale 2
    translate <#if (clock<0.542268) 8 #else 8 +((clock-0.542268)*2*m) #end,-12,-5>
           } 
 
      
      
//ball following pulse sequence

sphere { <-16.2,-17,0> 0.6
  pigment {rgbt<1,0.2,0.2>}
       
    translate < #if (clock<0.542268) clock*48.5  #else 0.542268*48.5 #end,  // movement in the x-direction
           #if (clock<0.086598)  0 #else               // period 1
           #if (clock<0.117526)  4 #else               // period 2
           #if (clock<0.296907)  0 #else               // period 3
           #if (clock<0.358763)  4 #else               // period 4
           #if (clock<0.51134)  0 #else               // period 5
           #if (clock<0.515)    (clock-0.51134)*295 #else 
           #if (clock<0.530)    (0.515-0.51134)*295+(clock-0.515)*115 #else 
           #if (clock<0.542268) (0.515-0.51134)*295+(0.530-0.515)*115+   (clock-0.530)*25 #else
           
           (0.515-0.51134)*295+(0.530-0.515)*115+(0.542268-0.530)*25
           
           #end #end #end #end #end #end #end #end,-5>                         
           
           //ball movement during echo decay
           translate <#if (clock<0.542268) 0 #else ((clock-0.542268)*2*m) #end, #if (clock<0.542268) 0 #else 3.5*exp(-3.6*(clock-0.542268))-3.5 #end,0> 
       }      
                    
   

rotate <10,0,0>  
rotate <0,-17.5,0>
  
  } // end of union for rotating green stuff plus red ball
