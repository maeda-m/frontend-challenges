import { defineConfig } from 'vite-plugin-windicss'

export default defineConfig({
  extract: {
    include: [
      'app/views/**/*.{html,erb}',
      'app/helpers/**/*.rb',
      'app/frontend/**/*.{vue,js}',
    ],
  },
  theme: {
    extend: {
      // See: https://github.com/windicss/windicss/blob/v1.2.0/src/config/colors.config.ts
      colors: {
        black: 'hsl(255, 11%, 22%)',
        cyan: {
          50: '#98e4e4',
          100: '#32cccc',
          200: 'hsl(180, 66%, 49%)',
          400: '#2d9999',
        },
        red: 'hsl(0, 87%, 67%)',
        gray: {
          50: '#f0f1f6',
          100: 'hsl(0, 0%, 75%)',
        },
        violet: {
          50: 'hsl(257, 7%, 63%)',
          100: 'hsl(257, 27%, 26%)',
          200: 'hsl(260, 8%, 14%)',
        },
      },
    },
  },
})
