sudo apt update
sudo apt install -y apparmor apparmor-utils
sudo tee /etc/apparmor.d/docker-default >/dev/null <<'EOF'
#include <tunables/global>

# A permissive-but-working docker-default for Debian 13
# Key change vs older defaults: explicitly allow UNIX sockets.
profile docker-default flags=(attach_disconnected,mediate_deleted) {
  # Base abstractions
  # (Alpine/Ubuntu/Debian include this file; present on Proxmox too)
  # Falls back to wide allowances below if missing.
  #include <abstractions/base>

  # --- Networking ---
  network,        # generic network allowance
  network unix,   # explicit: allow AF_UNIX socket operations

  # --- Files / mounts / caps (match typical docker-default) ---
  file,
  umount,
  capability,

  # Let processes run normally (the default profile is moderately permissive)
}
EOF

sudo apparmor_parser -r -W /etc/apparmor.d/docker-default
sudo systemctl reload apparmor
sudo systemctl restart docker
sudo apparmor_parser -C -r /etc/apparmor.d/docker-default
sudo systemctl restart docker
