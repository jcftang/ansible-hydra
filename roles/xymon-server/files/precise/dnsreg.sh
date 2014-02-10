#!/bin/sh

# Check DNS registrations in whois and warn when they are about to expire.
#
# NOTE: Requires a "whois" command that knows what servers to query.
#       Requires GNU date.
#       Should run only once a day.

NOW=`date "+%s"`
WARNTIME=`expr $NOW + 864000`        # 10 days
ALARMTIME=`expr $NOW + 432000`       # 5 day

xymongrep dnsreg | while read L
do
      set $L
      DOMAIN=$2

      EXPIRESTRING="`whois $DOMAIN | egrep -i "Expires.*:|Expiration.*:|Renewal.*:|expir.*date:" | head -n 1 | cut -d: -f2 | sed -e's/^[     ]*//'`"
      EXPIRES=`date --date="$EXPIRESTRING" "+%s"`

      if test $EXPIRES -le $ALARMTIME
      then
         COLOR=red
      elif test $EXPIRES -le $WARNTIME
      then
         COLOR=yellow
      else
         COLOR=green
      fi

      $BB $BBDISP "status+90000 $DOMAIN.dnsreg $COLOR `date`

Domain $DOMAIN expires on $EXPIRESTRING
"
done

exit 0

