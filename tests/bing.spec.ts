import { test, expect } from '@playwright/test';
import { BingPage } from '../pages/BingPage';

test.only('Search for "semrush" on Bing and filter by video', async ({ page }) => {
  const bingPage = new BingPage(page);

  await bingPage.navigate();

  await bingPage.search('semrush');

  await bingPage.filterByVideo();

  const results = await bingPage.getResults();
  expect(results.length).toBeGreaterThan(0);
  console.log('Results:', results);
});
