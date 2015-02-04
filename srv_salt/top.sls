base:
  '*':
    - thi_user
  'os:MacOS':
    - match: grain
    - workstation
    - workstation.vmnet
    - workstation.nfs_share
  'www.*':
    - thi_user
    - thi
