global_settings {
  adc_bailout 0.0039216
  ambient_light rgb <0.05, 0.05, 0.05>
  assumed_gamma 1.5
  noise_generator 2
}

fog {
  fog_type 1
  distance 35
  rgb <0, 0, 0> 
}

union {
  cylinder {
    <0, 0, 0>, <0, 500, 0>, 5
    /*scale prior to media for a more sparse system*/       
    hollow
    texture
    {
      pigment {color rgbf 1}
    }
    interior
    {
      media
      {
	//emission 0.2
	// equivalent to ambient
	scattering {1, 1/*color*/}
	// the first number is a ''magic'' number, either 2 or 3
	// looks ok, 1 and 5 can also be used
	density
	{
	  cylindrical
	  color_map
	  {
	    [0.0 rgb <0,0.0,0>]
	    [0.5 rgb <1,0,0>]
	    [0.8 rgb <0,0.8,0>]
	    [1.0 rgb <1,1,1>]
	  }
	}
      }
    }
    scale 1  
  }

  light_source
  {
    <0, 65, 0>
    color rgb<1, 0.5, 0.1> cylinder
    media_attenuation on
    fade_distance 5
    fade_power 1
  }
  light_source
  {
    <0, 60, 0>
    color rgb<1, 0.5, 0.1>
    media_attenuation on
    fade_distance 5
    fade_power 1
  }
  light_source
  {
    <0, 55, 0>
    color rgb<1, 0.5, 0.1>
    media_attenuation on
    fade_distance 5
    fade_power 1
  }
  light_source
  {
    <0, 50, 0>
    color rgb<1, 0.5, 0.1>
    media_attenuation on
    fade_distance 5
    fade_power 1
  }
  light_source
  {
    <0, 45, 0>
    color rgb<1, 0.5, 0.1>
    media_attenuation on
    fade_distance 5
    fade_power 1
  }
  light_source
  {
    <0, 40, 0>
    color rgb<1, 0.5, 0.1>
    media_attenuation on
    fade_distance 5
    fade_power 1
  }
}

// cylinder {
//   <0, 0, 0>, <0, 500, 0>, 2
//   pigment {
//     rgb <0.50, 0.47, 0.46>
//   }
//   finish { ambient 2. diffuse 2. }
// }
// light_source
// {
//   <-25, 25, 0>
//   color rgb <0.25, 0.25, 0.25>
//   shadowless
// }

// #declare sun = isosurface {
//   function { sqrt(pow(x, 2) + pow(z, 2)) - 0.8 }
//   contained_by { box { <-5, 0, -5>, <5, 500, 5> } }
//   open
//   max_gradient 16
//   max_trace 1
  
//   pigment {
//     color rgb <1, 1, 1>
//   }

//   finish { ambient 10. diffuse 10. }
// }

// light_source {
//   <0, 0, 0>, rgb <1, 1, 1>
//   looks_like { sun }
// }

camera {
  // orthographic
  perspective
  location <-50, 42, 0>
  look_at <0, 50, 0>
  angle 30.
}

isosurface {
  function { sqrt(pow(x - 8.*cos(y), 2) + pow(z - 8.*sin(y), 2)) - 0.2 }
  contained_by { box { <-10, 0, -10>, <10, 500, 10> } }
  open
  max_gradient 16
  max_trace 1
  
  pigment {
    rgb <0.11, 0.17, 0.77>
  }
  finish { ambient 4. diffuse 4. }
}

isosurface {
  function { sqrt(pow(x - 8.*cos(y) - 1.2*cos(23.*y), 2) + pow(z - 8.*sin(y) - 1.2*sin(23.*y), 2)) - 0.1 }
  contained_by { box { <-10, 0, -10>, <10, 500, 10> } }
  open
  max_gradient 16
  max_trace 1
  
  pigment {
    rgb <0.50, 0.47, 0.46>
  }
  finish { ambient 2. diffuse 2. }
}
