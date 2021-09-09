import Rect from 'react'

const Topics = ({ sub, topics}) => {
  const { name, id } = sub
  return (
    <>
      <h1>{name} Subreddit Topics</h1>
      <a href={`/subs/${id}/topics/new`}></a>
      {
        topics.map((topic) => (
          <div>
            <h3>{topic.title}</h3>
            <a href={`/subs/${id}/topics/${topic.id}`}>Show</a>
            <a href={`/subs/${id}/topics/${topic.id}/edit`}>Edit</a>
            <a 
              href={`/subs/${id}/topics/${topic.id}`}
              data-method="delete"
            >
              Delete
            </a>
          </div>
        ))
      }
    </>
  )
}

export default Topics;