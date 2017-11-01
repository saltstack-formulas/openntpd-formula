{% from "openntpd/map.jinja" import openntpd with context %}

openntpd-config:
  file.managed:
    - name: {{ openntpd.conffile }}
    - source: salt://openntpd/files/ntpd.conf
    - template: jinja
    - check_cmd: {{ openntpd.binary }} -n -f
    - watch_in:
      - service: openntpd
    - require_in:
      - service: openntpd
