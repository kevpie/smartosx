# import base image for vm

import-base64-14.3.0:
  module.run:
    - name: imgadm.import_image
    - uuid: 62f148f8-6e84-11e4-82c5-efca60348b9f
    - unless: ls /zones/62f148f8-6e84-11e4-82c5-efca60348b9f
