import { useEffect, useState } from 'react';
import { v4 as uuidv4 } from 'uuid';
import dayjs from 'dayjs';

export default function Home() {
  const [randomId, setRandomId] = useState('');
  const [currentTime, setCurrentTime] = useState('');

  useEffect(() => {
    // Generate client-side to avoid hydration mismatches
    setRandomId(uuidv4());
    setCurrentTime(dayjs().format('YYYY-MM-DD HH:mm:ss'));
  }, []);

  return (
    <main style={{ fontFamily: 'sans-serif', padding: '2rem' }}>
      <h1>Next.js Sample App - Hot Reload Test</h1>
      <p>This is a minimal Next.js app for DigitalOcean App Platform testing.</p>
      <p style={{color: 'green', fontWeight: 'bold'}}>HOT RELOAD TEST: Code-only change successful!</p>
      <p style={{color: 'blue', fontWeight: 'bold'}}>DEPENDENCY TEST: Current time (dayjs): {currentTime || 'loading...'}</p>
      <p>Health endpoint: <code>/api/health</code></p>
      <p>Random ID (uuid): {randomId || 'generating...'}</p>
    </main>
  );
}
