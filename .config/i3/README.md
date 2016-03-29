# i3 config files
My i3 config file has been split up into several files, which are combined together into the config file on the PreSession event of GDM.

The following code needs to be added to `/etc/gdm/PreSession/Default` in order for it to work:

```
/home/chris/scripts/build_i3_config.sh
```
