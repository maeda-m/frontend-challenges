<template>
  <footer>
    <h1>
    </h1>

    <nav>
      <ul>
        <li>
          <strong>Features</strong>
          <ul class="features">
            <li><a href="#">Link Shortening</a></li>
            <li><a href="#">Branded Links</a></li>
            <li><a href="#">Analytics</a></li>
          </ul>
        </li>
        <li>
          <strong>Resources</strong>
          <ul class="resources">
            <li><a href="#">Blog</a></li>
            <li><a href="#">Developers</a></li>
            <li><a href="#">Support</a></li>
          </ul>
        </li>
        <li>
          <strong>Company</strong>
          <ul class="company">
            <li><a href="#">About</a></li>
            <li><a href="#">Our Team</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </li>
        <!-- TODO divider -->
        <li><a href="#"><fa icon="facebook-square" type="fab"></fa></a></li>
        <li><a href="#"><fa icon="twitter" type="fab"></fa></a></li>
        <li><a href="#"><fa icon="pinterest" type="fab"></fa></a></li>
        <li><a href="#"><fa icon="instagram" type="fab"></fa></a></li>
      </ul>
    </nav>
  </footer>
</template>

<script>
export default {
  components: {
  },

  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
.fa {
  @apply w-6;
}
</style>
