```
$ docker run -t -i --hostname bash-json cinterloper/bash-json bash
root@bash-json:/# apt-get install -y curl > /dev/null
debconf: delaying package configuration, since apt-utils is not installed

root@bash-json:/# ls / | encodeJsonArray
["bin","boot","dev","etc","home","lib","lib64","media","mnt","opt","proc","root","run","sbin","srv","sys","tmp","usr","var"]
root@bash-json:/# DIRS=$(ls / | encodeJsonArray )
root@bash-json:/# decodeJson DIRS
DIRS_1
DIRS_2
DIRS_3
DIRS_4
DIRS_5
DIRS_6
DIRS_7
DIRS_8
DIRS_9
DIRS_10
DIRS_11
DIRS_12
DIRS_13
DIRS_14
DIRS_15
DIRS_16
DIRS_17
DIRS_18
DIRS_19
root@bash-json:/# echo $DIRS_1
bin
root@bash-json:/# clearDecode
root@bash-json:/# echo $DIRS_1
root@bash-json:/# THIS_REPO="$(curl https://api.github.com/repos/cinterloper/bash-json-extension)"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  5652  100  5652    0     0   7359      0 --:--:-- --:--:-- --:--:--  7368
root@bash-json:/# DECODE_SILENT=TRUE decodeJson THIS_REPO
root@bash-json:/# DECODE_SILENT=TRUE decodeJson owner
root@bash-json:/# echo $login
cinterloper

```



