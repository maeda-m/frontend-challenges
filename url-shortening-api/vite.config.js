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
  ]
})
