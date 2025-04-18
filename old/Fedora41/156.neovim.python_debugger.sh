sudo dnf install python3 python3-pip -y
mkdir -p ~/.virtualenvs
cd ~/.virtualenvs
python3 -m venv debugpy
debugpy/bin/python -m pip install debugpy
