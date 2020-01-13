import { app } from 'apprun';

/* export default function({ errors }) { */
/*   return ( */
/*     <h3> this is error {errors} </h3> */
/*   ); */
/* } */

    /* <ul class="error-messages"> */
    /*   {Object.keys(errors).map(key => ( */
    /*     <li>{`${key} ${errors[key]}`}</li> */
    /*   ))} */
    /* </ul> */

export default function({ errors }) {
  return (
    <div class="alert alert-danger" role="alert">
      {Object.keys(errors).map(key => (
        <li>{`${key} ${errors[key]}`}</li>
      ))}
    </div>
  );
}

