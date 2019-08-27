module.exports = function(eleventyConfig) {

  eleventyConfig.addPassthroughCopy('_assets')

  return {
    passthroughFileCopy: true,
    dir: {
      input: "_src",
      output: "_site",
      includes: "../_includes"
    }
  }
}
