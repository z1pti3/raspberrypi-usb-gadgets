import time
import sys
import keys_uk as key

message=sys.argv[1]

f = open('/dev/hidg0','w')
for l in message.split("\r\n"):
        if l in key.d.keys():
                f.write(mod+"\x00\x00"+key.d[l]+"\x00\x00\x00\x00")
                f.write("\x00\x00\x00\x00\x00\x00\x00\x00")
        else:
                for c in l:
                        keycode=key.d[c]
                        mod="\x00"
                        if "^" in keycode:
                                keycode=keycode[-1:]
                                mod="\x02"
                        f.write(mod+"\x00\x00"+keycode+"\x00\x00\x00\x00")
                        f.write("\x00\x00\x00\x00\x00\x00\x00\x00")
f.close()