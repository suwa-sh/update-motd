# update-motd

定期的に、macのシステム情報を/etc/motdへ反映します。

## sample

```txt
Last login: Fri Jan  1 00:00:00 on ttys001

             __  ___              ____                 __    ____               ___ ______
            /  |/  /____ _ _____ / __ ) ____   ____   / /__ / __ \ _____ ____  <  // ____/
           / /|_/ // __ `// ___// __  |/ __ \ / __ \ / //_// /_/ // ___// __ \ / //___ \  
          / /  / // /_/ // /__ / /_/ // /_/ // /_/ // ,<  / ____// /   / /_/ // /____/ /  
         /_/  /_/ \__,_/ \___//_____/ \____/ \____//_/|_|/_/    /_/    \____//_//_____/   
                                                                                          
Motd Updated          : 2021/01/01 00:00:00
Hostname              : MacBookPro15.local
Privte IP Address     : 192.168.1.1
OS Info               : ProductName:	Mac OS X
                        ProductVersion:	10.15.7
                        BuildVersion:	19H114
Hardware Info         : Model Identifier: MacBookPro15,2
                        Processor Name: Quad-Core Intel Core i7
                        Processor Speed: 2.7 GHz
                        Total Number of Cores: 4
                        Hyper-Threading Technology: Enabled
                        Memory: 16 GB
                        Activation Lock Status: Disabled
Disk Used/Total       : 100G / 500G

```

## install

```shell
git clone https://github.com/suwa-sh/update-motd.git ${HOME}/src/github.com/suwa-sh/update-motd
cd ${HOME}/src/github.com/suwa-sh/update-motd
make
```

## uninstall

```shell
make uninstall
```
