<template>
  <main>
    <section>
      <h2>More than just shorter links</h2>
      <small>Build your brand’s recognition and get detailed insights on how your links are performing.</small>

      <button class="btn-primary">Get Started</button>

      <figure>
      </figure>
    </section>

    <section class="bg-gray-50">
      <section class="shorten">
        <form action="#">
          <input type="text" placeholder="Shorten a link here...">
          <button type="submit" class="btn-primary">Shorten It!</button>
        </form>

        <article>
          <!-- TODO -->
        </article>
      </section>

      <section>
        <h3>Advanced Statistics</h3>
        <small>Track how your links are performing across the web with our advanced statistics dashboard.</small>

        <article>
          <article>
            <h4>Brand Recognition</h4>
            <p>Boost your brand recognition with each click. Generic links don’t mean a thing. Branded links help instil confidence in your content.</p>
          </article>

          <article>
            <h4>Detailed Records</h4>
            <p>Gain insights into who is clicking your links. Knowing when and where people engage with your content helps inform better decisions.</p>
          </article>

          <article>
            <h4>Fully Customizable</h4>
            <p>Improve brand awareness and content discoverability through customizable links, supercharging audience engagement.</p>
          </article>
        </article>
      </section>
    </section>

    <section class="boost">
      <h3>Boost your links today</h3>
      <button class="btn-primary">Get Started</button>
    </section>
  </main>
</template>

<script>
export default {
  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
.shorten {
  background-image: url("@/images/bg-boost-desktop.svg");
}

.boost {
  background-image: url("@/images/bg-shorten-desktop.svg");
}
</style>
