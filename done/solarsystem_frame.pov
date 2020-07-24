global_settings {
  adc_bailout 0.0039216
  ambient_light rgb <0.03, 0.03, 0.03>
  assumed_gamma 1.5
  noise_generator 2
}

union{
  sphere
  {
    <0,0,0>, 1 
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
	
	scattering {2, 1/*color*/}
	// the first number is a ''magic'' number, either 2 or 3
	// looks ok, 1 and 5 can also be used
	density
	{
	  spherical
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

  //include our own light source 
  light_source
  {
    <0, 0, 0>
    color rgb<1,0.5,0>
    media_attenuation on
    fade_distance 1
    fade_power 2
  }
  translate <-1,0,0>
}

// sphere {
//   <0, 0, 0>, 0.5
//   pigment {
//     rgb <0.50, 0.47, 0.46>
//   }
//   finish { ambient 2. diffuse 2. }
// }
// light_source
// {
//   <-25, 0, 0>
//   color rgb <0.25, 0.25, 0.25>
// }

camera {
  // orthographic
  perspective
  location <-25, 0, 0>
  look_at <0, 0, 0>
  angle 20.
}

#declare time = -1.100;

sphere {
  <0., 2.*cos(time*6.28), 2.*sin(time*6.28)> 0.4
  pigment {
    rgb <0.11, 0.17, 0.77>
  }
  finish { ambient 8. diffuse 8. }
}

sphere {
  <0., 2.*cos(time*6.28) + 0.8*cos(2.7*time*6.28), 2.*sin(time*6.28) + 0.8*sin(2.7*time*6.28)> 0.2
  pigment {
    rgb <0.50, 0.47, 0.46>
  }
  finish { ambient 4. diffuse 4. }
}

// sphere {
//   <0., 0., 2.> 0.2
//   pigment {
//     rgb <0.11, 0.17, 0.77>
//   }
//   finish { ambient 4. diffuse 4. }
// }

// sphere {
//   <0., 0.48, 2.> 0.1
//   pigment {
//     rgb <0.50, 0.47, 0.46>
//   }
//   finish { ambient 2. diffuse 2. }
// }
