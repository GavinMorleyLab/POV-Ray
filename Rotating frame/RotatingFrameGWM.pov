// Persistence of Vision/ POV-Ray 3.x Scene file
// Rotating frame animation by Gavin W Morley
// CC-By-SA: http://creativecommons.org/licenses/by-sa/3.0/      

// Include files: 
#include "\colors.inc"     
global_settings{ charset utf8 }         
         
//Camera definition.  Default uses RIGHT hand system (negative right vector).
camera
{  location  

// < #if (clock<0.02) clock*13/0.02 #else    // period 1         : no magnetic field
  //                             13                       // periods 2 and 3  : magnetic field
    //            #end,
              < 13,
               5,
               -30>
//{  location  <0,-7,-30>

   angle 75
//   sky       <0,1,0>
//   up        <0,1,0>
//   right     <-1.33333333333333, 0.0, 0.0>
  look_at  <0,-6,0>
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
                  }
               } 
          }

 //Background Color
sky_sphere {
      pigment
     {color Gray75}}
              


//define roation speed  
    declare rot = 1050/0.18  ;
                           
// red spin 
 
union {
cylinder {
  0*y,  7.1*y,  0.3   
         }
cone{
  10*y, 0
   7*y, 0.8
    }
pigment {rgb<1,0,0>} 
//translate <0,0,0>
              
rotate <0,0,-60>
                    
              
rotate <0,30,0>
       
       
       
rotate <0,
        #if (clock<0.06) 0                  #else       // period 1  : no magnetic field
        #if (clock<0.2)  (clock-0.06)*rot   #else       // period 2  : magnetic field
                         0.2*rot                        // period 3  : rotating frame
            #end #end,
        0>             
        
       
rotate <0,
        0,
        #if (clock<0.4)  0                    #else       // periods 1,2 and 3  : no pulse
                        -(clock-0.4)*rot*0.45              // period 4  : pulse on
        #end
        >             
        
             
      }  // end of union



// magnetic field B0
 
union {
cylinder {
  0*y,  6.5*y,  0.4   
         }
cone{
  9.5*y, 0
   6.4*y, 1
    }
pigment {rgb<0.2,0.7,1>}


 
 translate <#if (clock<0.06) 100 #else                 // period 1         : no magnetic field
                               0                       // periods 2 and 3  : magnetic field
            #end
            0,0>
        
               
                     
      }  // end of union




// magnetic field B1
 
union {
cylinder {
  0*z,  -6.5*z,  0.4   
         }
cone{
  -9.5*z, 0,
   -6.4*z, 1
    }
pigment {rgb<0.12, 0.76, 0.12>}


 
 translate <#if (clock<0.4) 100 #else                 // period 1, 2 and 3  : before pulse
                              0                       // period 4          : during pulse
            #end
            0,0>
               
                     
      }  // end of union

      
      

// x-axis 
 
union {
cylinder {
  -11*x,  10*x,  0.2   
         }
cone{
  11*x, 0
   9.5*x, 0.8
    }
pigment {rgbt<0,0,0,#if (clock<0.6) 0 #else ((clock-0.6)/0.05) #end>} 
              
rotate <0,
        #if (clock<0.2)  0                   #else        // periods 1 and 2  : no magnetic field
                         -(clock-0.2)*rot                 // period 3  : rotating frame
            #end, 
         0>

translate <#if (clock<0.64) 0 #else 100 #end,0,0> 
              
      }  // end of union
      
      
      
      
        
// y-axis 
 
union {
cylinder {
  -11*y,  10*y,  0.2   
         }
cone{
  11*y, 0
   9.5*y, 0.8
    }
pigment {rgbt<0,0,0,#if (clock<0.6) 0 #else ((clock-0.6)/0.05) #end>} 

translate <#if (clock<0.64) 0 #else 100 #end,0,0>                         
             
             
      }  // end of union





// z-axis
 
union {
cylinder {
  -10*z,  11*z,  0.2   
         }
cone{
  -11*z, 0,
   -9.5*z, 0.8
    }
pigment {rgbt<0,0,0,#if (clock<0.6) 0 #else ((clock-0.6)/0.05) #end>} 
//translate <0,0,0>
              
                  
rotate <0,
        #if (clock<0.2)  0                   #else        // periods 1 and 2  : no magnetic field
                         -(clock-0.2)*rot                 // period 3  : rotating frame
            #end, 
         0>

translate <#if (clock<0.64) 0 #else 100 #end,0,0> 
             
      }  // end of union
     
         
         
                                              
                                              
 // all pulse sequence, text, red line etc

union {          // to rotate all green stuff + red ball

    union{       //In the rotating frame text  
  text {
      ttf "arial.ttf" "In the" 0.01, 0
    scale 2.5
    translate <0,0,0>
  }  
 
   text {
      ttf "arial.ttf" "rotating" 0.01, 0      
    scale 2.5
    translate <0,-3,0>
  }  
  
   text {
      ttf "arial.ttf" "frame" 0.01, 0    
    scale 2.5
    translate <0,-6,0>
  }        

    translate <-15,
                 #if (clock<0.2)  100  #else 0  #end,  
                 0>
                 
    rotate <0,-15,0>
    pigment {Black}
     } //end of union for "In the rotating frame" text
          
// pulse sequence for blue B0   
   
union{
cylinder {
    -16*x, -14.04*x, 0.2
       translate <0,-17,-5>
         }   

      
sphere{<-14.04,-17,-5> 0.2}      
       
     
cylinder {
    0*y, 4*y, 0.2
       translate <-14.04,-17,-5>
                }        
     
sphere{<-14.04,-13,-5> 0.2}             
     
cylinder {
    -14.04*x, 12.5*x, 0.2
       translate <0,-13,-5>        
         }
           
         text {
      ttf "arial.ttf" "Static magnetic field" 0.01, 0
    scale 2.5
    translate <-12.4,-16,-5>
  }                                      
                                 
       pigment {rgb<0.2,0.5,1>}
       
 translate <0,-6,0>     
         
      }    //end of union for blue B0 pulse sequence   

          
   
// pulse sequence for green B1   
   
union{
cylinder {
    -16*x, -1.8*x, 0.2
       translate <0,-17,-5>
         }   

      
sphere{<-1.8,-17,-5> 0.2}      
       
     
cylinder {
    0*y, 4*y, 0.2
       translate <-1.8,-17,-5>
                }        
     
sphere{<-1.8,-13,-5> 0.2}             
     
cylinder {
    -1.8*x, 12.5*x, 0.2
       translate <0,-13,-5>        
         }
        
    text {
      ttf "arial.ttf" "Resonant magnetic field" 0.01, 0
    scale 2.5
    translate <-0.4,-16,-5>
  }          
                                 
       pigment {ForestGreen}
         
      }    //end of union for green B1 pulse sequence   



            
      
//line following pulse sequence

cylinder { -7*y,5*y 0.3
  pigment {rgb<0.8,0.2,0.2>}
       
    translate <-16.2+clock*36,-17,-5>  
       }      
translate <-5,2,0>                    
rotate <10,0,0>  
rotate <0,-23.5,0>
  
  } // end of union for rotating green stuff plus red ball
   