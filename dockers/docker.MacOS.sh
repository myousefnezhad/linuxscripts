sudo docker run -it \
    --device /dev/kvm \
    -p 50922:10022 \
    -p 5999:5999 \
    -e AUDIO_DRIVER=pa,server=unix:/tmp/pulseaudio.socket \
    -v "/run/user/$(id -u)/pulse/native:/tmp/pulseaudio.socket" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e "DISPLAY=${DISPLAY:-:0.0}" \
    -e RAM=10 \
    -e WIDTH=1920 \
    -e HEIGHT=1080 \
    -e GENERATE_UNIQUE=true \
    -e MASTER_PLIST_URL='https://raw.githubusercontent.com/sickcodes/osx-serial-generator/master/config-custom.plist' \
    sickcodes/docker-osx:monterey
