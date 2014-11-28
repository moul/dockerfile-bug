```
➜  dockerfile-bug  docker build --no-cache -t dockerfile-bug .
Sending build context to Docker daemon 4.608 kB
Sending build context to Docker daemon
Step 0 : FROM ubuntu-debootstrap:trusty
---> 21530629f1e1
Step 1 : RUN ls -la /usr/bin/sudo || true
---> Running in 572d159ec72c
ls: cannot access /usr/bin/sudo: No such file or directory
---> 6845c3d7b57a
Removing intermediate container 572d159ec72c
Step 2 : RUN apt-get update && apt-get -qq -y install sudo
---> Running in 584e82529e14
Ign http://archive.ubuntu.com trusty InRelease
Ign http://archive.ubuntu.com trusty-updates InRelease
Ign http://archive.ubuntu.com trusty-security InRelease
Get:1 http://archive.ubuntu.com trusty Release.gpg [933 B]
Get:2 http://archive.ubuntu.com trusty-updates Release.gpg [933 B]
Get:3 http://archive.ubuntu.com trusty-security Release.gpg [933 B]
Get:4 http://archive.ubuntu.com trusty Release [58.5 kB]
Get:5 http://archive.ubuntu.com trusty-updates Release [62.0 kB]
Get:6 http://archive.ubuntu.com trusty-security Release [62.0 kB]
Get:7 http://archive.ubuntu.com trusty/main amd64 Packages [1743 kB]
Get:8 http://archive.ubuntu.com trusty/universe amd64 Packages [7589 kB]
Get:9 http://archive.ubuntu.com trusty-updates/main amd64 Packages [469 kB]
Get:10 http://archive.ubuntu.com trusty-updates/universe amd64 Packages [287 kB]
Get:11 http://archive.ubuntu.com trusty-security/main amd64 Packages [208 kB]
Get:12 http://archive.ubuntu.com trusty-security/universe amd64 Packages [94.0 kB]
Fetched 10.6 MB in 2min 13s (79.5 kB/s)
Reading package lists...
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package sudo.
(Reading database ... 7419 files and directories currently installed.)
Preparing to unpack .../sudo_1.8.9p5-1ubuntu1_amd64.deb ...
Unpacking sudo (1.8.9p5-1ubuntu1) ...
Setting up sudo (1.8.9p5-1ubuntu1) ...
---> bb75441370c0
Removing intermediate container 584e82529e14
Step 3 : RUN ls -la /usr/bin/sudo || true
---> Running in de9a72be8df0
-rwsr-xr-x 1 root root 155008 Feb 10  2014 /usr/bin/sudo
---> f99e0998529f
Removing intermediate container de9a72be8df0
Step 4 : ADD ./patches/ /
---> 98bcd72b8d4a
Removing intermediate container 10ad0d22e31e
Step 5 : RUN ls -la /usr/bin/sudo || true
---> Running in 608a4f009321
-rwxr-xr-x 1 root root 155008 Feb 10  2014 /usr/bin/sudo
---> 37d7e02e7b13
Removing intermediate container 608a4f009321
Successfully built 37d7e02e7b13
```
