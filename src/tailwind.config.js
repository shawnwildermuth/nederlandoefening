module.exports = {
  content: ["./content/**/*.{njk,md,html}"],
  darkMode: "class",
  theme: {
    extend: {
      fontFamily: {
        headings: ['"Noto Sans"', "sans-serif"],
        content: ['"Noto Sans"', "sans-serif"],
      },
      typography: ({ theme }) => ({
        DEFAULT: {
          css: {
            "--tw-prose-links": theme("colors.amber.600"),
            "--tw-prose-bold": theme("colors.gray.900"),
            "--tw-prose-quotes": theme("colors.gray.700"),
            "--tw-prose-quote-borders": theme("colors.amber.600"),
          },
        },
        invert: {
          css: {
            "--tw-prose-body": theme("colors.gray.200"),
            "--tw-prose-links": theme("colors.amber.500"),
            "--tw-prose-bold": theme("colors.gray.100"),
            "--tw-prose-quotes": theme("colors.gray.200"),
            "--tw-prose-quote-borders": theme("colors.amber.600"),
          },
        },
      }),
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
