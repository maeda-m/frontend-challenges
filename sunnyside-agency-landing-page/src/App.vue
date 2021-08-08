<template>
  <v-app>
    <v-main>
      <v-card class="text-white">
        <v-img
          v-bind:src="`./images/${viewMode}/image-header.jpg`"
        >
          <v-toolbar>
            <v-card-title class="blue white--text ml-4 mr-0 mb-16">
              <h2>sunnyside</h2>
              <v-spacer></v-spacer>

              <v-menu
                bottom
                left
              >
                <v-list>
                  <v-list-item v-bind:class="viewMode" class="hamburger-menu">
                    <button><IconHamburger v-on:click="this.menu = !this.menu" /></button>
                  </v-list-item>
                  <v-list-item v-bind:class="viewMode" class="actions-menu">
                    <v-list-item-content>
                    <v-list-item-title><button>About</button></v-list-item-title>
                    </v-list-item-content>
                    <v-list-item-title><button>Services</button></v-list-item-title>
                    <v-list-item-title><button>Projects</button></v-list-item-title>
                    <v-list-item-title class="contact">
                      <button type="button" class="v-btn rounded-pill v-btn--size-default">
                        CONTACT
                      </button>
                    </v-list-item-title>
                  </v-list-item>
                </v-list>
              </v-menu>
            </v-card-title>
          </v-toolbar>

          <v-card-title class="text-center">
            <v-row>
              <v-col cols="12" class="mb-16">
                <h1>WE ARE CREATIVES</h1>
              </v-col>
              <v-col cols="12">
                <IconArrowDown />
              </v-col>
            </v-row>
          </v-card-title>
        </v-img>
      </v-card>

      <v-row no-gutters>
        <v-col sm="6" cols="12" class="order-sm-last">
          <v-img
            v-bind:src="`./images/${viewMode}/image-transform.jpg`"
          ></v-img>
        </v-col>
        <v-col sm="6" cols="12" class="order-sm-first">
          <v-col class="d-flex h-100 justify-center align-center">
            <v-col cols="8">
              <h2>Transform your brand</h2>
              <p class="dark-grayish-blue">We are a full-service creative agency specializing in helping brands grow fast. Engage your clients through compelling visuals that do most of the marketing for you.</p>
              
              <v-col class="pl-3">
                <a href="#">
                  <span class="soft-yellow-border-b">LEARN MORE</span>
                </a>
              </v-col>
            </v-col>
          </v-col>
        </v-col>
      </v-row>

      <v-row no-gutters>
        <v-col sm="6" cols="12">
          <v-img
            v-bind:src="`./images/${viewMode}/image-stand-out.jpg`"
          ></v-img>
        </v-col>
        <v-col sm="6" cols="12">
          <v-col class="d-flex h-100 justify-center align-center">
            <v-col cols="8">
              <h2>Stand out to the right audience</h2>
              <p class="dark-grayish-blue">Using a collaborative formula of designers, researchers, photographers, videographers, and copywriters, we'll build and extend your brand in digital places.</p>

              <v-col class="pl-3">
                <a href="#">
                  <span class="soft-red-border-b">LEARN MORE</span>
                </a>
              </v-col>
            </v-col>
          </v-col>
        </v-col>
      </v-row>

      <v-row no-gutters>
        <v-col sm="6" cols="12">
          <v-card>
            <v-img
              v-bind:src="`./images/${viewMode}/image-graphic-design.jpg`"
            >
              <v-col class="d-flex h-100 justify-center align-end text-center">
                <v-col cols="7" class="graphic-design-text">
                  <h3>Graphic Design</h3>
                  <p>Grate design makes you memorable. We deliver artwork that underscores your brand message and captures potential clients' attention.</p>
                </v-col>
              </v-col>
            </v-img>
          </v-card>
        </v-col>
        <v-col sm="6" cols="12">
          <v-card>
            <v-img
              v-bind:src="`./images/${viewMode}/image-photography.jpg`"
            >
              <v-col class="d-flex h-100 justify-center align-end text-center">
                <v-col cols="7" class="photography-text">
                  <h3>Photography</h3>
                  <p>Increase your credibility by getting the most stunning, high-quality photos that improve your business image.</p>
                </v-col>
              </v-col>
            </v-img>
          </v-card>
        </v-col>
      </v-row>

      <v-row class="client-testimonials d-flex justify-center">
        <v-col cols="12">
          <h4>CLIENT TESTIMONIALS</h4>
        </v-col>

        <v-col sm="3" cols="7">
          <v-avatar
            size="64px"
          >
            <v-img
              src="./images/image-emily.jpg"
            >
            </v-img>
          </v-avatar>
          <p>We put our trust in Sunnyside and they delivered, marking sure our needs where met and deadlines were always hit.</p>

          <strong>Emily R.</strong>
          <small>Marketing Director</small>
        </v-col>

        <v-col sm="3" cols="7">
          <v-avatar
            size="64px"
          >
            <v-img
              src="./images/image-thomas.jpg"
            >
            </v-img>
          </v-avatar>
          <p>Sunnyside's enthusiasm coupled with their keen interest in our brand's success made it a satisfying and enjoyable experience.</p>

          <strong>Thomas S.</strong>
          <small>Chief Operating Officer</small>
        </v-col>

        <v-col sm="3" cols="7">
          <v-avatar
            size="64px"
          >
            <v-img
              src="./images/image-jennie.jpg"
            >
            </v-img>
          </v-avatar>
          <p>Incredible end result! Our sales increased over 400% when we worked with Sunnyside Highly recommended!</p>

          <strong>Jennie F.</strong>
          <small>Business Owner</small>
        </v-col>
      </v-row>

      <v-row no-gutters>
        <v-col sm="3" cols="6">
          <v-img
            src="./images/desktop/image-gallery-milkbottles.jpg"
          ></v-img>
        </v-col>
        <v-col sm="3" cols="6">
          <v-img
            src="./images/desktop/image-gallery-orange.jpg"
          ></v-img>
        </v-col>
        <v-col sm="3" cols="6">
          <v-img
            src="./images/desktop/image-gallery-cone.jpg"
          ></v-img>
        </v-col>
        <v-col sm="3" cols="6">
          <v-img
            src="./images/desktop/image-gallery-sugarcubes.jpg"
          ></v-img>
        </v-col>
      </v-row>

      <v-row class="footer text-center">
        <v-col cols="12" class="mt-16">
          <h2>sunnyside</h2>
        </v-col>
        <v-col cols="12">
          <v-col class="d-flex h-100 justify-center align-center">
            <v-list>
              <v-list-item>
                <v-list-item-title><button>About</button></v-list-item-title>
                <v-list-item-title><button>Services</button></v-list-item-title>
                <v-list-item-title><button>Projects</button></v-list-item-title>
              </v-list-item>
            </v-list>
          </v-col>
        </v-col>
        <v-col cols="12" class="mb-16">
          <button
            v-for="(icon, i) in icons" :key="i"
          >
            <v-icon
              class="px-6"
            >
              mdi-{{icon}}
            </v-icon>
          </button>
        </v-col>
      </v-row>

    </v-main>
    <v-footer padless>
      <v-col
        class="text-center"
        cols="12"
      >
        Challenge by <a href="https://www.frontendmentor.io?ref=challenge" target="_blank">Frontend Mentor</a>. 
        Coded by <a href="https://github.com/maeda-m">@maeda-m</a>.
      </v-col>
    </v-footer>
  </v-app>
