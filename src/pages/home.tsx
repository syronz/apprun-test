import { app, Component } from 'apprun';

export default class extends Component {
  // redirect home page to README.md
  // good one
  view = _ => { app.run('/README') }
}
