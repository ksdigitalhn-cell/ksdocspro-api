-- ============================================================
-- KS Docs Pro — Script de base de datos inicial
-- Ejecutar DESPUÉS de correr: pnpm --filter @workspace/db run push
-- O usar directamente en psql para crear las tablas manualmente
-- ============================================================

-- Crear base de datos (ejecutar como superusuario postgres)
-- CREATE DATABASE ksdocspro;
-- CREATE USER ksdocs WITH ENCRYPTED PASSWORD 'tu_contraseña';
-- GRANT ALL PRIVILEGES ON DATABASE ksdocspro TO ksdocs;

-- ============================================================
-- Datos iniciales de las dos empresas
-- (Ejecutar después de que drizzle-kit haya creado las tablas)
-- ============================================================

-- Agencia de Medios Publicitarios KS
INSERT INTO companies (name, legal_name, ruc, address, phone, email, website, country, city, legal_rep, legal_rep_id, created_at, updated_at)
VALUES (
  'Agencia de Medios Publicitarios KS',
  'Agencia de Medios Publicitarios KS Sociedad de Responsabilidad Limitada',
  '08019000000000',
  'Tegucigalpa, M.D.C., Honduras',
  '+504 2000-0000',
  'contacto@agenciaks.com',
  'www.agenciaks.com',
  'Honduras',
  'Tegucigalpa',
  'Representante Legal KS',
  '0801000000000',
  NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- Profession Connect S.A.
INSERT INTO companies (name, legal_name, ruc, address, phone, email, website, country, city, legal_rep, legal_rep_id, created_at, updated_at)
VALUES (
  'Profession Connect S.A.',
  'Inversiones Tecnológicas y Talento Humano Profession Connect Sociedad Anónima',
  '08019024108569',
  'Edificio Centro Morazán, Piso 8 Torre 2 Local 20817, Tegucigalpa, M.D.C., Honduras',
  '+504 3333-0467',
  'info@professionconnect.com',
  'www.professionconnect.com',
  'Honduras',
  'Tegucigalpa',
  'Gustavo Noel Argueta Zelaya',
  '0801198522949',
  NOW(), NOW()
) ON CONFLICT DO NOTHING;
