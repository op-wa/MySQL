master-grant:
  cmd.run:
    - name: /usr/local/mysql/bin/mysql -e "grant replication slave,super on *.* to 'repl'@'192.168.218.130' identified by 'repl123';flush privileges;"
    - unless: /usr/local/mysql/bin/mysql -e 'show grants for 'repl'@192.168.218.130;'|grep SUPER
