#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash rustup upx

set -eu -o pipefail

TARGET=x86_64-unknown-linux-musl

rustup target add x86_64-unknown-linux-musl
cargo build --release --target=x86_64-unknown-linux-musl
strip target/$TARGET/release/sztest
upx target/$TARGET/release/sztest
target/$TARGET/release/sztest
