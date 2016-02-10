@Contents = React.createClass
  getInitialState: ->
    contents: @props.data
  getDefaultProps: ->
    records: []
  render: ->
    React.DOM.div
      className: 'contents'
      React.DOM.h2
        className: 'title'
        'Contents'
