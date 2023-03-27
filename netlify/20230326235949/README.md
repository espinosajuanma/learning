# Use `BRANCH` environment variable for sub-domains

Working on a website built with `Astro` I wanted to have a sub-domain
with a totally different configuration and source files.

Netlify set by default the `BRANCH` environment variable for the current
branch the website is build from.

The main goal is to share in both branches the same source code without
diverge too much of none from each other.

It was easy to setup in the `astro.config.mjs` file:

```js
let sourceDir = './src';
if (process.env.BRANCH === 'link') {
  sourceDir = './link';
}

export default defineConfig({
  srcDir: sourceDir,
});
```

So in this case only if the `BRANCH` is `link` it will override the
source directory.

Other thing I wanted to be able to do dynamically on the build was to
copy a `_redirects` file only for my `main` branch. At the beginning I
set this file in the `public` directory, but I share some files with the
`link` sub-domain in that branch.

My solution was to create a hook file and modify my build script to run
that after the astro build.

```bash
astro build && node afterBuild.js
```

This `afterBuild.js` script just copy a file from an arbitrary folder to
the `dist` directory. Only if the `BRANCH` is equals to `main`.
