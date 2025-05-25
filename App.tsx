import React from 'react';
import {Button, View} from 'react-native';

function App(): React.JSX.Element {
  const handleClickReview = () => {
    // show review
  };

  return (
    <View
      style={{
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
      }}>
      <Button title="Review" onPress={handleClickReview} />
    </View>
  );
}

export default App;
