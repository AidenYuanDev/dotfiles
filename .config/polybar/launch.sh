#!/usr/bin/env bash
# 彻底杀掉所有 polybar 进程
killall -q polybar
# 等待进程完全退出
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done

PRIMARY=$(xrandr --query | grep " primary" | cut -d" " -f1)
MONITOR=$PRIMARY polybar main 2>&1 | tee -a /tmp/polybar-$PRIMARY.log & disown


# #!/usr/bin/env bash
# polybar-msg cmd quit
# MONITOR=$(xrandr --query | grep " primary" | cut -d" " -f1) polybar main 2>&1 | tee -a /tmp/polybar.log & disown
