import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()],
  base: process.env.NODE_ENV === 'production' ? '/career-tracker-frontend/' : '/',
  server: {
    port: 5173,
    proxy: {
      '/api': {
        target: 'http://localhost:8000',  // 👈 Your FastAPI port
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '/api'), // optional
      },
    },
  },
});
