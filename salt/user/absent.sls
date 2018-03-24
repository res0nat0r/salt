{% for user, uid in pillar.get('users', {}).items() %}
{{ user }}:
  user.absent:
    - name: {{ user }}
    - force: True
    - purge: True
{% endfor %}
