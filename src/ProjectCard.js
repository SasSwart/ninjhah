import React from 'react';

class ProjectCard extends React.Component {
  render() {
    return (
      <div className="ProjectCard">
      {this.props.name}
      </div>
      );
  }
}
  
  export default ProjectCard;
  