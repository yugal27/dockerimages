FROM haproxy:1.8
#From dockercloud/haproxy
# Create a system group and user to be used by HAProxy.
RUN groupadd haproxy && useradd -g haproxy haproxy

# Need to create a directory for HAProxy to be able to `chroot`.
# This is a security measurement.
# Refer to http://cbonte.github.io/haproxy-dconv/configuration-1.5.html#chroot.
RUN mkdir /var/lib/haproxy
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
