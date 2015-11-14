PYTHONPATH=''
/usr/local/bin/nosetests --with-xunit --all-modules --traverse-namespace --with-coverage --cover-package=./ --cover-inclusive
/usr/local/bin/coverage xml --include=./*
/usr/local/bin/pylint -f parseable -d I0011,R0801 *.py | tee pylint.out
