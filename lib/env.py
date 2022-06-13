from pathlib import Path
from dotenv import load_dotenv

basepath = Path()
basedir = str(basepath.cwd())
env = basepath.cwd() / '.env'
load_dotenv(env)