# Overlay FS

+ [Update log](./module/log.md)

+ Use magisk to flash the module, can use any root manager not just magisk

+ This module allows to rw partitions present in the list

+ Report: [Telegram](https://t.me/toolmod)

+ ! Note: Files cannot be edited directly in the system, please copy to internal memory and move from internal memory to system 

#### Functions

+ Customizable features in module.prop

**Read and write**

+ Default is rw
+ Can be changed to (ro) edit in module.prop (rw=false)

**Grant selinux**

+ Automatically granting selinux permissions can only be 90% correct, if you understand, you should grant permissions manually

**Permissions to read and write directories and files**

+ Grant 755 permission to folders and files

**Grant group and owner**

+ Auto grant permissions to all files (root:root)

**Backup**

+ Will automatically back up old items added or deleted

**Partition list**

+ /product/app, for example, will allow rw to this directory
+ Default: `/product /system_ext /odm /mi_ext /cust /system/app /system/etc /system/fonts /system/framework /system/lib /system/lib64 /system/priv-app /system/vendor /system/system_ext /system/system_ext /vendor/app /vendor/data-app /vendor/lib /vendor/lib64 /vendor/overlay /vendor/etc`
+ Please manually add the folders you want to rw
+ Some directories in /vendor can cause bootloops so be careful.


