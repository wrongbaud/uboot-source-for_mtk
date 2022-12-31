import serial
ser = serial.Serial('/dev/ttyUSB0',115200)
ser.write('\x11\x13\x18\x19\x14\x11\x18\x10\n'.encode('utf-8'))
