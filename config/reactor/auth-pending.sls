{# Deal with minions that have (bad|old|incorrect) keys, by removing them #}
{% if 'result' in data %}
{% if not data['result'] %}
remove_minion_key:
  wheel.key.delete:
    - match: {{ data['id'] }}
{% endif %}
{% endif %}

{# If this is a new key and in our domain, accept it. #}
{% if 'act' in data and data['act'] == 'pend' %}
accept_minion_key:
  wheel.key.accept:
    - match: {{ data['id'] }}
{% endif %}
