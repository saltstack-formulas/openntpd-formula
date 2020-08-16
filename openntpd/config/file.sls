# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_package_install = tplroot ~ '.package.install' %}
{%- set sls_service_running = tplroot ~ '.service.running' %}
{%- from tplroot ~ "/map.jinja" import openntpd with context %}

include:
  - {{ sls_package_install }}
  - {{ sls_service_running }}

openntpd/config/install:
  file.managed:
    - name: {{ openntpd.conffile }}
    - source: salt://openntpd/files/ntpd.conf
    - template: jinja
    - check_cmd: {{ openntpd.binary }} -n -f
    - user: root
    - mode: 644
    - makedirs: true
    - require:
      - sls: {{ sls_package_install }}
    - watch_in:
      - service: {{ openntpd.service }}
    - require_in:
      - service: {{ openntpd.service }}

{%- if grains['os_family'] in ['Debian'] %}
openntpd/config/default/install:
  file.managed:
    - name: /etc/default/openntpd
    - source: salt://openntpd/files/defaults.openntpd.jinja
    - template: jinja
{%  endif %}