</template>

<script setup>
import Logo from './assets/logo.svg'
import IconArrowDown from './assets/icon-arrow-down.svg'
import IconHamburger from './assets/icon-hamburger.svg'
</script>

<script>
export default {
  name: 'App',

  components: {
  },

  data() {
    return {
      icons: [
        'facebook',
        'instagram',
        'twitter-retweet',
        'pinterest'
      ],
      width: 0,
      menu: false,
    }
  },

  mounted() {
    this.onResize();
    window.addEventListener('resize', this.onResize);
  },

  computed: {
    viewMode() {
      return this.width <= 599 ? 'mobile' : 'desktop'
    },
  },

  methods: {
    onResize() {
      this.width = window.innerWidth;
    },
  },

}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Barlow:wght@600&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Fraunces:wght@700;900&display=swap');

html {
  font-size: 18px;
  font-family: 'Fraunces';
  font-weight: 700;
}

v-toolbar {
  font-family: 'Barlow';

  .v-list-item {
    &.hamburger-menu {
      &.desktop {
        display: none;
      }
    }

    &.actions-menu {
      &.mobile {
        display: none;
      }
    }

  }

  .v-list-item-title {
    &.contact {
      color: white;
      font-family: 'Fraunces';

      button {
        color: rgb(var(--v-theme-on-background));
        background-color: white;
        padding: 15px 20px;

        &:hover {
          color: white;
          background-color: hsl(200, 100%, 72%);
        }
      }
    }
  }
}

