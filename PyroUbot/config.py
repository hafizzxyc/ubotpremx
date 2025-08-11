import os
from dotenv import load_dotenv

load_dotenv(".env")

MAX_BOT = int(os.getenv("MAX_BOT", "100"))

DEVS = list(map(int, os.getenv("DEVS", "6085580585").split()))

API_ID = int(os.getenv("API_ID", "24139581"))

API_HASH = os.getenv("API_HASH", "3615dbe983baa65ef705df6ec858b486")

BOT_TOKEN = os.getenv("BOT_TOKEN", "8360414114:AAER9ppeLH-2kXDlwIW7jC8FDEVYEydjGAI")

OWNER_ID = int(os.getenv("OWNER_ID", "6085580585"))

BLACKLIST_CHAT = list(map(int, os.getenv("BLACKLIST_CHAT", "-1002125842026 -1002053287763 -1002044997044 -1002022625433 -1002050846285 -1002400165299 -1002416419679 -1001473548283").split()))

RMBG_API = os.getenv("RMBG_API", "ybwGCgqJngeYGQLiWAjxrYoz")

MONGO_URL = os.getenv("MONGO_URL", "mongodb+srv://ndygithub:ndygithub@averixubot.dafxjpw.mongodb.net/?retryWrites=true&w=majority&appName=averixubot")

LOGS_MAKER_UBOT = os.getenv("LOGS_MAKER_UBOT", "-1002711367879")

USER_GROUP = os.getenv("USER_GROUP", "@syredstricks")
