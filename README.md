# Install

```sh
git clone git://github.com/skkzsh/.emacs.d.git
cd .emacs.d
git submodule init
git submodule update
```

# Update

```sh
cd .emacs.d
git pull origin master

git submodule init
git submodule update
git submodule foreach 'git checkout master; git pull'
```
