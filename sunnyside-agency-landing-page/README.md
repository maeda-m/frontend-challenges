# Frontend Mentor - Sunnyside agency landing page solution

This is a solution to the [Sunnyside agency landing page challenge on Frontend Mentor](https://www.frontendmentor.io/challenges/sunnyside-agency-landing-page-7yVs3B6ef). Frontend Mentor challenges help you improve your coding skills by building realistic projects.

## Overview

### The challenge

Users should be able to:

- View the optimal layout for the site depending on their device's screen size
- See hover states for all interactive elements on the page

### Screenshot

| Desktop | Mobile |
| :-----: | :----: |
| ![Desktop](docs/assets/images/screenshot-desktop.png) | ![Mobile](docs/assets/images/screenshot-mobile.png) |

### Links

- https://sunnyside-agency-landing-page-blue.vercel.app/

## My process

### Developing

#### Running dev server

```
npm run dev
```

#### Running lint

```
npm run lint
```

### Built with

- Vue3 + Vite
  - without ESLint
  - without TypeScript
  - without JavaScript Test
  - with SVG loader
    - https://github.com/jpkleemans/vite-svg-loader
      - https://github.com/vuejs/rfcs/blob/sfc-improvements/active-rfcs/0000-sfc-script-setup.md
- Material Design Framework
  - [vuetifyjs/vuetify](https://github.com/vuetifyjs/vuetify)

### What I learned(in Japanese)

- Material Design ブレークポイントを style-guide.md の内容に変更しようとしたが諦めた
  - `createVuetify` にて `display.thresholds` を渡して JS は変更された
  - `plugin/vuetify.js` にて1行目に `$grid-breakpoints` を上書きする scss を import したが CSS は変更されなかった
- Vuetify3 のメニューやツールバーコンポーネントを利用したかったが、開発中のようなので諦めた

### Continued development

- [Composition API](https://v3.ja.vuejs.org/guide/composition-api-introduction.html)

### Useful resources

- https://www.atlassian.com/ja/git/tutorials/merging-vs-rebasing
- https://next.vuetifyjs.com/ja/components/cards/
- https://next.vuetifyjs.com/ja/components/app-bars/
- https://next.vuetifyjs.com/ja/components/avatars/

## Author

- [@maeda-m](https://github.com/maeda-m)
