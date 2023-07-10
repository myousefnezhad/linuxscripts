sudo apt install python3 python3-pip python3-venv -y
mkdir -p ~/.virtualenvs
cd ~/.virtualenvs
python3 -m venv debugpy
debugpy/bin/python -m pip install debugpy
