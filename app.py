from flask import Flask
from flask_jwt_extended import JWTManager
from flask_cors import CORS
from dotenv import load_dotenv
load_dotenv()
import os

from routes.employee_route import employee_bp


app = Flask(__name__)

CORS(
    app,
    origins="http://localhost:5173",
    supports_credentials=True,
    allow_headers=["Content-Type", "Authorization"],
    methods=["GET", "POST", "PUT", "DELETE","PATCH", "OPTIONS"]
)

app.config["JWT_SECRET_KEY"] = os.getenv("JWT_SECRET_KEY")
app.config["JWT_TOKEN_LOCATION"] = ["cookies"]
app.config["JWT_COOKIE_CSRF_PROTECT"] = False # True nếu frontend và backend khác domain
app.config["JWT_ACCESS_COOKIE_NAME"] = "access_token_cookie"
app.config["JWT_REFRESH_COOKIE_NAME"] = "refresh_token_cookie"


app.config["JWT_ACCESS_TOKEN_EXPIRES"] = 5*60*60 # 5 giờ
app.config["JWT_REFRESH_TOKEN_EXPIRES"] = 15*60*60*24 # 15 ngày
app.config["JWT_COOKIE_SAMESITE"] = "Lax"
app.config["JWT_COOKIE_SECURE"] = False # True nếu dùng HTTPS

# 🔥 dùng blacklist
app.config["JWT_BLACKLIST_ENABLED"] = True

jwt = JWTManager(app)

# lưu token bị revoke
blacklist = set()

@jwt.token_in_blocklist_loader
def check_if_token_revoked(jwt_header, jwt_payload):
    return jwt_payload["jti"] in blacklist


# Routes


app.register_blueprint(employee_bp, url_prefix="/api")



if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=5000,
        debug=False
    )