var Post = React.createClass({
  getInitialState: function () {
    return null;
  },
  formatDate: function (date) {
    return new Date(date).toLocaleDateString('en-US', {year: 'numeric', month: 'short', day: 'numeric'})
  },
  renderedPost: function () {
    return (
      <div className='well'>
        <p>Posted on {this.formatDate(this.props.post.created_at)}</p>
        <p>{this.props.post.author}</p>
        <p>{this.props.post.title}</p>
        <p>{this.props.post.body}</p>
        <p><image src={this.props.post.image_url} /></p>
      </div>
    )
  },
  render: function () {
    return this.renderedPost();
  }
})
