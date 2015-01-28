download-smartos-vmwarevm:
  archive.extracted:
    - name: /opt/smartosx/vm_cache
    - source: https://us-east.manta.joyent.com/Joyent_Dev/public/builds/smartos/release-20150122-20150123T200224Z/smartos/smartos-20150123T200224Z.vmwarevm.tar.bz2
    - source_hash: md5=a0c857c7b53be5f066ae7a1652406fd4
    - archive_format: tar
    - uid: 501
    - gid: 80
    - if_missing: /opt/smartosx/vm_cache/SmartOS.vmwarevm/

smartos-install-os:
  cmd.run:
    - user: kevin
    - cwd: /opt/smartosx
    - name: packer build vmware.json
    - unless: ls /opt/smartosx/SmartOS.vmwarevm/SmartOS.vmx

start-smartos:
  cmd.run:
    - user: kevin
    - name: vmrun start /opt/smartosx/SmartOS.vmwarevm/SmartOS.vmx nogui
    - unless: vmrun list | grep /opt/smartosx/SmartOS.vmwarevm/SmartOS.vmx
