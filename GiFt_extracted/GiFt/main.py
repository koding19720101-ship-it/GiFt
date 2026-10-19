import random
import time
import pyautogui
import msvcrt
pyautogui.FAILSAFE = False
screen_width, screen_height = pyautogui.size()
x = 0
y = 0
t = 60
e=0
while t > 0:
  time.sleep(0.5)
  if msvcrt.kbhit():
    key = msvcrt.getch()
    if key in (b"\r", b"\n"):
      enter_count += 1

      if enter_count >= 10:
        break
  x = random.randint(100, screen_width - 100)
  y = random.randint(100, screen_height - 100)
  pyautogui.moveTo(x, y, duration=0.5, tween=pyautogui.easeInOutQuad)
  pyautogui.click(clicks=5, interval=0.001)

  t -= 0.5