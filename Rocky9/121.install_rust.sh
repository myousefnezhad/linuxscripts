curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install cargo-watch
rustup component add rustfmt
rustup target add wasm32-unknown-unknown
cargo install --locked trunk
cargo install lsd
