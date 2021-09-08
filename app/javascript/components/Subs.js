import React from "react";

const Subs = ({ subs }) => {
  return (
    <>
      <h1>Subs index</h1>
      <a href="/subs/new">New Sub</a>
      {subs.map((sub) => (
        <div>
          <h5>{sub.name}</h5>
          <a href={`/subs/${sub.id}`}>Show</a>
          {' '}
          <a href={`/subs/${sub.id}/edit`}>Edit</a>
          {' '}
          <a href={`/subs/${sub.id}`} data-method="delete">Delete</a>
        </div>
      ))}
    </>
  );
};

export default Subs;
