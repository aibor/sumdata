sumdata
=======

show me how fast your favorite language is

* data.log has 1mio lines.  
  * for example
  * `1402167211.219568	7935 ziproxy@1.2.3.4 S 76297  76297   GET http://lO8FzwGnE%?6Q?kOJtJ3"oURnQgzww7pA&yMQ7LU9L)ZEx"QrC80VyWfvsOW`
* separator is 1-5 spaces
* sum column 5, divide the result with 1000 and display it as "Original size $var kb.\n"
* sum column 6, divide the result with 1000 and display it as "Compressed size $var kb.\n"
* `system()` or `exec` commands etc. are not allowed for script languages

I'll run every committed script on the same digital ocean 512MB VPS (_Ubuntu 14.04 LTS_) to have compareable values.  
So please note, there is probably not enough memory to load the file complete into the memory.

* `data.log.tar.xz` is the big file
* `testdata.log` is a small 100 lines long file for development

#### most wanted
* python
* ruby
* java 
* c
* bash _(real written in bash without binaries?)_

results
=======

	$ ./run.sh &>> result.txt
