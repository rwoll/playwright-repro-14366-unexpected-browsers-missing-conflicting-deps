import { test } from '@playwright/test';

test('example', async ({ page }) => {
  await page.goto('https://example.com');
  await page.screenshot();
})
