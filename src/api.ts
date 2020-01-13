import app from 'apprun';

import { User } from './models';
import { post, setToken, get } from './fetch';

export interface IAuthResponse {
  user: User;
}


export  const auth = {
  signIn: (user: { username: string; password: string }) =>
  post<IAuthResponse>('/auth',  user ),
  /* save: user => put('/user', { user }), */
  /* authorized: (): boolean => (app['user'] ? true : app.run('#/login') && false) // app.run returns true if found event handlers */
};

export const users = {
  list: () =>
  get<any>('/agents?page=1&limit=5&sort=-id'),
  // { console.log('users has been activated'); }
}

app.on('/set-user', user => {
  console.log("this is setting user", user);
  setToken(user ? user.token : null);
});

