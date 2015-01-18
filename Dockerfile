FROM rjeschmi/easybuild-centos6

RUN yum -y install libibverbs-devel which tar bzip2

RUN su -l -c 'eb  foss-2014b.eb --prefix=/software/easybuild --robot' - build


# Setting the environment to build all new tools into /export/easybuild for easier exporting

ADD build/config.cfg /software/config/config.cfg
ADD build/z99_StdEnv.sh  /etc/profile.d/z99_StdEnv.sh
RUN mkdir -p /export/easybuild
RUN useradd -u 1000 easybuild
RUN chown -R easybuild.easybuild /export

WORKDIR /export/easybuild

VOLUME /export/easybuild
