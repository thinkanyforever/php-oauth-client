CREATE TABLE IF NOT EXISTS states (
    client_config_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    scope VARCHAR(1024) NOT NULL,
    issue_time INTEGER NOT NULL,
    state VARCHAR(255) NOT NULL,
    UNIQUE (client_config_id , user_id , scope),
    PRIMARY KEY (state)
);

CREATE TABLE IF NOT EXISTS access_tokens (
    client_config_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    scope VARCHAR(1024) NOT NULL,
    issue_time INTEGER NOT NULL,
    access_token VARCHAR(255) NOT NULL,
    token_type VARCHAR(255) NOT NULL,
    expires_in INTEGER DEFAULT NULL,
    UNIQUE (client_config_id , user_id , scope)
);

CREATE TABLE IF NOT EXISTS refresh_tokens (
    client_config_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    scope VARCHAR(1024) NOT NULL,
    issue_time INTEGER NOT NULL,
    refresh_token VARCHAR(255) DEFAULT NULL,
    UNIQUE (client_config_id , user_id , scope)
);
