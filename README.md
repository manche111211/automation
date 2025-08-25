# automation
Robot framework and Python

# Initialize project

python3 -m venv venv

source venv/bin/activate

Install the certain dependency over the file requirement.txt by the command pip install ...


Structure project:

automation/
│
├── api_test/
│   ├── example.robot
│   └── api_tests.robot
├── web_test/
│   ├── example.robot
│   └── api_tests.robot
├── app_test/
│   ├── example.robot
│   └── api_tests.robot
│
├── resources/
│   └── keywords.robot   # custom reusable keywords
│
├── libraries/
│   └── mylib.py         # custom Python libraries