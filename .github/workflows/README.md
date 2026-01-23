# GitHub Actions Workflows

This directory contains automated workflows for the MPLAB Device Blocks for Simulink documentation site.

## Active Workflows

### 1. `static.yml` - GitHub Pages Deployment
**Purpose:** Deploys the documentation site to GitHub Pages

**Triggers:**
- Push to `master` branch
- Manual dispatch from Actions tab

**What it does:**
- Checks out repository
- Configures GitHub Pages
- Uploads `docs/` directory contents
- Deploys to https://mplab-blockset.github.io/MPLAB-Device-Blocks-for-Simulink/

**Permissions:**
- `contents: read` - Read repository files
- `pages: write` - Deploy to GitHub Pages
- `id-token: write` - OIDC authentication

---

### 2. `sitemap-ping.yml` - Search Engine Notification ✨ NEW
**Purpose:** Automatically notifies Google and Bing when sitemap.xml is updated

**Triggers:**
- Push to `master` branch that modifies `docs/sitemap.xml`
- Manual dispatch from Actions tab

**What it does:**
1. Detects changes to `docs/sitemap.xml`
2. Pings Google: `https://www.google.com/ping?sitemap=...`
3. Pings Bing: `https://www.bing.com/ping?sitemap=...`
4. Reports results (HTTP status codes)

**Permissions:**
- `contents: read` (minimal - only needs to run curl commands)

**Benefits:**
- ✅ Faster indexing (hours instead of days)
- ✅ Automatic - no manual work required
- ✅ Free - runs on GitHub's infrastructure
- ✅ Safe - failures don't block deployment

**Expected behavior:**
- Google/Bing may return HTTP 200 (success) or rate-limit responses
- Failures are normal and don't indicate problems
- Search engines re-crawl within 24-48 hours

---

## Monitoring Workflows

### View Workflow Runs
1. Go to: https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/actions
2. Select workflow from left sidebar
3. View run history and logs

### Manual Trigger
1. Go to: https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/actions
2. Select workflow (e.g., "Notify Search Engines")
3. Click "Run workflow" button
4. Choose branch and click "Run workflow"

---

## Typical Deployment Flow

```
1. Update documentation in doc_hugo/
   ↓
2. Run build.ps1 → generates docs/sitemap.xml
   ↓
3. Git commit and push to master
   ↓
4. static.yml deploys site to GitHub Pages
   ↓
5. sitemap-ping.yml notifies search engines
   ↓
6. Search engines re-crawl site (24-48h)
```

---

## Troubleshooting

### Workflow Not Running?
**Check:**
- File is pushed to `master` branch
- File path matches trigger: `docs/sitemap.xml`
- GitHub Actions enabled: Settings → Actions → Allow all actions

### Ping "Failed"?
**This is normal!** Search engines may:
- Rate-limit ping requests
- Return 4xx/5xx codes for duplicate pings
- Ignore pings if site was recently crawled

**The workflow logs failures as info, not errors.**

### Workflow Disabled?
**Enable it:**
1. Go to: https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/actions
2. Select "Notify Search Engines" workflow
3. Click "Enable workflow"

---

## Cost & Limits

### GitHub Actions - Free Tier
- 2,000 minutes/month (public repos)
- This workflow uses ~1 minute per run
- Current usage: ~2 minutes/month (estimated)

### Search Engine Limits
- Google: No documented limit (typically allows 1-2 pings/day)
- Bing: Similar undocumented limits
- Both may ignore excessive pings

---

## Security Notes

### Why Minimal Permissions?
The `sitemap-ping.yml` only needs `contents: read` because it:
- Doesn't modify files
- Doesn't deploy anything
- Only makes HTTP GET requests to public APIs

### Safe to Run?
Yes:
- No secrets or credentials required
- Only contacts official Google/Bing APIs
- Cannot modify repository
- Failures don't affect deployment

---

## Modifications

### Change Sitemap URL
Edit line in `sitemap-ping.yml`:
```yaml
"https://www.google.com/ping?sitemap=YOUR_NEW_URL"
```

### Add More Search Engines
Add step in `sitemap-ping.yml`:
```yaml
- name: Notify Yahoo
  run: |
    curl "https://search.yahoo.com/ping?sitemap=YOUR_SITEMAP_URL"
```

### Disable Notifications
**Option 1:** Delete `sitemap-ping.yml`
**Option 2:** Disable workflow in GitHub Actions UI
**Option 3:** Comment out `push:` trigger

---

## References

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Google Sitemap Protocol](https://www.sitemaps.org/protocol.html)
- [Google Ping Documentation](https://developers.google.com/search/docs/crawling-indexing/ask-google-to-recrawl)
- [Bing Webmaster Tools](https://www.bing.com/webmasters/about)
