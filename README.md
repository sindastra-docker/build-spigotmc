# build-spigotmc (legacy branch, OpenJDK 8, tested for 1.11.2 - 1.16.5)
🐳 Docker container to build SpigotMC

### ✅ Use the main/master branch (:latest Docker tag) for Spigot 1.16.5

### ⚠️ Use the legacy branch (:legacy Docker tag) for Spigot 1.11.2 - 1.16.5

### ❌ Spigot pre-1.11 is not currently supported

# Running it

This will automatically run my build script, which will download the latest BuildTools.jar and then run it with 2GB of allocated RAM and other settings as per the official documentation.

By default, this will build the latest revision. Check further down on how to build a specific revision.

Note that the build process needs internet to run, as it will fetch the latest build tools and latest source code each time.

    docker run --name spigotmc-build sindastra/spigotmc-build

Just wait for it to finish building. You will see an output something like this:
```
Success! Everything completed successfully. Copying final .jar files now.
Copying spigot-1.16.5-R0.1-SNAPSHOT.jar to /build/./spigot-1.16.5.jar
  - Saved as ./spigot-1.16.5.jar
```
You will then copy the spigot-*.jar from your Docker container to your host computer with:

    docker cp spigotmc-build:/build/spigot-1.16.5.jar /opt

Where you will find the newly built jar on your host at /opt/spigot-1.16.5.jar and of course you will have to adjust the filename and target path based on your built version and desired destination.

# Cleaning up and rebuilding

Delete the container with:

    docker rm spigotmc-build

Now you can re-run it freshly as stated above (or below). Don’t forget to copy the build out of the container before deleting it!

# Building a specific version instead

To build a specific version, you can call the build script manually and pass the –rev argument with the desired revision like this:

    docker run --name spigotmc-build sindastra/spigotmc-build ./build.sh --rev 1.14.4

Now you might be asking, how do you run SpigotMC itself in Docker? I have a guide for you just for that! Check it out: https://www.sindastra.de/p/754/minecraft-spigotmc-server-in-docker/

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/W7W215OZB)

###### This repository is not affiliated with SpigotMC
