import {app, Component, customElement } from 'apprun';

@customElement("login-ok")
export default class extends Component {
  state = 'login';

  view = (state) => <>
    <div>
      <h1>{state}</h1>
    </div>
  </>;

  update = {
    '#components/login': state => state,
  }
}

