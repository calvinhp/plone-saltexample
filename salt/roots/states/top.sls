{% set node_type = salt['grains.get']('node_type', '') %}

base:
  '*':
    - base

{% if node_type %}
  'node_type:{{ node_type }}':
    - match: grain
    - {{ node_type }}
{% endif %}
