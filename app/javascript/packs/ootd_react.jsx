import React from 'react'
import ReactDOM from 'react-dom'
import Modal from 'react-modal'

Modal.setAppElement('#modal')

class Decide extends React.Component{
  constructor(props) {
      super(props)
      this.state = {
        outfit: [],
        modalIsOpen: false,
      }
    }

  openModal() {
    this.setState({
      // outfit: ,
      modalIsOpen: true,
    })
  }

  closeModal() {
    this.setState({ modalIsOpen: false })
  }

  componentDidMount() {
    Modal.setAppElement('body');
  }

  render(){
    return(
      <div onClick={this.openModal.bind(this, outfit)}>
        <div>今日のコーデを決める！</div>
        <ModalComponent
        isOpen={this.state.modalIsOpen}
        onRequestClose={this.closeModal.bind(this)}
        style={customStyles}
        contentLabel="My First Modal"
        >
          <h1>Modal content</h1>
          <p>;voahevhawghaihregawghoiwhrbovhaor</p>
        </ModalComponent>
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

export default Decide;

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Decide />, document.querySelector('#modal'),
  )
})