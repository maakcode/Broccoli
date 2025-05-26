import React from 'react';
import {Button, View} from 'react-native';
import {requestReview} from 'react-native-store-review';

function App(): React.JSX.Element {
  const handleClickReview = () => {
    requestReview();
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
