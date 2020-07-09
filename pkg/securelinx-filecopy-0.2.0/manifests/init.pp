# Class: filecopy
# ===========================
#
# Full description of class filecopy here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'filecopy':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2019 Your name here, unless otherwise noted.
#
  define filecopy::dumpfiles ($baseurl )
  {
    
    file { $name:
       ensure => file,
       source => "$baseurl/$name"
    }
  }

class filecopy ( 
    $filelist = [ "/test1/testfile1.txt" ], 
    $baseurl = "http://tullxdev01.corp.tullowoil.local/pulp/isos/Tullow_Oil/Library/custom/flat_files/flatfiles" ,
)
{


  filecopy::dumpfiles { $filelist :
     baseurl => $baseurl
  }
}
