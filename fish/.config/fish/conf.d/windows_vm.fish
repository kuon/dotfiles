

function vms-windows
  set vmname "windows10"
  /usr/bin/qemu-system-x86_64 \
    -name $vmname,process=$vmname \
    -m 2048 \
    -enable-kvm \
    -net nic \
    -net user \
    -drive format=raw,file=/dev/zvol/zroot/vms/windows,cache=none \
    -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time \
    -machine type=q35,accel=kvm \
    -rtc clock=host,base=localtime
end
