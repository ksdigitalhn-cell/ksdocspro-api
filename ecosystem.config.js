// PM2 — Gestor de procesos para Node.js
// Instalar: npm install -g pm2
// Iniciar:  pm2 start ecosystem.config.js
// Auto-inicio: pm2 startup && pm2 save

module.exports = {
  apps: [
    {
      name: "ksdocspro-api",
      script: "./api/index.mjs",
      env: {
        NODE_ENV: "production",
        PORT: 8080,
        DATABASE_URL: "postgresql://usuario:contraseña@localhost:5432/ksdocspro",
        SESSION_SECRET: "cambia_esto",
        // OpenAI: elige una de las dos opciones:
        // Opción A — API directa de OpenAI:
        AI_INTEGRATIONS_OPENAI_API_KEY: "sk-proj-tu-api-key-aqui",
        AI_INTEGRATIONS_OPENAI_BASE_URL: "https://api.openai.com/v1",
        // Opción B — Azure OpenAI (si tienes suscripción):
        // AI_INTEGRATIONS_OPENAI_API_KEY: "tu-azure-key",
        // AI_INTEGRATIONS_OPENAI_BASE_URL: "https://TU-INSTANCIA.openai.azure.com/openai/deployments/gpt-4o",
      },
    },
  ],
};
