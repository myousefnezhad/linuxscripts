currentRes=$(xrandr -q| grep "DP-0" | cut -d' ' -f3 | cut -f1 -d"+")

if [ $currentRes != "1920x1080" ]; then
#	nvidia-settings -a CurrentMetaMode="DPY-0: 1920x1080 @1920x1080 +1920+1080 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}, DPY-3: 1920x1080 @1920x1080 +0+1080 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}, DPY-1: nvidia-auto-select @1920x1080 +3840+1080 {ViewPortIn=1920x1080, ViewPortOut=3840x2160+0+0}"
nvidia-settings -a CurrentMetaMode="DPY-0: nvidia-auto-select @1920x1080 +3840+1080 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}, DPY-3: nvidia-auto-select @1920x1080 +1920+0 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}, DPY-1: nvidia-auto-select @1920x1080 +1920+1080 {ViewPortIn=1920x1080, ViewPortOut=3840x2160+0+0}"
fi
