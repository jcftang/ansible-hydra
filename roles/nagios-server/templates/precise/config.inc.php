<?php
//


$cfg['cgi_config_file']='/etc/nagios3/cgi.cfg';  // location of the CGI config file

$cfg['cgi_base_url']='/{{apachealias}}/cgi-bin';


// FILE LOCATION DEFAULTS
$cfg['main_config_file']='/etc/nagios3/nagios.cfg';  // default location of the main Nagios config file
$cfg['status_file']='/var/lib/nagios3/status.dat'; // default location of Nagios status file
$cfg['state_retention_file']='/var/lib/nagios3/retention.dat'; // default location of Nagios retention file



// utilities
require_once(dirname(__FILE__).'/includes/utils.inc.php');

?>
