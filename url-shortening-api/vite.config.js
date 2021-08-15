import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import RubyPlugin from 'vite-plugin-ruby'
import FullReload from 'vite-plugin-full-reload'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    RubyPlugin(),
    FullReload([
      'config/routes.rb',
      'app/views/**/*',
    ])
  ],
  // See: https://github.com/vitejs/vite/issues/1153
  server: {
    watch: {
      usePolling: true
    }
  },
})
