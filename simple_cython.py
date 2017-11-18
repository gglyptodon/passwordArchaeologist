import sys
import time
import pwa

charset = "abcdefghijklmnopqrstuvwxyz"
#testChars = "0987654321"
#testChars = "abcdefghijklmnopqrstuvwxyz0987654321"


pw = "multi" #input("Enter Password: ")
pwList = list(pw)
maxPwLen = len(pwList)
printCount = 0

start = time.time()
for i in range(maxPwLen):
   if pwa.checkPwForLen(i + 1,pwList,charset,0):
       break

stop = time.time()

print('DURATION:', stop - start)
