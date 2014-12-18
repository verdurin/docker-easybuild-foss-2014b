FROM rjeschmi/easybuild:develop

RUN yum -y install libibverbs-devel which tar bzip2

RUN su -l -c 'eb foss-2014b.eb --robot' - build

