use std::alloc::System;

#[global_allocator]
static GLOBAL: System = System;


fn main() {
    println!("Hello, world!");
}
