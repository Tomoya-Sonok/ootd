// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
// import PropTypes from 'prop-types'
Modal.setAppElement('#react-root')

class Decide extends React.Component{
  constructor(props) {
      super(props)
      this.state = {
        outfit: [],
      modalIsOpen: false,
      }
    }

  openModal(outfit) {
    this.setState({
      // outfit: ,
      modalIsOpen: true,
    })
  }
 
  closeModal() {
    this.setState({ modalIsOpen: false })
  }

  render(){
    return(
      <div onClick={this.openModal.bind(this, outfit)}>
        <div>今日のコーデを決める！</div>
        <Modal
        isOpen={this.state.modalIsOpen}
        onRequestClose={this.closeModal.bind(this)}
        style={customStyles}
        contentLabel="My First Modal"
        >
          <h1>Modal content</h1>
          <p>;voahevhawghaihregawghoiwhrbovhaor</p>
        </Modal>
      </div>
    );
  }
}

const customStyles = {
  overlay: {
    position: 'fixed',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(255, 255, 255, 0.75)',
  },
  content: {
    position: 'absolute',
    top: '100px',
    left: '100px',
    right: '100px',
    bottom: '100px',
    border: '1px solid #ccc',
    background: '#fff',
    overflow: 'auto',
    WebkitOverflowScrolling: 'touch',
    borderRadius: '4px',
    outline: 'none',
    padding: '20px',
  },
}

// const Hello = props => (
//   // <div>Hello {props.name}!</div>
//   <div>今日のコーデを決める！</div>
// )

// Hello.defaultProps = {
//   name: 'Tomoya'
// }

// Hello.propTypes = {
//   name: PropTypes.string
// }

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Decide />, document.getElementById('react-root'),
  )
})