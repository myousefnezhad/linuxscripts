sudo pacman -Syu python3 python-pip 
mkdir -p ~/.virtualenvs
cd ~/.virtualenvs
python3 -m venv debugpy
debugpy/bin/python -m pip install debugpy
