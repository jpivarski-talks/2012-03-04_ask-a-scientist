global_settings {
   adc_bailout 0.0039216
   ambient_light rgb <0.717647, 0.717647, 0.717647>
   assumed_gamma 1.5
   noise_generator 2
}

fog {
   fog_type 1
   distance 40
    rgb <0.576471, 0.576471, 0.576471> 
}

light_source {
   <2.13376, 0.171515, -1.66542>, rgb <1, 1, 1>
}

light_source {
   <0, 0, 0>, rgb <1, 1, 1>
}

camera {
   perspective
   location <1.1566, -0.35448, -1.3118>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <0, 1.1, 0>
}

isosurface {
   //*PMName surf
   function { x*x + z*z - 3*y }
   contained_by { box { <-5, -5, -5>, <5, 5, 15> } }
   max_gradient 16
   max_trace 1
   
   pigment {
      image_map {
         png
         "wraparound.png"
         once
         map_type 2
         interpolate 2
      }
     rotate <0, 0, 0>
   }
   scale 1
   rotate <0, 0, 0>
   translate y*0.5
}

box {
   <-7.75963, -2.39074, -5.53456>, <5.40261, -2.21374, 6.04442>
   
   pigment {
      checker 
      color rgb <0.568627, 0.133333, 0.654902>
      color rgb <0.356863, 0.372549, 0.760784>
      scale 0.05
   }
   scale 3
   rotate <-25.1, -1.7, -25.8>
   translate <11.8794, 1.9145, -0.948958>
}