.v-list-item-title {
  padding: 0 20px;
  font-size: 14px;
}

h1, h2, h3, h4 {
  font-weight: 900;
}

h1 {
  font-size: 2.1rem;
  letter-spacing: 0.6rem;
}

h2 {
  font-size: 1.9rem;
  line-height: 1;
}

.h-100 {
  height: 100%;
}

p {
  margin-top: 30px;
  margin-bottom: 30px;
  font-family: 'Barlow';
  font-weight: 600;
  font-size: 15px;
  line-height: 24px;
}

a {
  text-decoration: none !important;
  color: rgb(var(--v-theme-on-background));
  font-size: 14px;

  &.footer {
    @extend .footer;
  }
}

.border-bottom-with-rounded {
  content: "";
  display: block;
  position: relative;
  z-index: -1;
  top: -10px;
  left: -10px;
  border-radius: 10px;
  height: 8px;
  width: 120px;
}

.border-bottom-with-rounded:not(:hover) {
  opacity: .4;
}

.soft-red-border-b:after {
  @extend .border-bottom-with-rounded;
  background-color: hsl(7, 99%, 70%);
}

.soft-yellow-border-b:after {
  @extend .border-bottom-with-rounded;
  background-color: hsl(51, 100%, 49%);
}

.card-text {
  h3 {
    font-size: 1.4rem;
  }

  p {
    font-size: 14px;
  }
}

.graphic-design-text {
  @extend .card-text;
  color: hsl(167, 40%, 24%);
}

.photography-text {
  @extend .card-text;
  color: hsl(198, 62%, 26%);
}

.client-testimonials {
  text-align: center;
  padding-top: 150px;
  padding-bottom: 150px;

  h4 {
    @extend .grayish-blue;
    margin-bottom: 40px;
    letter-spacing: 4px;
  }

  p {
    @extend .very-dark-grayish-blue;
    margin-top: 50px;
    margin-bottom: 40px;
    font-size: 15px;
    line-height: 2;
  }

  strong {
    display: block;
  }

  small {
    @extend .grayish-blue;
    font-size: 12px;
    font-weight: normal;
    font-family: 'Barlow';
  }
}

.footer {
  background-color: hsl(167, 44%, 70%);
  color: hsl(168, 34%, 41%) !important;
  font-family: 'Barlow';

  button {
    &:hover {
      color: white !important;
    }
  }
}

.very-dark-desaturated-blue {
  color: hsl(212, 27%, 19%);
}

.very-dark-grayish-blue {
  color: hsl(213, 9%, 39%);
}

.dark-grayish-blue {
  color: hsl(232, 10%, 55%);
}

.grayish-blue {
  color: hsl(210, 4%, 67%);
}

footer {
  font-size: 11px;

  a {
    color: hsl(228, 45%, 44%);
  }
}
</style>
