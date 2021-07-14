## OneDrive Direct Link Generator

I wrote “another” OneDrive Direct Link Generator, because the ones I found online either were outdated/didn’t work or they were not useful to me.

This is a simple shell script to generate direct download links for files hosted on Microsoft OneDrive (runs in batch mode).

## Steps

#### 1. Get the embed code from Onedrive:

![steps to get the embed code](assets/howto.gif)

+ Log in to onedrive.live.com and slect the file you want to get a direct download link to.
+ Click “Embed” in the top menu bar (if you don’t see the “Embed” you can right click the file and the “Embed” should be listed in this context menu).
+ Click the  “Generate” button
+ Copy the code and paste it into a text file e.g. “Example.txt”.
  + You can add names to the links (see the [example file](./Example.txt)) with a # sign followed by the name.

#### Generate direct links:

+ If necessary, modify the input and/or output file name [remember to include full path if the files are anywhere else than the current directory].
+ Run as ```./gen_OneDriveDirectLink.sh``` or if the file doesn’t have execute permissions then as ```sh gen_OneDriveDirectLink.sh```
+ Test the direct links and they should work as expected. Report any issues you encounter.


#### Example Input

```html
# Link Name1
<iframe src="https://onedrive.live.com/embed?cid=657437BB22E4A6E0&resid=657437BB11E4B6E0%2136869&authkey=AOZzJEsWeR54" width="98" height="120" frameborder="0" scrolling="no"></iframe>

# Link Name2
<iframe src="https://onedrive.live.com/embed?cid=657437BB22E4A6E0&resid=657437BB11E4B6A2%2136870&authkey=RosSJoEyWoW42" width="98" height="120" frameborder="0" scrolling="no"></iframe>
```



#### Example Output

```sh
# Link Name1
https://onedrive.live.com/download?cid=657437BB22E4A6E0&resid=657437BB11E4B6E0%2136869&authkey=AOZzJEsWeR54
# Link Name2
https://onedrive.live.com/download?cid=657437BB22E4A6E0&resid=657437BB11E4B6A2%2136870&authkey=RosSJoEyWoW42

```

#### Dependencies:

Needs ```grep``` and ```sed```.

#### Credits:
I found the solution on [this blog](https://bydik.com/onedrive-direct-link/).

