# This is a wrapper class to include all the bits needed for Fundamentals
#
class classroom::fundamentals (
  $offline   = $classroom::params::offline,
  $autosetup = $classroom::params::autosetup,
  $autoteam  = $classroom::params::autoteam,
  $role      = $classroom::params::role,
) inherits classroom::params {
  # just wrap the classroom class
  class { 'classroom':
    offline   => $offline,
    autosetup => $autosetup,
    autoteam  => $autoteam,
    role      => $role,
  }
}
