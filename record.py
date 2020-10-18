import time
from picamera import PiCamera

camera = PiCamera()
camera.start_preview()
camera.start_recording('/home/pi/.output/video.h264')
time.sleep(20)
camera.stop_recording()
camera.stop_preview()
