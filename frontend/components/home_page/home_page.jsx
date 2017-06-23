import React from 'react';
import FeaturedCarouselContainer from './featured_carousel_container';
import TileCarouselContainer from './tile_carousel_container';

class HomePage extends React.Component {
  componentDidMount() {

  }

  componentWillReceiveProps(nextProps) {

  }

  render() {
    // if (this.props.campaign.user_id === null) {
    //   return (<div> </div>);
    // }

    return (
      <div className="home-page">
        <FeaturedCarouselContainer />
        <TileCarouselContainer />
      </div>
    );
  }
}
export default HomePage;