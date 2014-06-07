sumdata
=======

show me how fast your favorite language is

* data.log has 1mio lines.  
  * for example
  * `1402167211.219568	7935 ziproxy@1.2.3.4 S 76297  76297   GET http://lO8FzwGnE%?6Q?kOJtJ3"oURnQgzww7pA&yMQ7LU9L)ZEx"QrC80VyWfvsOW`
* separator is 1-5 spaces
* sum column 5, divide the result with 1000 and display it as "Original size $var kb.\n"
* sum column 6, divide the result with 1000 and display it as "Compressed size $var kb.\n"

I'll run every committed script on the same digital ocean 512MB VPS to have compareable values.  
So please note, there is probably not enough memory to load the file complete into the memory.

* `data.log.tar.xz` is the big file
* `testdata.log` is a small 100 lines long file for development

#### most wanted
* python
* ruby
* java 
* c

results
=======

    ==== BASH ====
    Author: github.com/markuman
    Original size 117261679 kb
    Compressed size 96727557 kb
    
    real	0m3.372s
    user	0m2.768s
    sys		0m0.480s
    
    ==== LUA ====
    Author: github.com/markuman
    Original Size: 117261680 kb
    Compressed Size: 96727557 kb
    
    real	0m6.106s
    user	0m6.036s
    sys		0m0.060s

