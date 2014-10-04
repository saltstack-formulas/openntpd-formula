{% from "openntpd/map.jinja" import openntpd with context %}

openntpd:
  {% if openntpd.package is defined %}
  pkg.installed:
    - name: {{ openntpd.package }}
  {% endif %}

  service.running:
    - name: {{ openntpd.service }}
    - enable: True
    {% if openntpd.package is defined %}
    - require:
      - pkg: openntpd
    {% endif %}

