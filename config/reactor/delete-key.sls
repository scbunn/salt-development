{% if data['act'] == 'delete' %}
remove_mine_data:
  runner.cache.clear_all:
    - tgt: {{ data['id'] }}
{% endif %}
