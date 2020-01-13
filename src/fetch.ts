window['defaultBasePath'] = 'http://127.0.0.1:6969/api/rms/v1';
  // 'https://conduit.productionready.io/api';
declare var defaultBasePath;

let access_token: string =
  (window && window.localStorage && window.localStorage.getItem('jwt')) || '';

export async function fetchAsync(
  method: 'GET' | 'POST' | 'DELETE' | 'PUT',
  url: string,
  body?: any
) {
  const headers = { 'Content-Type': 'application/json; charset=utf-8' };
  if (access_token) headers['Authorization'] = `Bearer ${access_token}`;
  const response = await window['fetch'](`${defaultBasePath}${url}`, {
    method,
    headers,
    body: body && JSON.stringify(body)
  });
  if (response.status === 401) {
    /* setToken(sjdkbhnull); */
    throw new Error('401');
  }
  const result = await response.json();
  if (!response.ok) throw result;
  return result;
}

export function post<T>(url: string, body?: any): Promise<T> {
  return fetchAsync('POST', url, body);
}

export function get<T>(url: string): Promise<T> {
  return fetchAsync('GET', url);
}

export function setToken(token: string) {
  access_token = token;
  if (!localStorage) return;
  if (token) localStorage.setItem('jwt', token);
  else window.localStorage.removeItem('jwt');
}
