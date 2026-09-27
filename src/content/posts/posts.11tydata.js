module.exports = {
  layout: "layouts/post.njk",
  tags: ["posts"],
  eleventyComputed: {
    permalink: (data) => {
      const d = new Date(data.date);
      const yyyy = d.getUTCFullYear();
      const mm = String(d.getUTCMonth() + 1).padStart(2, "0");
      const dd = String(d.getUTCDate()).padStart(2, "0");
      return `/${yyyy}/${mm}/${dd}/${data.page.fileSlug}/`;
    },
  },
};
