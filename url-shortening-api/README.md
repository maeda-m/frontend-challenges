# Frontend Mentor - Shortly URL shortening API Challenge solution

This is a solution to the [Shortly URL shortening API Challenge challenge on Frontend Mentor](https://www.frontendmentor.io/challenges/url-shortening-api-landing-page-2ce3ob-G). Frontend Mentor challenges help you improve your coding skills by building realistic projects. 

## Overview

### The challenge

Users should be able to:

- View the optimal layout for the site depending on their device's screen size
- Shorten any valid URL
- See a list of their shortened links, even after refreshing the browser
- Copy the shortened link to their clipboard in a single click
- Receive an error message when the `form` is submitted if:
  - The `input` field is empty

### Screenshot

| Desktop | Mobile |
| :-----: | :----: |
| ![Desktop](docs/assets/images/screenshot-desktop.png) | ![Mobile](docs/assets/images/screenshot-mobile.png) |

### Links

- TODO

## My process

### Developing

1. Docker run
```
docker-compose up -d
```
2. Running dev server
```
docker-compose exec rails bash
bin/vite dev
```

### Built with

- Backend
  - Rails for API-only
- Frontend
  - Vite Ruby + Vue3

### What I learned(in Japanese)

- Vite Ruby のホットリロードがうまくいかない
  - タイムゾーンを合わせたりしたが、template 内の text 変更は即時反映はされない
  - WebSocket の通信は接続までできている（ `[vite] connected.` ）

### Continued development

- ES Modules
  - https://github.com/rails/importmap-rails/

### Useful resources

- https://guides.rubyonrails.org/api_app.html
- https://vite-ruby.netlify.app/

## Author

- [@maeda-m](https://github.com/maeda-m)
