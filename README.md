# hadoop/spark cluster config file

1, `git clone https://github.com/enali/bd_cfg`

2, `cd bd_cfg ; ./run.sh`

3, edit `~/.bashrc`, add 

```sh
if [ -f ~/.bd_env ]; then
  . ~/.bd_env
fi
if [ -f ~/.bd_aliases ]; then
  . ~/.bd_aliases
fi
```
