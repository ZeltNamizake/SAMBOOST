#Hanya Support Samsung A03S (SM-A037F)
M="\e[31m"
G="\e[32m"
Y="\e[33m"
C="\e[36m"
D="\e[0m"

clear
sleep 0.5
echo -e "$G ░██████╗░█████╗░███╗░░░███╗██████╗░░█████╗░░█████╗░░██████╗████████╗"
sleep 0.5
echo " ██╔════╝██╔══██╗████╗░████║██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝"
sleep 0.5
echo " ╚█████╗░███████║██╔████╔██║██████╦╝██║░░██║██║░░██║╚█████╗░░░░██║░░░"
sleep 0.5
echo " ░╚═══██╗██╔══██║██║╚██╔╝██║██╔══██╗██║░░██║██║░░██║░╚═══██╗░░░██║░░░"
sleep 0.5
echo " ██████╔╝██║░░██║██║░╚═╝░██║██████╦╝╚█████╔╝╚█████╔╝██████╔╝░░░██║░░░"
sleep 0.5
echo " ╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═════╝░░╚════╝░░╚════╝░╚═════╝░░░░╚═╝░░░"
echo -e $D
sleep 0.4
echo "            Tweak Performance & Boost System Samsung A03S"
echo -e "                          [$M ZeltNamizake$D ]\n"
echo -ne -e "             [$C GH $D: ZeltNamizake ]"
echo -e "  [$M YT $D: ZeltNamizake ]"
sleep 0.5
echo
for (( i = 0; i <= 100; i++ )); do
  sleep 0.02
  echo -ne -e "\r[$G•$D] Loading Command [$C$i%$D]"
  if [[ $i == 100 ]]; then
  sleep 1
    echo -ne -e "\rList All Command Samboost : 
$Y
Boost and Tweak:$D
[$G dthml$D ] Disable Thermal
[$G ethml$D ] Enable Thermal
[$G occpu$D ] Overclock CPU
[$G uncpu$D ] Underclock CPU
[$G ephip$D ] Enable Power High Performance
[$G dphip$D ] Disable Power High Performance
[$G ebgcu$D ] Enable Boost GPU and CPU
[$G dbgcu$D ] Disable Boost GPU and CPU
[$G sspm1$D ] Set Scheduling CPU Performance
[$G sspm2$D ] Set Scheduling CPU Powersave
[$G scpsm$D ] Set CPU Performance Mode
[$G scpdm$D ] Set CPU Default Mode
[$G eppmb$D ] Enable PPM System Boost
[$G dppmb$D ] Disable PPM System Boost
$M
Mode:$D
[$Y 1$D ] Game Mode  -$G Enable All Boost and Tweak (Performance)$D
[$Y 2$D ] Daily Mode -$M Disable All Boost and Tweak (Powersave)$D
$C
Renderer:$D
[$G sropl$D ] Set Renderer OPENGL (Default)
[$G srskl$D ] Set Renderer SKIAGL
[$G srvlk$D ] Set Renderer VULKAN
[$G srsvk$D ] Set Renderer SKIAVK
$G
Setprop for Game:$D
Note:
Game setprop will be lost when you restart the device
$M●$D Optimization RAM
$M●$D Touch Responsive
$M●$D Optimization Game
$M●$D FPS Booster
$M●$D Acceleration
$M●$D Doze
$M●$D Clear RAM Cache Aggressive
$M●$D Boost Game Mobile Legends & Free Fire
[$Y espgm$D ] Enable All Setprop for Game$D

[$M dftal$D ] Reset to Default (Reboot)"
  fi
done
sleep 0.8
echo
echo
echo 'example "[Enter Command: dthml]"'
read -p "Enter Command: " cmd

case $cmd in
  "dthml")
  for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
stop thermal
stop thermald
stop thermal_manager
stop thermalloadalgod
stop vendor.thermal-hal-2-0.mtk
      echo -ne -e $G"\rSuccess Disable Thermal\n"
    fi
  done
    ;;
    "ethml")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
