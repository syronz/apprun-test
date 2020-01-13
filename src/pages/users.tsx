import { app, Component, on } from 'apprun';

import { users } from '../api';

export default class extends Component {

  state = []

      //      <pre> {state && state.users.map((account_id, username) =>
    ////                               <p>{account_id}</p>)} </pre>
  view = (state) => <>
    <table class="table">
      <thead>
        <tr>
          <th scope="col"> id </th>
          <th scope="col"> username </th>
          <th scope="col"> created at </th>
          <th scope="col"> language </th>
        </tr>
      </thead>
      <tbody>

      {state && state.map((key, value) =>
                          <tr>
                            <td> {key.id} </td>
                            <td> {key.username} </td>
                            <td> {key.created_at} </td>
                            <td> {key.lang} </td>
                          </tr>)}
      </tbody>
    </table>
    <button $onclick="getUsers"> get users </button>
    <h1>hello  diako 22</h1>
  </>

  update = {
    'getUsers' : async (state) => {
      const res = await users.list();
      console.log("this is res", res);
      return res;
    }
  }


  updateState = async (state) => {
    console.log("inside the updateState");
  }

/* app.on('/users', state => { */
/*   console.log('inside the api and show the users is activated'); */
/* }); */

  @on('/users') geek = (state) => { console.log('on in the users.tsx');};
}
