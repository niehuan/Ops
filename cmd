  157  ls
  158  cd playbooks/
  159  ls
  160  cd mdp/
  161  ansible-playbook -i ../../hosts mdp.yaml 
  162  cd ../../
  163  ls
  164  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  165  ls /data/
  166  ls /dip/
  167  ls /dip/conf/
  168  ls /dip/conf/es-sql-engine/
  169  vim hosts 
  170  ls /dip/conf/es-sql-engine/
  171  vim  /dip/conf/es-sql-engine/application-analyze.properties 
  172  vim  /dip/conf/es-sql-engine/bootstrap.properties 
  173  vim  /dip/conf/es-sql-engine/application-analyze.properties 
  174  ls
  175  vim playbooks/mdp/mdp.yaml 
  176  ls
  177  ls roles/
  178  ls roles/mdp-post-deploy/
  179  ls roles/mdp-post-deploy/tasks/
  180  ls roles/mdp-post-deploy/tasks/configure_es_sql_engine.yml 
  181  vim roles/mdp-post-deploy/tasks/configure_es_sql_engine.yml 
  182  vim roles/mdp-post-deploy/tasks/configure_galaxy.yml 
  183  vim roles/mdp-post-deploy/tasks/configure_gateway.yml 
  184  vim roles/mdp-post-deploy/tasks/main.yml 
  185  ls ../
  186  cd roles/mdp-post-deploy/tasks/
  187  ls
  188  cp configure_gateway.yml configure_agent.yml
  189  vim main.yml 
  190  ls
  191  vim configure_agent.yml 
  192  ls
  193  ls ../..//
  194  ls ../templates/
  195  ls
  196  vim configure_es_sql_engine.yml 
  197  cp configure_galaxy.yml configure_report.yml
  198  vim configure_report.yml 
  199  ls
  200  cp configure_galaxy.yml configure_rbac.yml
  201  vim configure_rbac.yml 
  202  ls
  203  vim main.yml 
  204  ls
  205  cd ../../
  206  cd ..
  207  ls
  208  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  209  ls
  210  ls group_vars/
  211  ls playbooks/
  212  ls playbooks/mdp/
  213  ls
  214  ls roles/
  215  ls roles/mdp-post-deploy/
  216  ls roles/mdp-post-deploy/*
  217  ls
  218  vim roles/mdp-post-deploy/templates/collect-agent/bootstrap-prod.yml.j2 
  219  ls
  220  vim group_vars/mdp_service_configs.yml 
  221  ls
  222  vim playbooks/mdp/mdp.yaml 
  223  vim roles/mdp-post-deploy/tasks/
  224  vim roles/mdp-post-deploy/tasks/main.yml 
  225  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  226  grep -r All
  227  ls
  228  vim ansible.cfg 
  229  grep -r "All assertions passed"
  230  ls
  231  vim playbooks/mdp/mdp.yaml 
  232  vim roles/mdp-post-deploy/tasks/main.yml 
  233  vim roles/mdp-post-deploy/tasks/check_env.yml 
  234  vim roles/mdp-post-deploy/tasks/configure_es_sql_engine.yml 
  235  ls 
  236  ls group_vars/
  237  ls playbooks/
  238  ls playbooks/ci/
  239  ls
  240  ls roles/
  241  ls roles/ci-docker/
  242  ls roles/ci-docker/tasks/
  243  ls roles/mdp-post-deploy/
  244  ls roles/mdp-post-deploy/defaults/
  245  ls roles/mdp-post-deploy/t
  246  ls roles/mdp-post-deploy/tasks/
  247  ls roles/mdp-post-deploy/tasks/main.yml 
  248  vim roles/mdp-post-deploy/tasks/main.yml 
  249  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  250  ls
  251  ls roles/mdp-post-deploy/templates/node-report/nodeport.jso
  252  vim roles/mdp-post-deploy/tasks/main.yml 
  253  vim roles/mdp-post-deploy/tasks/configure_report.yml 
  254  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  255  vim group_vars/mdp_service_configs.yml 
  256  vim roles/mdp-post-deploy/templates/node-report/nodeport.json.j2 
  257  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  258  vim /dip/conf/node-report/nodeport.json 
  259  vim roles/mdp-post-deploy/templates/node-report/nodeport.json
  260  vim /dip/conf/node-report/nodeport.json 
  261  ls
  262  vim roles/mdp-post-deploy/tasks/main.yml 
  263  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  264  ls /data/Devops/automata/playbooks/mdp/configure_node_report.yml
  265  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  266  vim /dip/conf/collect-agent/bootstrap.yml 
  267  vim /dip/conf/collect-agent/bootstrap-demo.yml 
  268  ls roles/mdp-post-deploy/templates/galaxy/
  269  ls roles/mdp-post-deploy/templates/*/log4j2.xml
  270  ls roles/mdp-post-deploy/templates/*
  271  vim group_vars/mdp_service_configs.yml 
  272  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  273  ls /dip/conf/
  274  ls /dip/conf/collect-agent/
  275  ls /dip/conf/es-sql-engine/
  276  ls /dip/conf/galaxy/
  277  ls /dip/conf/gateway/
  278  ls /dip/conf/node-report/
  279  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  280  vim group_vars/mdp_service_configs.yml 
  281  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  282  vim group_vars/mdp_service_configs.yml 
  283  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  284  vim group_vars/mdp_service_configs.yml 
  285  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  286  vim group_vars/mdp_service_configs.yml 
  287  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  288  vim group_vars/mdp_service_configs.yml 
  289  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  290  vi group_vars/mdp_service_configs.yml 
  291  vim group_vars/mdp_service_configs.yml 
  292  ls
  293  vim group_vars/mdp_service_configs.yml 
  294  ls
  295  vim group_vars/mdp_service_configs.yml 
  296  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  297  ls
  298  ping 10.255.8.103
  299  ls
  300  clush -a ls -l /var/lib/libvirt/images/monitor/
  301  clush -a ls -l /var/lib/libvirt/images/monitor/week
  302  ssh s24
  303  cd /var/lib/libvirt/images/
  304  ls
  305  cd monitor/
  306  ls
  307  cd /etc/cron.weekly/
  308  vim nmon-week 
  309  clush  -a -c /etc/cron.weekly/nmon-week 
  310  cd /var/lib/libvirt/images/
  311  cd monitor/
  312  ls
  313  cd daily/
  314  ls
  315  ll
  316  ssh s31
  317  ls
  318  ll -h
  319  vim lxg_180727_0316.nmon 
  320  ls
  321  cd /data/Devops/
  322  ls
  323  cd automata/
  324  ls
  325  cd roles/mdp-post-deploy/templates/galaxy/
  326  ls
  327  vim bootstrap-prod.yml.j2 
  328  yum -y search ganglia
  329  ls
  330  cd /data/
  331  ls
  332  cd Devops/
  333  ls
  334  cd automata/
  335  ls
  336  cd roles/mdp-post-deploy/templates/
  337  ls
  338  cdd scheduler-executors/
  339  ls
  340  cd scheduler-executors/
  341  ls
  342  vim bootstrap-prod.yml.j2 
  343  vim /data/mdp/conf/executor/bootstrap-sw.yml 
  344  cd ../../
  345  l
  346  cd ..
  347  ls
  348  cd ..
  349  ls
  350  vim group_vars/mdp_service_configs.yml 
  351  history | grep git
  352  ls
  353  cd ..
  354  ls
  355  vim cmd.sh
  356  rm -f cmd.sh 
  357  cd automata/
  358  vim group_vars/mdp_service_configs.yml 
  359  ls
  360  cd roles/mdp-post-deploy/templates/
  361  ls
  362  cd collect-agent/
  363  ls
  364  v[im bootstrap-prod.yml.j2 ; 
  365  vim bootstrap-prod.yml.j2 
  366  vim bootstrap.yml.j2 
  367  cd ..
  368  ls
  369  cd es-sql-engine/
  370  ls
  371  vim application-analyze.properties.j2 
  372  vim bootstrap.properties.j2 
  373  vim bootstrap.yml.j2 
  374  cd ..
  375  ls
  376  cd galaxy/
  377  ls
  378  vim bootstrap-prod.yml.j2 
  379  ls
  380  vim bootstrap.yml.j2 
  381  cd ../gateway/
  382  vim bootstrap-prod.yml.j2 
  383  ls
  384  vim bootstrap.yml.j2 
  385  cd ../
  386  ls
  387  cd node-report/
  388  vim nodeport.json.j2 
  389  cd ..//rbac/
  390  vim bootstrap-prod.yml.j2 
  391  vim bootstrap.yml.j2 
  392  cd ..
  393  ls
  394  cd scheduler-admin/
  395  vim bootstrap-prod.yml.j2 
  396  vim bootstrap.yml.j2 
  397  cd ../scheduler-executors/
  398  vim bootstrap-prod.yml.j2 
  399  vim bootstrap.yml.j2 
  400  cd ..
  401  ls
  402  cd summer/
  403  vim bootstrap-prod.yml.j2 
  404  vim bootstrap.yml.j2 
  405  ls
  406  cd /data/Devops/automata/
  407  ls
  408  cd roles/
  409  ls
  410  cd mdp-post-deploy/
  411  ls
  412  cd templates/
  413  l
  414  a
  415  l
  416  ls
  417  cd scheduler-executors/
  418  ls
  419  vim bootstrap-prod.yml.j2 
  420  ls
  421  vim ../galaxy/bootstrap-prod.yml.j2 
  422  vim bootstrap-prod.yml.j2 
  423  cd ..
  424  ls
  425  cd ..
  426  cd ../..
  427  ansible-playbook -i hosts  playbooks/mdp/mdp.yaml 
  428  vim group_vars/mdp_service_configs.yml 
  429  ansible-playbook -i hosts  playbooks/mdp/mdp.yaml 
  430  ls
  431  git brabch
  432  git branch
  433  git diff
  434  git checkout
  435  ls roles/mdp-post-deploy/templates/
  436  ls roles/mdp-post-deploy/templates/*/*yml
  437  ls
  438  git add *
  439  git add 
  440  git add .
  441  git add *
  442  ls
  443  git checkout
  444  git add group_vars/mdp_service_configs.yml
  445  git add roles/mdp-post-deploy/templates/scheduler-executors/bootstrap-prod.yml
  446  git add roles/mdp-post-deploy/templates/scheduler-executors/bootstrap-prod.yml.j2
  447  ls roles/mdp-post-deploy/templates/scheduler-executors/bootstrap-prod.yml
  448  git push origin dp/1.6.2
  449  ls
  450  git push origin dp/1.6.2
  451  git checkout
  452  git add 
  453  git add *
  454  git commit -m "change es_conf"
  455  git push origin dp/1.6.2
  456  ls
  457  cd roles/mdp-post-deploy/templates/scheduler-executors/
  458  ls
  459  vim bootstrap-prod.yml.j2 
  460  cd ../../../
  461  cd ..
  462  ansible-playbook -i hosts  playbooks/mdp/mdp.yaml 
  463  vim group_vars/mdp_service_configs.yml 
  464  ansible-playbook -i hosts  playbooks/mdp/mdp.yaml 
  465  vim README.md 
  466  vim group_vars/mdp_service_configs.yml 
  467  ls
  468  l
  469  ls
  470  cd /data/
  471  ls
  472  cd mysql/
  473  ls
  474  docker ps
  475  ls
  476  ls mysql
  477  ls mysql-sql/
  478  docker exec -it mysql-5.7 bash
  479  ls
  480  ls
  481  cat .ssh/authorized_keys 
  482  cd /home/mdp/
  483  ls
  484  cd mdp161/
  485  ls
  486  rm -rf mysql-sql
  487  ls
  488  cd ..
  489  ls
  490  scp -r mdp161/ 10.255.8.103:/home
  491  cd mdp161/
  492  vim deploy-mdp.sh 
  493  cd ..
  494  ls
  495  cd base/
  496  vim deploy-mdp.sh 
  497  cd ../mdp162/
  498  vim deploy-mdp.sh 
  499  cd ../mdp160/
  500  ls
  501  cd ..
  502  ls
  503  vim mdp161/deploy-mdp.sh 
  504  vim base/deploy-mdp.sh 
  505  vim mdp161/deploy-mdp.sh 
  506  cp mdp161/deploy-mdp.sh mdp162/
  507  cp mdp161/deploy-mdp.sh base/
  508  ls
  509  ls mdp160/
  510  ls mdp161/
  511  ls mdp162
  512  ls base/
  513  ls
  514  cd mdp161/
  515  ls
  516  vim /etc/mysql/my.cnf    
  517  ls
  518  vim my.cnf
  519  vim deploy-mdp.sh 
  520  vim docker-compose.yml 
  521  ssh 10.255.8.103
  522  cd /data/
  523  ls
  524  dc Devops/
  525  ls
  526  rm -rf lost+found/
  527  sl
  528  ls
  529  cd monitor/
  530  ll
  531  la week/
  532  ls week/
  533  ls 30min/
  534  ls
  535  ls daily/
  536  ls
  537  cat /etc/cron
  538  cat /etc/cron.daily/
  539  ls /etc/cron.daily/
  540  ls /etc/cron.hh
  541  ls /etc/cron.hourly/
  542  rm -f /etc/cron.hourly/nmon-min 
  543  ls /etc/cron.weekly/
  544  rn -f /etc/cron.weekly/nmon-week 
  545  rm -f /etc/cron.weekly/nmon-week 
  546  ls /etc/cron.weekly/
  547  ls /etc/cron.hourly/
  548  ls /etc/cron.daily/
  549  ls /etc/cron.daily/nmon-day 
  550  rm -f /etc/cron.daily/nmon-day 
  551  cd ../Devops/
  552  ls
  553  cd automata/
  554  ls
  555  cd ..
  556  ls
  557  vim automata/group_vars/mdp_service_configs.yml 
  558  ls
  559  scp -r automata/ 10.255.8.103:/home
  560  ls
  561  cd 
  562  cd -
  563  cd automata/
  564  cd roles/mdp-post-deploy/templates/node-report/
  565  vim nodeport.json.j2 
  566  ssh 10.255.8.124
  567  cd /home/mdp/
  568  ls
  569  cd base/
  570  ls
  571  cd deploy/
  572  ls
  573  vim check.sh 
  574  vim init.sh 
  575  cd /data/Devops/automata/
  576  vim group_vars/mdp_service_configs.yml 
  577  cd ..
  578  ls
  579  git clone -b core/release/1.6.2 git@git.dev.aone.ai:dp/mdp-conf-template.git
  580  ls
  581  cd m
  582  cd mdp-conf-template/
  583  ls
  584  cd template/
  585  ls
  586  ls summer/
  587  ls
  588  vim nodereport/nodeport.json 
  589  cd ../ta
  590  cd
  591  l
  592  ssh 10.255.8.103
  593  ls
  594  cd /home/mdp/mdp161/
  595  cat my.cnf 
  596  vim deploy-mdp.sh 
  597  ls
  598  vim deploy-mdp.sh 
  599  ls
  600  tar zxf gem.tgz 
  601  cd gem/
  602  ls
  603  cat check_gem 
  604  rm -f check_gem 
  605  vim check.sh 
  606  ls
  607  cd ..
  608  ls
  609  rm -f gem.tgz
  610  tar zcf gem.tgz gem/
  611  ls
  612  rm -rf gem
  613  ls
  614  s
  615  ls
  616  vim deploy-mdp.sh 
  617  ssh s26
  618  ls
  619  cd ..
  620  ls
  621  cd conf/
  622  ls
  623  cd /usr/h
  624  ls
  625  cd /home/
  626  ls
  627  cd mdp/
  628  ls
  629  cd mdp161/
  630  ls
  631  tar zxf zk_conf.tgz 
  632  ls
  633  cd cd conf/
  634  s
  635  cd conf/
  636  ls
  637  cd kafka/
  638  ls
  639  cd conf/
  640  ls
  641  vim server.properties 
  642  ls
  643  cd ..
  644  ls
  645  cd ..
  646  s
  647  cd ..
  648  ls
  649  rm -rf conf
  650  ls
  651  tar zxf zk.tgz 
  652  ls
  653   
  654  ls
  655  ls zookeeper/
  656  ls zookeeper/conf 
  657  ls
  658  ls kafka/
  659  ls kafka/conf
  660  ls
  661  ll kafka/
  662  rm -rf kafka/
  663  rm -rf zookeeper/
  664  ls
  665  vim deploy-mdp.sh 
  666  hostname -I
  667  ls
  668  ls
  669  vim /data/Devops/mdp-conf-template/template/nodereport/nodeport.json 
  670  cd /data/Devops/automata/
  671  ls group_vars/mdp_service_configs.yml 
  672  cat group_vars/mdp_service_configs.yml 
  673  ls group_vars/mdp_service_configs.yml 
  674  ls
  675  cd ../../
  676  ls
  677  cd Devops/
  678  ls
  679  cd automata/
  680  ls
  681  cd ..
  682  ls
  683  mv automata/ automata_old
  684  ls
  685  cp automata_old/ automata
  686  cp -r automata_old/ automata
  687  ls
  688  cd automata
  689  ls
  690  rm -rf roles/ README.md 
  691  ls
  692  cp ../../automata/roles/ .
  693  cp -r ../../automata/roles/ .
  694  cp -r ../../automata/README.md  .
  695  ls
  696  vim README.md 
  697  cat README.md 
  698  vim group_vars/mdp_service_configs.yml 
  699  vim ../../automata/group_vars/mdp_service_configs.yml 
  700  vim m
  701  vim group_vars/mdp_service_configs.yml 
  702  cd roles/mdp-post-deploy/templates/
  703  ls
  704  cat collect-agent/bootstrap-prod.yml.j2 
  705  cat collect-agent/bootstrap.yml.j2 
  706  cd es-sql-engine/
  707  vim bootstrap.properties.j2 
  708  vim application-analyze.properties.j2 
  709  vim bootstrap.yml.j2 
  710  cd ..
  711  ls
  712  cd executor/
  713  vim bootstrap-prod.yml.j2 
  714  vim bootstrap.yml.j2 
  715  cd ..
  716  ls
  717  cd galaxy/
  718  ls
  719  vim bootstrap-prod.yml.j2 
  720  vim bootstrap.yml.j2 
  721  cd ../gateway/
  722  ls
  723  vim bootstrap-prod.yml.j2 
  724  vim bootstrap.yml.j2 
  725  cd ..
  726  ls
  727  cd nodereport/
  728  vim nodeport.json.j2 
  729  ls
  730  cd ..
  731  ls
  732  cd rbac/
  733  vim bootstrap-prod.yml.j2 
  734  vim bootstrap.yml.j2 
  735  cd ../scheduler/
  736  vim bootstrap-prod.yml.j2 
  737  vim bootstrap.yml.j2 
  738  cd ..
  739  ls
  740  cd summer/
  741  vim bootstrap-prod.yml.j2 
  742  vim bootstrap.yml.j2 
  743  cd ../../
  744  l
  745  cd ../
  746  ls
  747  cd ..
  748  ls
  749  vim README.md 
  750  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  751  git add *
  752  git checkout
  753  git commit -m " update Mgroup_vars/mdp_service_configs.yml and README.md"
  754  ls roles/mdp-post-deploy/templates/
  755  ls roles/mdp-post-deploy/templates/*
  756  ls
  757  git push origin -b dp/1.6.2
  758  git push origin dp/1.6.2
  759  ls
  760  cd ..
  761  ls
  762  ccd monitor/
  763  ls
  764  cd monitor/
  765  ls
  766  git clone -b dp/1.6.2 git@git.dev.aone.ai:dev-ops/automata.git
  767  cd automata/
  768  cd roles/
  769  cd mdp-post-deploy/
  770  cd templates/
  771  ls
  772  rm -rf scheduler-admin
  773  rm -rf scheduler-executors
  774  rm -rf node-report
  775  ls
  776  cd ..
  777  ls
  778  cd tasks/
  779  ls
  780  rm -f configure_node_report.yml configure_scheduler_admin.yml configure_scheduler_executors.yml 
  781  ls
  782  cd ..
  783  ls
  784  cd defaults/
  785  ls
  786  cd ../../
  787  ls
  788  cd ../
  789  ls
  790  cd group_vars/
  791  ls
  792  cd m
  793  cd ..
  794  ls
  795  cd playbooks/
  796  ls
  797  cd ,
  798  cd mdp/
  799  ls
  800  cd ../../
  801  ls
  802  cd playbooks/
  803  cd ../
  804  vim group_vars/mdp_service_configs.yml 
  805  git checkout
  806  git add *
  807  git commit "delete old template"
  808  git commit -m "delete old template"
  809  git push origin dp/1.6.2
  810  git diff
  811  git checkout
  812  git commit -m "delete old template"
  813  git commit -a
  814  git push origin dp/1.6.2
  815  ls
  816  git checkout 
  817  ls
  818  g
  819  git checkout
  820  git rebase master
  821  git init
  822  git add *
  823  git add 
  824  git add -a
  825  git add 
  826  git add *
  827  ls
  828  git checkout
  829  git commit 
  830  ls
  831  git rm roles/mdp-post-deploy/tasks/configure_node_report.yml
  832  git rm roles/mdp-post-deploy/tasks/configure_scheduler_admin.yml
  833  git rm roles/mdp-post-deploy/tasks/configure_scheduler_executors.yml
  834  git rm roles/mdp-post-deploy/templates/node-report/nodeport.json
  835  git rm roles/mdp-post-deploy/templates/node-report/nodeport.json.j2
  836  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap-prod.yml
  837  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap-prod.yml.j2
  838  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap.yml
  839  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap.yml.j2
  840  git checkout
  841  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap.yml.j2
  842  git rm roles/mdp-post-deploy/tasks/configure_node_report.yml
  843  git rm Droles/mdp-post-deploy/tasks/configure_scheduler_admin.yml
  844  git rm roles/mdp-post-deploy/tasks/configure_scheduler_admin.yml
  845  git checkout
  846  git rm roles/mdp-post-deploy/tasks/configure_node_report.yml
  847  git rm roles/mdp-post-deploy/tasks/configure_scheduler_admin.yml
  848  git rm roles/mdp-post-deploy/tasks/configure_scheduler_executors.yml
  849  git rm roles/mdp-post-deploy/templates/node-report/nodeport.json
  850  git rm roles/mdp-post-deploy/templates/node-report/nodeport.json.j2
  851  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap-prod.yml
  852  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap-prod.yml.j2
  853  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap.yml
  854  git rm roles/mdp-post-deploy/templates/scheduler-admin/bootstrap.yml.j2
  855  git checkout
  856  git rm roles/mdp-post-deploy/templates/scheduler-admin/log4j2.xml
  857  git rm roles/mdp-post-deploy/templates/scheduler-executors/bootstrap-prod.yml
  858  git rm roles/mdp-post-deploy/templates/scheduler-executors/bootstrap-prod.yml.j2
  859  git rm roles/mdp-post-deploy/templates/scheduler-executors/bootstrap.yml
  860  git rm roles/mdp-post-deploy/templates/scheduler-executors/bootstrap.yml.j2
  861  git rm roles/mdp-post-deploy/templates/scheduler-executors/log4j2.xml
  862  git checkout
  863  git commit 
  864  git push origin dp/1.6.2
  865  ls
  866  git status
  867  git commit
  868  git checkout
  869  ls
  870  git commit -a
  871  git add -A
  872  git add .
  873  git status
  874  git stages
  875  git commit -m "rm old file"
  876  git push origin dp/1.6.2
  877  git rebase
  878  git rebase master
  879  git rebase origin master
  880  git rebase 
  881  git branch
  882  git rebase origin master
  883  git rebase master
  884  git rebase 
  885  git checkout master
  886  git branch
  887  git branch dp/1.6.2
  888  git branch  -m dp/1.6.2
  889  git merge
  890  git merge *
  891  git merge --all
  892  git checkout dp/1.6.2
  893  git branch
  894  git rebase master
  895  git rebase master --continue
  896  git rebase master 
  897  git rebase master --continue
  898  git rebase --continue
  899  git checkout master
  900  git add
  901  git add.
  902  git add .
  903  git status
  904  git init
  905  git status
  906  ls
  907  git add -A
  908  git status
  909  s
  910  l
  911  ls
  912   
  913  ls
  914  git checkout master
  915  ls
  916  cd ../
  917  ls
  918  cd automata/
  919  ls
  920  git status
  921  git branch
  922  git init
  923  ls
  924  cd ..
  925  ls
  926  rm -rf automata/
  927  ls
  928  cd ..
  929  ls
  930  rm -rf automata_old/
  931  ls
  932  cd ..
  933  ls
  934  rm -rf automata/
  935  ls
  936  cd Devops/
  937  ls
  938  mv automata/ automata_old
  939  git clone -b dp/1.6.2 git@git.dev.aone.ai:dev-ops/automata.git
  940  ls
  941  cd automata
  942  ls
  943  git status
  944  git checkout
  945  ls
  946  ls roles/
  947  ls roles/mdp-post-deploy/
  948  ls roles/mdp-post-deploy/tasks/
  949  ls roles/mdp-post-deploy/templates/
  950  ls
  951  mkdir examples
  952  ls
  953  mv examples/ examples-test
  954  ls
  955  cd examples-test/
  956  ls
  957  cd ..
  958  ls
  959  cat ansible.cfg 
  960  [defaults]
  961  # 这个roles_path写能够读取到autometa/roles的绝对路径
  962  # 为了这个项目能更方便的用，可以对这个项目打rpm包，安装的时后直接怼到对应目录下，就不用再改这个配置了
  963  roles_path = roles:/home/automata/roles
  964  host_key_checking = False
  965  ls
  966  ls
  967  ssh 10.255.8.103
  968  cd /home/mdp/
  969  ls
  970  cd mdp160
  971  ls
  972  tar tf gem.tgz 
  973  ls
  974  cd ..
  975  ls
  976  cd mdp161/
  977  vim deploy-mdp.sh 
  978  ls
  979  cd ..
  980  l
  981  ls
  982  cd ..
  983  ssh 10.255.8.98
  984  ssh s29
  985  ls
  986  docker ps 
  987  docker stop mysql-5..7
  988  docker stop mysql-5.7
  989  docker ps -a
  990  docker rm make
  991  ls
  992  docker images
  993  ls
  994  cd /data/Devops/
  995  ls
  996  cd monitor/
  997  ls
  998  cd automata/
  999  ls
 1000  sl
 1001  ls
 1002  cd /data/Devops/automata
 1003  cd roles/mdp-post-deploy/templates/gateway/
 1004  ls
 1005  cd ..
 1006  ls
 1007  cd ../
 1008  ls
 1009  cd ..
 1010  ls
 1011  cd ..
 1012  ls
 1013  ls roles/
 1014  ls roles/mdp-post-deploy/
 1015  ls roles/mdp-post-deploy/*
 1016  ls te
 1017  cd roles/mdp-post-deploy/templates/
 1018  ls
 1019  ls *
 1020  ls
 1021  cd ../
 1022  ls
 1023  cd ../
 1024  ls
 1025  cd ../
 1026  ls
 1027  cd ../
 1028  ls
 1029  rm -rf automata
 1030  git clone -b dp/1.6.2 git@git.dev.aone.ai:dev-ops/automata.git
 1031  cd automata
 1032  ls
 1033  ls roles/mdp-post-deploy/templates/*
 1034  ls
 1035  ls playbooks/
 1036  ls playbooks/mdp/
 1037  ls
 1038  ls group_vars/
 1039  ls
 1040  ls group_vars/
 1041  cd roles/
 1042  ls
 1043  ls mdp-post-deploy/
 1044  cd mdp-post-deploy/
 1045  ls
 1046  ls tasks/
 1047  cd templates/
 1048  ls
 1049  cd collect-agent/
 1050  ls
 1051  vim bootstrap-prod.yml
 1052  rm -f bootstrap-prod.yml
 1053  vim bootstrap.yml
 1054  rm -f bootstrap.yml
 1055  ls
 1056  vim bootstrap-prod.yml.j2 
 1057  vim bootstrap.yml.j2 
 1058  cd ..
 1059  ls
 1060  cd es-sql-engine/
 1061  ls
 1062  vim application-analyze.properties.j2 
 1063  vim bootstrap.properties.j2 
 1064  vim bootstrap.yml.j2 
 1065  cd ..
 1066  ls
 1067  cd executor/
 1068  ls
 1069  vim bootstrap-prod.yml.j2 
 1070  vim bootstrap.yml.j2 
 1071  cd ../
 1072  ls
 1073  cd galaxy/
 1074  ls
 1075  vim bootstrap-prod.yml
 1076  rm -f bootstrap-prod.yml
 1077  vim bootstrap-prod.yml.j2 
 1078  vim bootstrap.yml
 1079  ls
 1080  rm -f bootstrap.yml
 1081  ls
 1082  vim bootstrap.yml.j2 
 1083  ls
 1084  cd ../
 1085  ls
 1086  cd gateway/
 1087  ls
 1088  vim bootstrap-prod.yml
 1089  rm -f bootstrap-prod.yml
 1090  vim bootstrap-prod.yml.j2 
 1091  ls
 1092  vim bootstrap.yml
 1093  rm -f bootstrap.yml
 1094  vim bootstrap.yml.j2 
 1095  ls
 1096  vim bootstrap-prod.yml.j2 
 1097  ls
 1098  cd ..
 1099  ls
 1100  cd nodereport/
 1101  ls
 1102  vim nodeport.json.j2 
 1103  ls
 1104  cd ..
 1105  ls
 1106  cd rbac/
 1107  ls
 1108  vim bootstrap-prod.yml
 1109  rm -f bootstrap-prod.yml
 1110  vim bootstrap-prod.yml.j2 
 1111  ls
 1112  vim bootstrap.yml
 1113  rm -f bootstrap.yml
 1114  vim bootstrap.yml.j2 
 1115  ls
 1116  cd ..
 1117  ls
 1118  cd scheduler/
 1119  ls
 1120  vim bootstrap-prod.yml.j2 
 1121  ls
 1122  vim bootstrap.yml.j2 
 1123  cd ..
 1124  ls
 1125  cd summer/
 1126  ls
 1127  rm -f bootstrap-prod.yml
 1128  vim bootstrap-prod.yml.j2 
 1129  ls
 1130  vim bootstrap.yml.j2 
 1131  ls
 1132  rm -f bootstrap.yml
 1133  ls
 1134  rm -rf sql/
 1135  ls
 1136  cd ./../../
 1137  ls
 1138  cd tasks/
 1139  ls
 1140  cd ../../
 1141  ls
 1142  cd ..
 1143  ls
 1144  vim README.md 
 1145  ls
 1146  cd roles/
 1147  cd mdp-post-deploy/templates/es-sql-engine/
 1148  ls
 1149  cd ../../
 1150  cd ../
 1151  vim group_vars/mdp_service_configs.yml 
 1152  vim roles/mdp-post-deploy/templates/nodereport/nodeport.json.j2 
 1153  vim group_vars/mdp_service_configs.yml 
 1154  ls
 1155  git status
 1156  history > cmd
