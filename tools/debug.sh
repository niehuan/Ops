# "The following packages have pending transactions:"

yum-complete-transaction --cleanup-only

# TASK [mdp/services : Setup Summer Database] **************************************************************************************************************************************
# fatal: [10.255.8.214]: FAILED! => {"changed": true, "cmd": "mysql -uroot -pCollect%2017 -h10.255.8.214 summer < /tmp/automata/sql/summer.sql", "delta": "0:00:00.040834", "end": "2018-09-10 14:38:27.345222", "msg": "non-zero return code", "rc": 1, "start": "2018-09-10 14:38:27.304388", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1062 (23000) at line 2: Duplicate entry '1' for key 'PRIMARY'", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1062 (23000) at line 2: Duplicate entry '1' for key 'PRIMARY'"], "stdout": "", "stdout_lines": []}
rm -rf {{mysql data base directory}}