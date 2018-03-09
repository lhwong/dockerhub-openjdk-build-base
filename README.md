# openjdk-build-base
Base image with JDK and maven for build related tasks. This image is based on alpine linux.

## Maven Mirror (e.g. Nexus) Configuration
If `MIRROR_URL` is set the entrypoint will create a `~/.m2/settings.xml` file pointing to this mirror.

Set authentication with `MIRROR_USER` and `MIRROR_PASS`.

## Note
This image sets `-Xmx128M` via `JAVA_TOOL_OPTIONS` per default to behave well in a PAAS environment. If you need more heap, set `-Xmx` yourself.

## License
The code in this repository, unless otherwise noted, is "Apache License, Version 2.0" licensed. See the LICENSE file in this repository.
