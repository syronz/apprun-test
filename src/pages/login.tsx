import { app, Component } from 'apprun';

import { auth } from '../api';
import  Errors  from '../components/error-list';


export default class extends Component {

  state = { 
    username: "appuser",
		password: "sm8d6C3Y6W1krviL",
    /* errors: ['ok', 'this is second error'] */
    /* errors: { */
    /*   simple: "no one have it", */
    /*   hard: 3234, */
    /* } */
  }

  view = (state) => <>
    <h5> {state} </h5>

    <div class="row justify-content-center">
      <div class="input-group mb-3 col-4">
        <div class="input-group-prepend">
          <span class="input-group-text" id="basiaddon1">Username</span>
        </div>
          <input type="text" class="form-control" placeholder="diako.amir" 
            $oninput="username" aria-label="Username" aria-describedby="basiaddon1" />
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="input-group mb-3 col-4">
        <div class="input-group-prepend">
          <span class="input-group-text" id="basiaddon1">Password&nbsp; </span>
        </div>
          <input type="password" class="form-control" placeholder="*********" 
            $oninput="password" aria-label="Password" aria-describedby="pass" />
      </div>
    </div>
    <div class="row justify-content-center">
        {state.errors && <Errors errors={state.errors} />}
    </div>
    <div class="row justify-content-center">
      <button type="button" $onclick="submit" class="btn btn-success">Sign In</button>
    </div>
  </>



  update = {

    ['oninput, password'] : (state, e) => {
      return { 
        ...state,
        password: e.target.value
      }
    },

    ['oninput, username'] : (state, e) => {
      return { 
        ...state,
        username: e.target.value
      }
    },

    'submit' : async (state,e) => {
      try {
        /* console.log(">>>>>>>>>", ...state); */
        const credentials = {
          username: state.username,
          password: state.password
        }
        const res = await auth.signIn(credentials);
        app.run('/set-user', res);
        console.log(res);
      } catch ( errors ) {
        console.log('.......###### ', errors, state);
        return { ...state, errors };
      }
    }

  }
}
