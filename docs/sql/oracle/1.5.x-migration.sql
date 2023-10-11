-- Migrate data
-- TABLES

-- For table mobile_app
INSERT INTO mus_mobile_app SELECT * FROM mobile_app;

-- For table certificate
INSERT INTO mus_certificate SELECT * FROM mobile_ssl_pinning;



-- Drop old tables
DROP TABLE mobile_ssl_pinning CASCADE CONSTRAINTS;
DROP TABLE mobile_app CASCADE CONSTRAINTS;

-- Drop old sequences
DROP SEQUENCE mobile_ssl_pinning_seq;
DROP SEQUENCE mobile_app_seq;

