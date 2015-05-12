from grab import Grab
import sys

g = Grab()

g.go('http://demo.caffe.berkeleyvision.org/classify_url?imageurl=' + sys.argv[1])
i = 0
found = 0
for elem in g.doc.select('//ul/li/h4/a'):
        #print '%s' % (elem.text())
        if elem.text() == "fruit":
            found = 1
        i = i + 1
        if i >= 5:
            break

if found == 1:
    #print 'You have fruit already!'
    print '1'
else:
    #print 'Adding new fruit to your instacart!'
    print '0'

