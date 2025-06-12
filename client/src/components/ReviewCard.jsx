import React from 'react';

const ReviewCard = ({ review }) => {
  const { song_title, artist, rating, review_text, username } = review;

  return (
    <div className="border rounded-lg p-4 m-2 bg-white shadow-md max-w-md">
      <h3 className="text-xl font-semibold">{song_title}</h3>
      <p className="text-gray-600">by {artist}</p>
      <div className="text-yellow-400">{'★'.repeat(rating)}{'☆'.repeat(5 - rating)}</div>
      <p className="mt-2">{review_text || 'No review text provided.'}</p>
      <p className="text-sm text-gray-500 mt-1">Reviewed by {username}</p>
    </div>
  );
};

export default ReviewCard;