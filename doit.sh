#!/bin/sh

_usr=/usr
_sysconfdir=/etc
_var=/var
_libdir=/usr/lib64
_target_platform=x86_64-redhat-linux-gnu

export CPPFLAGS="-DLUA_COMPAT_APIINTCASTS"
#export CFLAGS="-fsanitize=address -fsanitize=undefined -DLUA_COMPAT_APIINTCASTS"
#export CFLAGS="-fsanitize=address -DLUA_COMPAT_APIINTCASTS"

./configure \
    --prefix="${_usr}" \
    --sysconfdir="${_sysconfdir}" \
    --localstatedir="${_var}" \
    --sharedstatedir="${_var}/lib" \
    --libdir="${_libdir}" \
    --build="${_target_platform}" \
    --host="${_target_platform}" \
    --with-vendor=redhat \
    --with-external-db \
    --with-lua \
    --with-selinux \
    --with-cap \
    --with-acl \
    --enable-ndb \
    --enable-python \
    --enable-silent-rules \
    --with-crypto=openssl \
    --with-uuid \
    --with-lmdb \
    --with-zstd \
    --with-libeio
