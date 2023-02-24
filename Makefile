.PHONY : hugo # only necessary if file with same name exists
.RECIPEPREFIX = -
port=4342
hugo: open
- hugo --buildDrafts -p $(port) server
hugoP: open
- hugo  -p $(port) server
ps_hugo:
- ps -ax | grep "hugo server"
kill_all_hugo:
- ps -ax | grep "hugo server" | grep -v "grep" | sed -e "s/ tty.*//g" | xargs kill
open :
-  open http://localhost:$(port)

# pip3 install pyyaml
# call with make yaml yf=
yaml:
- python3 -c 'import yaml, sys; print(yaml.safe_load(sys.stdin))' < $(yf)
