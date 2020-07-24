global_settings {
  adc_bailout 0.0039216
  ambient_light rgb <0.717647, 0.717647, 0.717647>
  assumed_gamma 1.5
  noise_generator 2
}

fog {
     fog_type 1
     distance 15
      rgb <0.576471, 0.576471, 0.576471> 
  }

light_source {
  <-0.7, -0.3, 0>, rgb <1, 1, 1>
}

light_source {
  <-0.7, -0.3, 0>, rgb <1, 1, 1>
}

light_source {
  <-0.7, -0.3, 0>, rgb <1, 1, 1>
}

camera {
  perspective
  location <-0.2, 0.25, 0>
  look_at <0, 10, 0>
}

isosurface {
  function { sqrt(x*x + z*z)*(1. + 0.1*y*sin(5.*atan2(z, x)) + 0.01*y*y*sin(9.*atan2(z, x)) + 0.0007*y*y*y*sin(14.*atan2(z, x)) + 0.0002*y*y*y*y*sin(23.*atan2(z, x)) + 0.000015*y*y*y*y*y*sin(37.*atan2(z, x)) + 0.0000025*y*y*y*y*y*y*sin(43.*atan2(z, x))) - 0.1*pow(2, y) }
  contained_by { box { <-5, 0, -5>, <100, 100, 100> } }
  open
  max_gradient 16
  max_trace 1
  
  pigment {
    image_map {
      png
      "linktileswrap2.png"
      once
      map_type 2
      interpolate 2
    }
    scale <1, 10, 1>
    rotate <0, 40, 0>
  }

  rotate <0, -10, 0>

  // pigment {
  //   checker 
  //   color rgb <0.568627, 0.133333, 0.654902>
  //   color rgb <0.356863, 0.372549, 0.760784>
  //   scale 0.1
  // }
}
