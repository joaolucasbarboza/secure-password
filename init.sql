CREATE SCHEMA IF NOT EXISTS secure_password;

CREATE TABLE IF NOT EXISTS secure_password.passwords (
    id SERIAL PRIMARY KEY,
    service VARCHAR(255),
    username VARCHAR(120) NOT NULL,
    password VARCHAR(120) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);