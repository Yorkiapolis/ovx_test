#network
sudo python ovxctl.py -n createNetwork tcp:localhost:10000 10.0.0.0 16
#switch
sudo python ovxctl.py -n createSwitch 1 00:00:00:00:00:00:01:00
sudo python ovxctl.py -n createSwitch 1 00:00:00:00:00:00:02:00
sudo python ovxctl.py -n createSwitch 1 00:00:00:00:00:00:03:00
sudo python ovxctl.py -n createSwitch 1 00:00:00:00:00:00:07:00
#port
sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:01:00 1
sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:01:00 5

sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:02:00 5
sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:02:00 6

sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:03:00 5
sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:03:00 6

sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:07:00 2
sudo python ovxctl.py -n createPort 1 00:00:00:00:00:00:07:00 6
#links
sudo python ovxctl.py -n connectLink 1 00:a4:23:05:00:00:00:01 2 00:a4:23:05:00:00:00:02 1 spf 1
sudo python ovxctl.py -n connectLink 1 00:a4:23:05:00:00:00:02 2 00:a4:23:05:00:00:00:03 1 spf 1
sudo python ovxctl.py -n connectLink 1 00:a4:23:05:00:00:00:03 2 00:a4:23:05:00:00:00:04 1 spf 1
#hosts
sudo python ovxctl.py -n connectHost 1 00:a4:23:05:00:00:00:01 1 00:00:00:00:01:01
sudo python ovxctl.py -n connectHost 1 00:a4:23:05:00:00:00:04 2 00:00:00:00:07:02
#start network
sudo python ovxctl.py -n startNetwork 1
