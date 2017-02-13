FROM centos/systemd:latest

ARG version=2016.11.2-1.el7

# Setup base 
RUN yum install -y epel-release yum-plugin-remove-with-leaves virt-what && \
    yum install -y https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el7.noarch.rpm && \
    yum install -y salt-master-${version} salt-minion-${version} salt-syndic-${version} && \
    yum clean all 

# Systemd gracefull shutdowns
STOPSIGNAL SIGRTMIN+3

# Start the salt master
COPY conf/* /etc/salt/master.d/

RUN systemctl enable salt-master.service

EXPOSE 4505 4506
VOLUME ["/etc/salt/master.d","/etc/salt/minion.d","/srv/salt/pillar","/srv/salt/formulas","/srv/salt/reactor","/srv/salt/runners"]

CMD ["/usr/sbin/init"]
