FROM fluent/fluent-bit:v1.0.4

# Configuration files
COPY fluent-bit.conf \
     parsers.conf \
#     parsers_haproxy.conf \
     /fluent-bit/etc/

EXPOSE 2020

# Entry point
CMD ["/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/fluent-bit.conf"]