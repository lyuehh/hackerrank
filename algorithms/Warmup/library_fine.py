import sys

real = raw_input().split(' ')
expect = raw_input().split(' ')

real = [int(i) for i in real]
expect = [int(i) for i in expect]

if real[2] < expect[2]:
    print 0
    sys.exit(0)

if real[2] == expect[2] and real[1] < expect[1]:
    print 0
    sys.exit(0)

if real[2] == expect[2] and real[1] == expect[1] and real[0] < expect[0]:
    print 0
    sys.exit(0)


if real[0] < expect[0] and real[1] < expect[1] and real[2] < expect[2]:
    print 0
else:
    if real[2] != expect[2]:
        print 10000

    else:
        if real[1] != expect[1]:
            b = real[1]-expect[1]
            if b < 0:
                b = -b

            print 500*b

        else:
            a = real[0] - expect[0]
            if a < 0:
                a = -a

            print 15 * a
