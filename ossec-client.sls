add_repo:
  cmd.run:
    - name: 'curl https://www.atomicorp.com/installers/atomic|sh'
    - unless: 'stat /etc/yum.repos.d/atomic.repo'

ossec-hids-client:
  pkg:
    - installed

ossec-hids:
  service:
    - enable: true
    - running
