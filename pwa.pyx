def checkPwForLen(pwLen, res, charset, print_count):


    finalPw = [charset[0]] * pwLen
    while finalPw != [charset[-1]] * pwLen:
        incrementPw(finalPw,charset)

        print_count += 1
        if print_count % 10000 == 0:
            #pass
            print('TESTING:', finalPw)

        if finalPw == res:
            print('TESTING:', finalPw)
            print('FOUND:', ''.join(finalPw))
            print('TESTED:', print_count)
            return True

    return False

def incrementPw(pw,charset):
    incr = 0
    while True:
        pos = charset.find(pw[incr])
        if pos == len(charset)-1:
            pw[incr] = charset[0]
            incr += 1
            if incr > len(pw)-1:
                break
        else:
            pw[incr] = charset[pos + 1]
            break
