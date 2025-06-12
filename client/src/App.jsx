import './index.css';
import ReviewCard from './components/ReviewCard';

const sampleReview = {
  song_title: 'Halo',
  artist: 'Beyoncé',
  rating: 5,
  review_text: 'An uplifting anthem with powerful vocals and a beautiful message.',
  username: 'musiclover123',
};

function App() {
  return (
    <div className="p-4 bg-blue-100 min-h-screen">
      <h1 className="text-3xl font-bold text-blue-600">Music Review App</h1>
      <ReviewCard review={sampleReview} />
    </div>
  );
}

export default App;