start thermal
start thermald
start thermal_manager
start thermalloadalgod
start vendor.thermal-hal-2-0.mtk
      echo -ne -e $G"\rSuccess Enable Thermal\n"
    fi
    done
    ;;
    "occpu")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 6 1 > /proc/ppm/policy_status
    echo 7 1 > /proc/ppm/policy_status
    echo 1 2300000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
    echo 1 2300000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
    echo 0 2900000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
    echo 0 2900000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
      echo -ne -e $G"\rSuccess Overclock CPU, if there are no changes, please run again\n"
    fi
    done
    ;;
    "uncpu")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 6 1 > /proc/ppm/policy_status
    echo 7 1 > /proc/ppm/policy_status
    echo 1 9000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
    echo 0 9000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
      echo -ne -e $G"\rSuccess Underclock CPU, if there are no changes, please run again\n"
    fi
    done
    ;;
    "ephip")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
cmd power set-mode 0
cmd power set-fixed-performance-mode-enabled true
      echo -ne -e $G"\rSuccess Enable Power High Performance\n"
    fi
    done
    ;;
    "dphip")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
cmd power set-mode 1
cmd power set-fixed-performance-mode-enabled false
      echo -ne -e $G"\rSuccess Enable Power High Performance\n"
    fi
    done
    ;;
    "ebgcu")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 1 >/sys/module/ged/parameters/gx_game_mode
echo 1 >/sys/module/ged/parameters/gx_force_cpu_boost
echo 1 >/sys/module/ged/parameters/gx_boost_on
echo 1 >/sys/module/ged/parameters/gx_dfps
echo 1 >/sys/module/ged/parameters/enable_cpu_boost
echo 1 >/sys/module/ged/parameters/gx_frc_mode
echo 100 > /sys/module/ged/parameters/cpu_boost_policy
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 100 > /sys/module/ged/parameters/ged_smart_boost
echo 1 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 1 >/sys/module/ged/parameters/boost_gpu_enable
echo 1 >/sys/module/ged/parameters/boost_extra
echo 1 >/sys/module/ged/parameters/boost_amp
echo 10 > /sys/module/ged/parameters/gpu_idle
      echo -ne -e $G"\rSuccess Enable Boost GPU and CPU\n"
    fi
    done
    ;;
    "dbgcu")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 0 >/sys/module/ged/parameters/gx_game_mode
echo 0 >/sys/module/ged/parameters/gx_force_cpu_boost
echo 0 >/sys/module/ged/parameters/gx_boost_on
echo 0 >/sys/module/ged/parameters/gx_dfps
echo 0 >/sys/module/ged/parameters/enable_cpu_boost
echo 0 >/sys/module/ged/parameters/gx_frc_mode
echo 0 > /sys/module/ged/parameters/cpu_boost_policy
echo 0 > /sys/module/ged/parameters/ged_boost_enable
echo 0 > /sys/module/ged/parameters/ged_smart_boost
echo 0 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 0 >/sys/module/ged/parameters/boost_gpu_enable
echo 0 >/sys/module/ged/parameters/boost_extra
echo 0 >/sys/module/ged/parameters/boost_amp
echo 0 > /sys/module/ged/parameters/gpu_idle
      echo -ne -e $G"\rSuccess Disable Boost GPU and CPU\n"
    fi
    done
    ;;
    "sspm1")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo "performance" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
      echo -ne -e $G"\rSuccess Set CPU Scheduling Mode Performance\n"
    fi
    done
    ;;
    "sspm2")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo "powersave" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
      echo -ne -e $G"\rSuccess Set CPU Scheduling Mode Powersave\n"
    fi
    done
    ;;
    "scpsm")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 3 > /proc/cpufreq/cpufreq_power_mode
      echo -ne -e $G"\rSuccess Set CPU Performance Mode\n"
    fi
    done
    ;;
    "scpdm")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 0 > /proc/cpufreq/cpufreq_power_mode
      echo -ne -e $G"\rSuccess Set CPU Default Mode\n"
    fi
    done
    ;;
    "eppmb")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 1 > /proc/ppm/enabled
echo 0 0 > /proc/ppm/policy_status
echo 1 1 > /proc/ppm/policy_status
echo 2 0 > /proc/ppm/policy_status
echo 3 0 > /proc/ppm/policy_status
echo 4 0 > /proc/ppm/policy_status
echo 5 0 > /proc/ppm/policy_status
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 8 0 > /proc/ppm/policy_status
echo 9 1 > /proc/ppm/policy_status
      echo -ne -e $G"\rSuccess Enable PPM System Boost\n"
    fi
    done
    ;;
    "dppmb")
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
    echo 1 > /proc/ppm/enabled
