docker-easybuild-foss-2015b
===========================

The docker build files for a clean easybuild with only foss-2015b

This is a pretty simple Dockerfile but generates a pretty big image with all of the EB foss-2015b toolchain.

The definition for foss-2015b can be found here: 
https://github.com/hpcugent/easybuild-easyconfigs/blob/master/easybuild/easyconfigs/f/foss/foss-2015b.eb


Getting Started
===============

Assuming you have docker running you can run a bash shell in the container by running:

```sh
$ docker run -ti verdurin/easybuild-foss-2015b /bin/bash
[root@f880badc5ab2 Lmod-5.8]# su - build
[root@f880badc5ab2 Lmod-5.8]# eb <EasyConfig.eb>
```

