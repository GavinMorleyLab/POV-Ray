// Persistence of Vision/ POV-Ray 3.x Scene file
// Hahn Echo animation by Gavin W Morley, UCL, Dec 2010    
// CC-By-SA: http://creativecommons.org/licenses/by-sa/3.0/
// Include files: 
#include "\colors.inc"     
global_settings{ charset utf8 }         
         
//Camera definition.  Default uses RIGHT hand system (negative right vector).
camera
{  location  <13,5,-30>
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
//no_shadow  
//translate <0,0,0>


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
        -(clock-0.358763)*(90/0.14) #end                           // period 5+
        0>
    
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
//no_shadow  
//translate <0,0,0>


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
//no_shadow  
//translate <0,0,0>


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
//no_shadow  
//translate <0,0,0>


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
//no_shadow  
//translate <0,0,0>


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
//no_shadow  
//translate <0,0,0>


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
    
      }  // end of union

     
     
////////////////
//beginning of fastest spins     
////////////////     

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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                 // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else   // period 2  : 90 degree rotation about z-axis
        -90                                                          // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.014) #else      // period  3       : rotate away fast about y-axis
        -(0.296907-0.117526)*(90/0.014)                              // period  4+      : sit still
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
        -(clock-0.358763)*(90/0.014) #end                           // period 5+
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                               // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else // period 2  : 90 degree rotation about z-axis
        -90                                                        // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                               // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.028) #else     // period  3       : rotate away medium about y-axis
        -(0.296907-0.117526)*(90/0.028)                             // period  4+      : sit still
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
        -(clock-0.358763)*(90/0.028) #end                           // period 5+           : rotate away medium about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                               // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else // period 2  : 90 degree rotation about z-axis
        -90                                                        // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                               // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.07) #else      // period  3       : rotate away slow about y-axis
        -(0.296907-0.117526)*(90/0.07)                              // period  4+      : sit still
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
        -(clock-0.358763)*(90/0.07) #end                            // period 5+           : rotate away slow about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.014) #else       // period  3       : rotate towards fast about y-axis
        (0.296907-0.117526)*(90/0.014)                               // period  4+      : sit still
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
        (clock-0.358763)*(90/0.014) #end                             // period 5+           : rotate towards fast about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.028) #else       // period  3       : rotate towards medium about y-axis
        (0.296907-0.117526)*(90/0.028)                               // period  4+      : sit still
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
        (clock-0.358763)*(90/0.028) #end                              // period 5+           : rotate towards medium about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.07) #else        // period  3       : rotate towards slow about y-axis
        (0.296907-0.117526)*(90/0.07)                                // period  4+      : sit still
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
        (clock-0.358763)*(90/0.07) #end                              // period 5+           : rotate towards slow about y-axis
        0>
    
      }  // end of union
     
     
//////////////////
//end of fastest spins
//////////////////     
     
   
   
   
   
   
   
   

////////////////
//beginning of faster spins     
////////////////     

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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                 // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else   // period 2  : 90 degree rotation about z-axis
        -90                                                          // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.014) #else      // period  3       : rotate away fast about y-axis
        -(0.296907-0.117526)*(90/0.014)                              // period  4+      : sit still
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
        -(clock-0.358763)*(90/0.014) #end                           // period 5+
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                               // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else // period 2  : 90 degree rotation about z-axis
        -90                                                        // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                               // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.028) #else     // period  3       : rotate away medium about y-axis
        -(0.296907-0.117526)*(90/0.028)                             // period  4+      : sit still
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
        -(clock-0.358763)*(90/0.028) #end                           // period 5+           : rotate away medium about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                               // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else // period 2  : 90 degree rotation about z-axis
        -90                                                        // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                               // periods 1 and 2 : sit still
        #if (clock<0.296907) -(clock-0.117526)*(90/0.07) #else      // period  3       : rotate away slow about y-axis
        -(0.296907-0.117526)*(90/0.07)                              // period  4+      : sit still
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
        -(clock-0.358763)*(90/0.07) #end                            // period 5+           : rotate away slow about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.014) #else       // period  3       : rotate towards fast about y-axis
        (0.296907-0.117526)*(90/0.014)                               // period  4+      : sit still
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
        (clock-0.358763)*(90/0.014) #end                             // period 5+           : rotate towards fast about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.028) #else       // period  3       : rotate towards medium about y-axis
        (0.296907-0.117526)*(90/0.028)                               // period  4+      : sit still
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
        (clock-0.358763)*(90/0.028) #end                              // period 5+           : rotate towards medium about y-axis
        0>
    
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
//no_shadow  
//translate <0,0,0>


rotate <0,
        0,
        #if (clock<0.086598) 0 #else                                // period 1  : nothing happens
        #if (clock<0.117526) -(clock-0.086598)*(90/0.030928) #else  // period 2  : 90 degree rotation about z-axis
        -90                                                         // period 3+ : sit still
        #end #end>

