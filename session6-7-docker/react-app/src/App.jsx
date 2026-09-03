import React, { useState } from 'react';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div style={{ textAlign: 'center', padding: '2rem' }}>
      <h1>Hello World from React in Docker! ⚛️</h1>
      <p>This is a lightweight React application running inside a Docker container.</p>
      <div style={{ marginTop: '20px' }}>
        <button
          onClick={() => setCount((c) => c + 1)}
          style={{
            padding: '10px 20px',
            fontSize: '16px',
            cursor: 'pointer',
            borderRadius: '6px',
            border: 'none',
            backgroundColor: '#61dafb',
            color: '#282c34',
            fontWeight: 'bold',
          }}
        >
          Clicked {count} {count === 1 ? 'time' : 'times'}
        </button>
      </div>
    </div>
  );
}

export default App;
