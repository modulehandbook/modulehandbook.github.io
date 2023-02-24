.PHONY : hugo # only necessary if file with same name exists
.RECIPEPREFIX = -
port=4342
hugo: open
- hugo --buildDrafts -p $(port) server
ps_hugo:
- ps -ax | grep "hugo server"
kill_all_hugo:
- ps -ax | grep "hugo server" | grep -v "grep" | sed -e "s/ tty.*//g" | xargs kill
open :
-  open http://localhost:$(port)

hugo/node_modules :
- npm install
