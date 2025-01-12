import { Page } from "@playwright/test";

export class BingPage {
  private page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  // Locators
  searchInput = () => this.page.locator("#sb_form_q");
  videoTab = () => this.page.locator("#b-scopeListItem-video");
  results = () => this.page.locator("#b_content");

  // Actions
  async navigate() {
    await this.page.goto("https://www.bing.com");
  }

  async search(query: string) {
    await this.searchInput().fill(query);
    await this.page.waitForTimeout(500);
    await this.searchInput().press("Enter");
  }

  async filterByVideo() {
    await this.videoTab().click();
  }

  async getResults() {
    await this.page.waitForTimeout(1000);
    return this.results().allTextContents();
  }
}
