
// constants
pi_val = 3.1415926535 ;

module mv_x(x_val)
{
  translate([x_val, 0, 0])
    children() ;
}

module mv_y(y_val)
{
  translate([0, y_val, 0])
    children() ;
}

module mv_z(z_val)
{
  translate([0, 0, z_val])
    children() ;
}

module rot_x(x_deg, is_radian=false)
{
  rotate([(is_radian?x_deg/pi_val*180:x_deg), 0, 0])
    children() ;
}

module rot_y(y_deg, is_radian=false)
{
  rotate([0, (is_radian?y_deg/pi_val*180:y_deg), 0])
    children() ;
}

module rot_z(z_deg, is_radian=false)
{
  rotate([0,0,(is_radian?z_deg/pi_val*180:z_deg)])
    children() ;
}

module transform(pos_vec=[0,0,0], rot_vec=[0,0,0])
{
  translate(pos_vec)
    rotate(rot_vec)
      children() ;
}

module flip(dir=[0,0,0], axis=[0,0,0])
{
  mirror([dir[1], dir[0], dir[2]])
    translate([-axis[1], -axis[0], -axis[2]])
      children() ;
}


// short hand functions

module tran(distance)
{
  translate(distance)
    children() ;
}

module rot(rotates)
{
  rotate(rotates)
    children() ;
}
