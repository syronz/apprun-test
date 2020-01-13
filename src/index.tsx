import app from 'apprun-site';

import layout from './layout';
import pages from './_lib';

import './components/counter';
import './components/my-xkcd';
import './components/login';

const site = {
  title: '05 Test',
  element: 'main',
  nav: [
    { "text": "Home2", "link": "/" },
    { "text": "Contact", "link": "/contact" },
    { "text": "About", "link": "/about" },
    { "text": "test3", "link": "/test" }
  ],
  sidebar: [
    { "text": "Home", "link": "/" },
    { "text": "Contact", "link": "/contact" },
    { "text": "Login", "link": "/login" },
    { "text": "Users", "link": "/users" },
    { "text": "About", "link": "/about" }
  ],
  layout,
  pages,
  eventRoot: '/'
};

app.start(site);