rotate <0,
        #if (clock<0.117526) 0 #else                                // periods 1 and 2 : sit still
        #if (clock<0.296907) (clock-0.117526)*(90/0.07) #else        // period  3       : rotate towards slow about y-axis
        (0.296907-0.117526)*(90/0.07)                                // period  4+      : sit still
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
        (clock-0.358763)*(90/0.07) #end                              // period 5+           : rotate towards slow about y-axis
        0>
    
      }  // end of union
     
     
//////////////////
//end of faster spins
//////////////////     
          
     
     
     
     
     
     
     
     
           

// all pulse sequence, text, red ball etc


union {          // to rotate all green stuff + red ball

// all text apart from "echo"
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
    translate <-2,-12,-5>
  }  
  

  text {
      ttf "ariali.ttf" "\u2190   \u2192" 0.05, 0
    pigment { ForestGreen }
     scale <3.94, 2, 2>
    translate <-11.25,-20,-5>
  }  
   
   
     text {
      ttf "ariali.ttf" "\u2190   \u2192" 0.05, 0
    pigment { ForestGreen }
     scale <3.94, 2, 2>
    translate <-0.3,-20,-5>
  }
    
    
  text {
      ttf "ariali.ttf" "         t " 0.05, 0
    pigment { ForestGreen }
     scale <2, 2, 2>
    translate <-11.25,-20,-5>
  }  
   
   
     text {
      ttf "ariali.ttf" "         t " 0.05, 0
    pigment { ForestGreen }
     scale <2, 2, 2>
    translate <-0.3,-20,-5>
  }

           
   
// pulse sequence

union{
cylinder {
    -17*x, -12*x, 0.2
       translate <0,-17,0>
         }   
        
 sphere{<-12,-17,0> 0.2}        
        
cylinder {
      0*y, 4*y, 0.2
       translate <-12,-17,0>
         }         

 sphere{<-12,-13,0> 0.2}        

cylinder {
    -12*x, -10.5*x, 0.2
       translate <0,-13,0>        
         }
 
 sphere{<-10.5,-13,0> 0.2}
   
cylinder {
    0*y, 4*y, 0.2
       translate <-10.5,-17,0>
         }        

 sphere{<-10.5,-17,0> 0.2}

cylinder {
    -10.5*x, -1.8*x, 0.2
       translate <0,-17,0>
         }   
      
sphere{<-1.8,-17,0> 0.2}      
     
union{      
cylinder {
    0*y, 4*y, 0.2
       translate <-12,-17,0>
         }         
     
sphere{<-12,-13,0> 0.2}             
     
cylinder {
    -12*x, -9*x, 0.2
       translate <0,-13,0>        
         }

sphere{<-9,-13,0> 0.2}        
   
cylinder {
    0*y, 4*y, 0.2
       translate <-9,-17,0>
         }        

sphere{<-9,-17,0> 0.2}        

cylinder {
    -9*x, -1.6*x, 0.2
       translate <0,-17,0>
         }
      
      translate <10.2,0,0>
      }      //end of nested union
      
           
cylinder {
    7.6*x, 16*x, 0.2
       translate <0,-17,0>
         }
      
             
      translate <0,0,-5>
      pigment {ForestGreen}
         
      }    //end of full pulse sequence union   


// echo
sphere_sweep {
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
                                

      translate <0,0,-5>
      pigment {Navy}
                }
            
// echo text
  text {
      ttf "arial.ttf" "echo" 0.05, 0
    pigment { Navy }
    scale 2
    translate <8,-12,-5>
        }            
            
      
//ball following pulse sequence

sphere { <-16.2,-17,0> 0.6
  pigment {rgb<1,0.2,0.2>}
       
    translate <clock*48.5,
           #if (clock<0.086598)  0 #else               // period 1
           #if (clock<0.117526)  4 #else               // period 2
           #if (clock<0.296907)  0 #else               // period 3
           #if (clock<0.358763)  4 #else               // period 4
           #if (clock<0.51134)  0 #else               // period 5
           #if (clock<0.515)    (clock-0.51134)*295 #else 
           #if (clock<0.530)    (0.515-0.51134)*295+(clock-0.515)*115 #else 
           #if (clock<0.542268) (0.515-0.51134)*295+(0.530-0.515)*115+   (clock-0.530)*25 #else
           #if (clock<0.55454)  (0.515-0.51134)*295+(0.530-0.515)*115+(0.542268-0.530)*25-  (clock-0.542268)*25 #else 
           #if (clock<0.56954)  (0.515-0.51134)*295+(0.530-0.515)*115+(0.542268-0.530)*25-(0.55454-0.542268)*25-  (clock-0.55454)*115 #else 
           #if (clock<0.5732)   (0.515-0.51134)*295+(0.530-0.515)*115+(0.542268-0.530)*25-(0.55454-0.542268)*25-(0.56954-0.55454)*115-(clock-0.56954)*295 #else
           
           0 #end #end #end #end #end #end #end #end #end #end #end,-5>  
       }      
                    
rotate <10,0,0>  
rotate <0,-23.5,0>
  
  } // end of union for rotating green stuff plus red ball