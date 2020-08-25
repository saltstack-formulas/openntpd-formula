# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import openntpd with context %}

openntpd/package/install:
  pkg.installed:
    - name: {{ openntpd.package }}
