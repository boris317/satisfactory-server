# Satisfactory Dedicated Server Scripts for Debian


## Troubleshooting
### SteamAPI_Init(): Sys_LoadModule filed to load: /path/to/.steam/sdk64/steamclient.so

```
steamclient.so: cannot open shared object file: No such file or directory
/home/your_user/.steam/sdk64/steamclient.so
/home/your_user/.steam/sdk64/steamclient.so: cannot open shared object file: No such file or directory
[S_API] SteamAPI_Init(): Sys_LoadModule failed to load: /home/your_user/.steam/sdk64/steamclient.so
```

This issue can be resolved by creating a symbolic or hard link from the expected path to the location where the library actually exists, for example:

```
ln -s /usr/games/steamcmd/linux64/steamclient.so /home/your_user/.steam/sdk64/
```

