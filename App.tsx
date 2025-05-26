import React from 'react';
import {Button, View} from 'react-native';
import StoreReview from './library/NativeStoreReview/specs/NativeStoreReview';

function App(): React.JSX.Element {
  const handleClickReview = () => {
    StoreReview.requestReview();
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
