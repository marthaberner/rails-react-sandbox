var Posts = React.createClass({
  getInitialState: function () {
    return {
      posts: this.props.posts
    }
  },
  getDefaultProps: function () {
    return { posts: [] }
  },
  render: function () {
    return (
      <div className="panel panel-primary">
        <div className="panel-heading">
          <h3 className="panel-title">Latest Posts</h3>
        </div>
        <div className="panel-body">
          {this.state.posts.map(function (post) {
            return <Post key={post.id} post={post} />
          }.bind(this))}
        </div>
      </div>
  )}
})
