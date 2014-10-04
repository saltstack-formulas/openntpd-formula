{% from "openntpd/map.jinja" import openntpd with context %}

openntpd:
  {% if openntpd.package is defined %}
  pkg.installed:
    - name: {{ openntpd.package }}
    - require_in:
      - service: openntpd
  {% endif %}

  service.running:
    - name: {{ openntpd.service }}
    - enable: True
