import { createApp } from 'vue'
import App from '../App.vue'

import { FontAwesomeIcon } from "@/plugins/font-awesome";

import 'virtual:windi-base.css'
import 'virtual:windi-components.css'
import 'virtual:windi-utilities.css'

const app = createApp(App).component("fa", FontAwesomeIcon)

app.mount('#app')
