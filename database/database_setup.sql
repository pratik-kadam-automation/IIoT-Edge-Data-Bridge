-- Ensure the database matches your active local XAMPP environment
CREATE DATABASE IF NOT EXISTS smart_factory;
USE smart_factory;

-- Create the production table exactly as structured on your canvas pipeline
CREATE TABLE IF NOT EXISTS production_table (
    Order_ID VARCHAR(50) NOT NULL,
    Machine_ID VARCHAR(50) NOT NULL,
    Produced_Qty INT NOT NULL,
    SyncedStatus INT DEFAULT 0,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seed clean initial test entries to verify the Node-RED query filters
INSERT INTO production_table (Order_ID, Machine_ID, Produced_Qty, SyncedStatus) VALUES 
('ORD-2026-005', 'STRAW_SPM_01', 1200, 0),
('ORD-2026-006', 'STRAW_SPM_02', 3400, 0),
('ORD-2026-007', 'STRAW_SPM_01', 5000, 1);