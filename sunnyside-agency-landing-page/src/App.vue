<template>
  <v-app>
    <v-main>
      <v-card>
        <v-img
          src="./images/desktop/image-header.jpg"
        >
          <v-app-bar
            flat
          >
            <v-toolbar-title>sunnyside</v-toolbar-title>
            <v-card-actions>
              <v-btn class="text-capitalize">About</v-btn>
              <v-btn class="text-capitalize">Services</v-btn>
              <v-btn class="text-capitalize">Projects</v-btn>
              <v-btn>CONTACT</v-btn>
            </v-card-actions>
          </v-app-bar>

          <v-card-title><h1>WE ARE CREATIVES</h1></v-card-title>
          <v-card-title>&darr;</v-card-title>
        </v-img>
      </v-card>

      <v-row no-gutters>
        <v-col sm="6" cols="12" class="order-sm-last">
          <v-img
            src="./images/desktop/image-transform.jpg"
          ></v-img>
        </v-col>
        <v-col sm="6" cols="12" class="order-sm-first">
          <h2>Transform your brand</h2>
          <p>We are a full-service creative agency specializing in helping brands grow fast. Engage your clients through compelling visuals that do most of the marketing for you.</p>

          <a href="#">LEARN MORE</a>
        </v-col>
      </v-row>

      <v-row no-gutters>
        <v-col sm="6" cols="12">
          <v-img
            src="./images/desktop/image-stand-out.jpg"
          ></v-img>
        </v-col>
        <v-col sm="6" cols="12">
          <h2>Stand out to the right audience</h2>
          <p>Using a collaborative formula of designers, researchers, photographers, videographers, and copywriters, we'll build and extend your brand in digital places.</p>

          <a href="#">LEARN MORE</a>
        </v-col>
      </v-row>

      <v-row no-gutters>
        <v-col sm="6" cols="12">
          <v-card>
            <v-img
              src="./images/desktop/image-graphic-design.jpg"
            >
              <v-card-title><h2>Graphic Design</h2></v-card-title>
              <v-card-title>Grate design makes you memorable. We deliver artwork that underscores your brand message and captures potential clients' attention.</v-card-title>
            </v-img>
          </v-card>
        </v-col>
        <v-col sm="6" cols="12">
          <v-card>
            <v-img
              src="./images/desktop/image-photography.jpg"
            >
              <v-card-title><h2>Photography</h2></v-card-title>
              <v-card-title>Increase your credibility by getting the most stunning, high-quality photos that improve your business image.</v-card-title>
            </v-img>
          </v-card>
        </v-col>
      </v-row>

      <v-row class="text-center">
        <v-col cols="12">
          <h2>CLIENT TESTIMONIALS</h2>
        </v-col>

        <v-col sm="4" cols="12">
          <v-avatar
            size="64px"
          >
            <v-img
              src="./images/image-emily.jpg"
            >
            </v-img>
          </v-avatar>
          <p>We put our trust in Sunnyside and they delivered, marking sure our needs where met and deadlines were always hit.</p>

          <p><strong>Emily R.</strong></p>
          <p><small>Marketing Director</small></p>
        </v-col>

        <v-col sm="4" cols="12">
          <v-avatar
            size="64px"
          >
            <v-img
              src="./images/image-thomas.jpg"
            >
            </v-img>
          </v-avatar>
          <p>Sunnyside's enthusiasm coupled with their keen interest in our brand's success made it a satisfying and enjoyable experience.</p>

          <p><strong>Thomas S.</strong></p>
          <p><small>Chief Operating Officer</small></p>
        </v-col>

        <v-col sm="4" cols="12">
          <v-avatar
            size="64px"
          >
            <v-img
              src="./images/image-jennie.jpg"
            >
            </v-img>
          </v-avatar>
          <p>Incredible end result! Our sales increased over 400% when we worked with Sunnyside Highly recommended!</p>

          <p><strong>Jennie F.</strong></p>
          <p><small>Business Owner</small></p>
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

      <v-row class="text-center bg-teal-lighten-4">
        <v-col cols="12">
          <strong>sunnyside</strong>
        </v-col>
        <v-col cols="12">
          <v-btn class="text-capitalize">About</v-btn>
          <v-btn class="text-capitalize">Services</v-btn>
          <v-btn class="text-capitalize">Projects</v-btn>
        </v-col>
        <v-col cols="12">
          <v-btn icon
            v-for="(svg, i) in icons"
            v-bind:key="i"
          >{{svg}}</v-btn>
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

<script>
export default {
  name: 'App',

  components: {
  },

  data() {
    return {
      icons: [
        'IconFacebook',
        'IconInstagram',
        'IconTwitter',
        'IconPinterest',
      ]
    }
  },
}
</script>

<style lang="scss">
@import "https://fonts.googleapis.com/css?family=Barlow";
@import "https://fonts.googleapis.com/css?family=Fraunces";

html {
  font-size: 18px;
  background-color: hsl(0, 0%, 100%);
  color: hsl(0, 0%, 100%);
}

footer {
  font-size: 11px;

  a {
    color: hsl(228, 45%, 44%);
  }
}
</style>
