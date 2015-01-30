# create vm

www.local:
  module.run:
    - name: virt.init
    - kwargs:
        image_uuid: 62f148f8-6e84-11e4-82c5-efca60348b9f
        uuid: ab9312fc-8763-459e-9f65-927642c5388e
        alias: www.local
        hostname: www.local
        max_physical_memory: 2048
        quota: 10
        nic_tag: admin
        ip: 172.16.109.101
        netmask: 255.255.255.0
        gateway: 172.16.109.2
        resolvers: 8.8.8.8 8.8.4.4
        maintain_resolvers: true
    - unless: ls /zones/ab9312fc-8763-459e-9f65-927642c5388e

