#!/bin/sh

echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/arabiapriet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/bein.py
wait 
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/beinConnect.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/beinent.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/beinentC.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/beinsportiet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/egypt1iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/egypt2iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/jawwyOS.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/jawwyenOS.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/osnar.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/osnen.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/osnplay.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatar1iet5.py
wait  
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatar2iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatar3iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatar4iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatar5iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatar6iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatarariet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatareniet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/qatarpriet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/saudiarabia1iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/saudiarabia2iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/saudiarabia3iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/saudiarabia4iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/sportiet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uaeariet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uaeeniet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uae1iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uae2iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uae3iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uae4iet5.py
wait
python /usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/uae5iet5.py