echo 0 1 > /proc/ppm/policy_status
echo 1 0 > /proc/ppm/policy_status
echo 2 1 > /proc/ppm/policy_status
echo 3 1 > /proc/ppm/policy_status
echo 4 1 > /proc/ppm/policy_status
echo 5 1 > /proc/ppm/policy_status
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 8 1 > /proc/ppm/policy_status
echo 9 0 > /proc/ppm/policy_status
      echo -ne -e $G"\rSuccess Disable PPM System Boost\n"
    fi
    done
    ;;
    1)
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
#Disable Thermal
stop thermal
stop thermald
stop thermal_manager
stop thermalloadalgod
stop vendor.thermal-hal-2-0.mtk
#OC CPU
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 1 2300000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 1 2300000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
echo 0 2900000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 0 2900000 > /proc/ppm/policy/hard_userlimit_min_cpu_freq
#Power High Performance
cmd power set-mode 0
cmd power set-fixed-performance-mode-enabled true
#Enable Boost GPU and CPU
echo 1 >/sys/module/ged/parameters/gx_game_mode
echo 1 >/sys/module/ged/parameters/gx_force_cpu_boost
echo 1 >/sys/module/ged/parameters/gx_boost_on
echo 1 >/sys/module/ged/parameters/gx_dfps
echo 1 >/sys/module/ged/parameters/enable_cpu_boost
echo 1 >/sys/module/ged/parameters/gx_frc_mode
echo 100 > /sys/module/ged/parameters/cpu_boost_policy
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 100 > /sys/module/ged/parameters/ged_smart_boost
echo 1 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 1 >/sys/module/ged/parameters/boost_gpu_enable
echo 1 >/sys/module/ged/parameters/boost_extra
echo 1 >/sys/module/ged/parameters/boost_amp
echo 10 > /sys/module/ged/parameters/gpu_idle
#Scheduling Mode
echo "performance" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
#CPU Mode
echo 3 > /proc/cpufreq/cpufreq_power_mode
#PPM
echo 1 > /proc/ppm/enabled
echo 0 0 > /proc/ppm/policy_status
echo 1 1 > /proc/ppm/policy_status
echo 2 0 > /proc/ppm/policy_status
echo 3 0 > /proc/ppm/policy_status
echo 4 0 > /proc/ppm/policy_status
echo 5 0 > /proc/ppm/policy_status
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 8 0 > /proc/ppm/policy_status
echo 9 1 > /proc/ppm/policy_status
echo -ne -e $G"\rSuccess Enable Game Mode\n"
    fi
    done
    ;;
    ##################
    2)
    for (( i = 0; i <=100; i++ )); do
  sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
#Disable Thermal
start thermal
start thermald
start thermal_manager
start thermalloadalgod
start vendor.thermal-hal-2-0.mtk
#UC CPU
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 1 9000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
echo 0 9000 > /proc/ppm/policy/hard_userlimit_max_cpu_freq
#Power High Performance - Disable
cmd power set-mode 1
cmd power set-fixed-performance-mode-enabled false
#Disable Boost GPU and CPU
echo 0 >/sys/module/ged/parameters/gx_game_mode
echo 0 >/sys/module/ged/parameters/gx_force_cpu_boost
echo 0 >/sys/module/ged/parameters/gx_boost_on
echo 0 >/sys/module/ged/parameters/gx_dfps
echo 0 >/sys/module/ged/parameters/enable_cpu_boost
echo 0 >/sys/module/ged/parameters/gx_frc_mode
echo 0 > /sys/module/ged/parameters/cpu_boost_policy
echo 0 > /sys/module/ged/parameters/ged_boost_enable
echo 0 > /sys/module/ged/parameters/ged_smart_boost
echo 0 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 0 >/sys/module/ged/parameters/boost_gpu_enable
echo 0 >/sys/module/ged/parameters/boost_extra
echo 0 >/sys/module/ged/parameters/boost_amp
echo 0 > /sys/module/ged/parameters/gpu_idle
#Scheduling Mode
echo "powersave" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
#CPU Mode
echo 0 > /proc/cpufreq/cpufreq_power_mode
#PPM
echo 1 > /proc/ppm/enabled
echo 0 1 > /proc/ppm/policy_status
echo 1 0 > /proc/ppm/policy_status
echo 2 1 > /proc/ppm/policy_status
echo 3 1 > /proc/ppm/policy_status
echo 4 1 > /proc/ppm/policy_status
echo 5 1 > /proc/ppm/policy_status
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 8 1 > /proc/ppm/policy_status
echo 9 0 > /proc/ppm/policy_status
echo -ne -e $G"\rSuccess Enable Daily Mode\n"
    fi
    done
    ;;
    "sropl")
    for (( i = 0; i <= 100; i++ )); do
sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
      setprop debug.hwui.renderer opengl
      echo -ne -e $G"\rSuccess Set Renderer OpenGL\n"
    fi
    done
    ;;
    "srskl")
    for (( i = 0; i <= 100; i++ )); do
sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
      setprop debug.hwui.renderer skiagl
      echo -ne -e $G"\rSuccess Set Renderer SkiaGL\n"
    fi
    done
    ;;
    "srvlk")
    for (( i = 0; i <= 100; i++ )); do
sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
      setprop debug.hwui.renderer vulkan
      echo -ne -e $G"\rSuccess Set Renderer Vulkan\n"
    fi
    done
    ;;
    "srsvk")
    for (( i = 0; i <= 100; i++ )); do
sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
      setprop debug.hwui.renderer skiavk
      echo -ne -e $G"\rSuccess Set Renderer SkiaVK\n"
    fi
    done
    ;;
    "espgm")
    for (( i = 0; i <= 100; i++ )); do
sleep 0.04
    echo -ne -e "\r[$G•$D] Loading $M$i%$D"
    if [[ $i = 100 ]]; then
##Optimization Ram
setprop persist.sys.purgeable_assets 1
setprop dalvik.vm.verify-bytecode false
setprop debug.kill_allocating_task 0
setprop ENFORCE_PROCESS_LIMIT false
##Touch Responsive
setprop debug.egl.swapinterval -60
##Optimization Game
setprop persist.vendor.dfps.level 144
setprop persist.vendor.power.dfps.level 120
setprop vendor.display.use_layer_ext 0
setprop vendor.display.enable_optimize_refresh 1
setprop vendor.display.enable_optimize_refresh true
setprop persist.cpu.gov.performance 1
##FPS Booster
setprop persist.sys.NV_FPSLIMIT 120
setprop persist.sys.NV_POWERMODE 1
setprop persist.sys.NV_PROFVER 15
setprop persist.sys.NV_STEREOCTRL 0
setprop persist.sys.NV_STEREOSEPCHG 0
setprop persist.sys.NV_STEREOSEP 20
#Acceleration
setprop debug.composition.type gpu
setprop debug.performance.tuning 1
setprop hwui.disable_vsync true
setprop debug.sf.hw 1
setprop hw3d.force 1
setprop hw2d.force 1
setprop video.accelerate.hw 1
#Doze
setprop doze.display.supported true
setprop doze.pulse.notifications true
setprop doze.use.accelerometer 0
setprop doze.pickup.vibration.threshold 2000
setprop doze.pulse.brightness 5
setprop doze.pulse.delay.in 200
setprop doze.pulse.duration.in 1000
setprop doze.pulse.duration.out 1000
setprop doze.pulse.duration.visible 3000
setprop doze.pulse.proxcheck 0
setprop doze.pulse.schedule.resets 3
setprop doze.pulse.sigmotion 0
setprop doze.shake.acc.threshold 10
setprop doze.vibrate.sigmotion 0
setprop debug.doze.component 0
#Clear RAM Cache Aggressive
echo 3 > /proc/sys/vm/drop_caches
#Boost Game ML & FF
echo -e "com.mobile.legends\ncom.dts.freefireth\n" > /data/vendor/powerhal/smart
      echo -ne -e $G"\rSuccess Enable All Setprop for Game\n"
    fi
    done
    ;;
    "dftal")
    for (( i = 0; i <= 100; i++ )); do
      sleep 0.1
      echo -ne -e "\r[$G•$D] Loading $M$i%$D"
      if [[ $i == 100 ]]; then
        echo -ne -e $G"\rSuccess Reset to Default\n"
        sleep 3
        echo "Please wait..."
        sleep 4
        clear
        echo "Reboot"
        sleep 4
        reboot
      fi
    done
    ;;
    *)
    echo -e $M"Not found command, restart script..."
    sleep 3
    ./samboost.sh
    ;;
esac

