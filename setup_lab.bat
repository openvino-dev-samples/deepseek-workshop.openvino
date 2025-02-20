@echo off

echo Creating Python environment...
call "C:\Users\%USERNAME%\miniconda3\Scripts\conda" create -n deepseek_openvino python=3.10 -y

echo Activating environment...
call "C:\Users\%USERNAME%\miniconda3\Scripts\activate.bat" deepseek_openvino

echo Installing requirements...
python -m pip install --upgrade pip
pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
pip install --pre openvino-genai==2025.1.0.0.dev20250211 --extra-index-url https://storage.openvinotoolkit.org/simple/wheels/nightly

echo Checking installed packages...
conda list


echo Installation complete!
pause
