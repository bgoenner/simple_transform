
use <simple_transform/simple_transform.scad>

module mv_x_test()
{
  mv_x(9)
    cube([2,2,2]) ;
}

module rot_x_test()
{
  rot_x(30)
    cube([2,2,2]) ;
}

module rot_x_rad_test()
{
  rot_x(1/12*3.1415, is_radian=true)
    cube([2,2,2]) ;
}

module transform_test()
{
  transform([2, 0, 5], [0,30,0])
    cube([2,2,2]) ;
}

module flip_test()
{
  flip([0,1,0], [0,1,0])
    rot_z(30)
    cube([2, 5, 1]) ;
}

// library test fuctions
//   uncomment to view

// mv_x_test() ;
//rot_x_test() ;
//rot_x_rad_test() ;
transform_test() ;
flip_test() ;
