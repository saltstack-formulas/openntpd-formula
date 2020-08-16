# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_file = tplroot ~ '.config.file' %}
{%- from tplroot ~ "/map.jinja" import openntpd with context %}

include:
  - {{ sls_config_file }}

openntpd/service/running:
  service.running:
    - name: {{ openntpd.service }}
    - enable: true
    - require:
      - sls: {{ sls_config_file }}
