# pyenviron

This script allows you to run a python app with a single command in a repeatable way.

This is for debian based distros only.

to use:
``` shell
pyenviron.sh virtualenvname 
```

It will will install all of the programs in requirements.txt.

If you have a run.txt setup it will start the app in the virtualenv.

The run.txt file should have the single command neede to start your app. For example.

``` python
gunicorn /myproject/myproject.wsgi
```

Using this script you can run one command and have a whole environment installed and running.


