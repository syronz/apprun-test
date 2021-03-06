# AppRun Site App

## Introduction

This is an application built using [AppRun Site](https://github.com/yysun/apprun-site), an framework for building [AppRun](https://github.com/yysun/apprun) applications.

## Features

* Progressive Web App (PWA) - support offline
* Single Page App (SPA) - routing using / or #
* 4 built-in layouts and bring your own
* Compile html, markdown pages to AppRun components
* Auto generate the index of pages
* Build app logic using AppRun/Web components
* Targets ES5 or ES Module


## Project Structure

This app has the following structure.

```
public/
src/
  components/
  layout/
  layout-bootstrap/
  layout-coreui/
  layout-material/
  pages/
    home.tsx
    contact.tsx
    about.tsx
  index.tsx   <=== main entry
  tsconfig.json
.gitignore
package.json
webpack.config.js
```
## Run the Application

Use _npm_ commands

* Use _npm install_ to install apprun, typescript and webpack
* Use _npm start_ to start the dev server
* Use _npm run build_ to build for production


## Public Directory

The **public** directory contains the files you can deploy to your hosting server after running _npm run build_.

## Layout

There are four layouts included under the **src/** directory for you to try out.

* Default - best for documentation site
* Bootstrap - start point of bootstrap
* CoreUI - best for admin UI / business apps
* Material Design - best for mobile web app

### Switch Layouts

You can rename the layout directory to switch the layouts.

* To use the bootstrap layout, rename _layout-bootstrap_ to _layout_

* To use the coreUI layout, rename _layout-coreui_ to _layout_

* To use the material layout, rename _layout-material_ to _layout_

### Use Your Own Layout

If you have your own design, you can create your own layout component and put it in the layout directory.

## Pages

The pages are under the **src/pages** directory. The pages can be AppRun components, HTML files or markdown files.

There are sample pages:

* Home: A page that redirects to /README.md
* Contact: An AppRun component page with a web component inside
* About: An markdown page has a web component to demonstrate async fetch

> Try to edit the sample pages. And add or delete some pages. If you have started the app using _npm start_, you changes should be displayed in the browser automatically.


## PWA

This application includes a service worker from [PWA Builder](https://www.pwabuilder.com/).

The service worker is the advanced caching service worker that allows you to configure files and routes that are cached in different manners (pre-cache, network/server first, cache first, etc.).

### Register/Un-register the Service Worker

To register/un-register the service worker, include/exclude the script in the header section of the **index.html** file.

```
<script src="sw-init.js"></script>
```

### Configure the Service Worker

To configure the service worker, open and edit the **public/sw.js** file.


```javascript
const CACHE = "my-apprun-site";
const precacheFiles = [
  "index.html",
  "app.js",
  "style.css"
];

// TODO: replace the following with the correct offline fallback page i.e.: const offlineFallbackPage = "offline.html";
const offlineFallbackPage = "offline.html";

const networkFirstPaths = [
  /* Add an array of regex of paths that should go network first */
  // Example: /\/api\/.*/
];

const avoidCachingPaths = [
  /* Add an array of regex of paths that shouldn't be cached */
  // Example: /\/api\/.*/
  /\/sockjs-node\/*/
];

```

## Ready for More Information

Please visit [AppRun Site Documentation](https://yysun.github.io/apprun-site/).


Happy Coding.
