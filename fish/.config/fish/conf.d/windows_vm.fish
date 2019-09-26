

function vms-windows
  /usr/bin/qemu-system-x86_64 \
    -m 2048 \
    -enable-kvm \
    -net nic \
    -net user \
    -drive format=raw,file=/dev/zvol/zroot/vms/windows,cache=none \
    -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time
end
