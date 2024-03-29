# 0x04. Loops, conditions and parsing
## Resources:books:
#### Read or watch
* [Loops sample](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)
* [Variable assignment and arithmetic](https://tldp.org/LDP/abs/html/ops.html)
* [Comparison operators](https://tldp.org/LDP/abs/html/comparison-ops.html)
* [File test operators](https://tldp.org/LDP/abs/html/fto.html)
* [Make your scripts portable](https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html)
#### man or help:
* env
* cut
* for
* while
* until
* if
## Learning Objectives
At the end of this project, you are expected to be able to [explain to anyone](https://fs.blog/feynman-learning-technique/), without the help of Google:
### General
* How to create SSH keys
* What is the advantage of using #!/usr/bin/env bash over #!/bin/bash
* How to use while, until and for loops
* How to use if, else, elif and case condition statements
* How to use the cut command
* What are files and other comparison operators, and how to use them
## Requirements
### General
* Allowed editors: vi, vim, emacs
* All your files will be interpreted on Ubuntu 20.04 LTS
* All your files should end with a new line
* A README.md file, at the root of the folder of the project, is mandatory
* All your Bash script files must be executable
* You are not allowed to use awk
* Your Bash script must pass Shellcheck (version 0.7.0) without any error
* The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
* The second line of all your Bash scripts should be a comment explaining what is the script doing
## More Info
### Shellcheck
[Shellcheck](https://github.com/koalaman/shellcheck) is a tool that will help you write proper Bash scripts. It will make recommendations on your syntax and semantics and provide advice on edge cases that you might not have thought about. Shellcheck is your friend! All your Bash scripts must pass Shellcheck without any error or you will not get any points on the task.
Shellcheck is available on the school’s computers. If you want to use it on your own computer, here is how to [install it](https://github.com/koalaman/shellcheck#installing).

Examples:

#### Not passing Shellcheck:
```
sylvain@unbuntu$ cat bad_script
#!/usr/bin/env bash
var='some text'
unused_variable='some unused variable'

echo $var
sylvain@ununtu$ shellcheck bad_script

**In bad_script line 3:**
unused_variable='some unused variable'
^-- SC2034: unused_variable appears unused. Verify it or export it.


**In bad_script line 5:**
echo $var
     ^-- SC2086: Double quote to prevent globbing nd word splitting.

sylvain@ubuntu$
```
##### Passing Shellcheck:
```
sylvain@ubuntu$ cat good_script
#!/usr/bin/env bash
var='some text'
unused_variable='some unused variable'

echo "$var"
echo "$unused_variable"
sylvain@ubuntu$ shellcheck good_script
sylvain@ubuntu$
```
For every feedback, Shellcheck will provide a code that you can use to get more information about the issue, for example for code SC2034, you can browse [here](https://github.com/koalaman/shellcheck/wiki/SC2034)
