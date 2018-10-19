# rust-size-test
A demonstration of how to make small rust programs

This 'hello world' project should build to ~100 kB, which is the smallest on-disk size you can achieve without disabling the stdlib.

You can save another 30kB by using glibc instead of musl, though at the cost of a runtime dependency on glibc. The musl configuration is smallest overall, and suited for initrd use.
