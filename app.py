from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route("/")
def home():
    try:
        conn = psycopg2.connect(
            host=os.environ.get("DB_HOST"),
            database=os.environ.get("DB_NAME"),
            user=os.environ.get("DB_USER"),
            password=os.environ.get("DB_PASSWORD"),
            port=5432
        )
        cur = conn.cursor()
        cur.execute("SELECT version();")
        db_version = cur.fetchone()
        cur.close()
        conn.close()
        return f"✅ Connected to PostgreSQL!\nVersion: {db_version}"
    except Exception as e:
        return f"❌ Failed to connect to PostgreSQL\nError: {e}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
# This is a simple Flask application that connects to a PostgreSQL database.