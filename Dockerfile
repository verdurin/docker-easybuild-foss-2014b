FROM rjeschmi/easybuild-centos6

USER root
RUN yum -y install libibverbs-devel which tar bzip2

ADD ./sources /build/sources

RUN rsync -av /build/sources/./ /software/easybuild/sources

RUN chown -R build /software/easybuild
RUN su -l -c 'eb foss-2015a.eb --prefix=/software/easybuild --robot' - build


# Setting the environment to build all new tools into /export/easybuild for easier exporting


USER easybuild

WORKDIR /export/easybuild

VOLUME /software/easybuild/sources
VOLUME /export/easybuild


