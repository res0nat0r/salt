{% if grains['os'] == 'Ubuntu' %}

/etc/apt/apt.conf.d/00proxy:
  file.managed:
    - source: salt://packages/files/00proxy
    - user: root
    - group: root
    - mode: 0644

{% endif %}

packages:
  pkg.latest:
    - pkgs:
      - aria2
      - at
      - autoconf
      - automake
      - cron
      - curl
      - g++
      - gcc
      - git
      - homesick
      - keychain
      - lftp
      - nmap
      - p7zip
      - pbzip2
      - pigz
      - pv
      - rsync
      - screen
      - tig
      - tmux
      - tree
      - unrar
      - vim-nox
      - wget
    - hold: True
