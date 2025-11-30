# Launch Checklist for Mintlify Landing Page

## Pre-Launch Tasks

### 1. Content Updates
- [ ] Update all GitHub URLs from `your-org` to actual org name
- [ ] Update Community/Discord links with real invites
- [ ] Update demo URL when demo is ready
- [ ] Add real Google Analytics ID in mint.json
- [ ] Review all placeholder text

### 2. Assets & Media
- [ ] Add hero images to `/images/hero-light.png` and `/images/hero-dark.png`
- [ ] Add logo SVG files to `/logo/dark.svg` and `/logo/light.svg`
- [ ] Add favicon to `/favicon.svg`
- [ ] Optional: Add demo video or GIF to introduction page

### 3. SEO & Analytics
- [ ] Set up Google Analytics 4
- [ ] Update `mint.json` with GA4 measurement ID
- [ ] Add Google Search Console
- [ ] Create sitemap (Mintlify auto-generates)
- [ ] Set up Open Graph images for social sharing

### 4. Social Proof
- [ ] Add testimonials if available
- [ ] Update success metrics with real data
- [ ] Add GitHub star count widget
- [ ] Set up Discord/Slack community

### 5. Links & CTAs
- [ ] Test all internal navigation links
- [ ] Test all external links (GitHub, demo, community)
- [ ] Verify CTA buttons work correctly
- [ ] Test deployment guide links

### 6. Domain & Hosting
- [ ] Choose domain (e.g., whatsappinbox.com, whatsapp-inbox.dev)
- [ ] Deploy to Mintlify hosting or Vercel
- [ ] Configure DNS records
- [ ] Enable HTTPS
- [ ] Test on mobile devices

### 7. Launch Day
- [ ] Announce on Twitter
- [ ] Post on Hacker News
- [ ] Share in relevant subreddits (r/selfhosted, r/opensource)
- [ ] Post on Product Hunt
- [ ] Share on LinkedIn
- [ ] Email newsletter if you have one

### 8. Post-Launch
- [ ] Monitor analytics
- [ ] Set up error tracking (Sentry)
- [ ] Monitor uptime (UptimeRobot)
- [ ] Collect user feedback
- [ ] A/B test different CTAs

## Mintlify Deployment Options

### Option 1: Mintlify Cloud (Easiest)
```bash
# Install Mintlify CLI
npm i -g mintlify

# Deploy to Mintlify
mintlify deploy
```
- Custom domain support
- Auto SSL
- CDN included
- $0 for open source

### Option 2: Self-Host on Vercel
```bash
# Deploy docs to Vercel
vercel --prod

# Point domain in Vercel dashboard
```

### Option 3: Deploy with Docker
```bash
# Build Mintlify static site
mintlify build

# Serve with Nginx or any static host
```

## Marketing Channels Post-Launch

### Developer Communities
- [ ] Dev.to article
- [ ] Hashnode blog post
- [ ] Medium publication
- [ ] Hacker News Show HN
- [ ] Reddit r/selfhosted
- [ ] Reddit r/opensource
- [ ] Reddit r/SideProject

### Social Media
- [ ] Twitter launch thread
- [ ] LinkedIn post
- [ ] Facebook groups (entrepreneurship, startups)
- [ ] Discord server setup
- [ ] Slack community (if needed)

### Content Marketing
- [ ] "How we built..." blog post
- [ ] Cost comparison article
- [ ] Self-hosting guide
- [ ] Migration from Intercom/Zendesk guide

### Product Hunt Launch
- [ ] Create Product Hunt listing
- [ ] Prepare launch graphics
- [ ] Schedule for Tuesday-Thursday
- [ ] Prepare maker story
- [ ] Rally initial supporters

## Success Metrics to Track

- **Traffic**: Google Analytics
- **Conversions**: Deployments started (track via docs engagement)
- **GitHub Stars**: Track growth
- **Community**: Discord/Slack members
- **SEO**: Search rankings for key terms
- **Social**: Twitter followers, engagement
- **Email**: Newsletter signups (if you add one)

## Quick Wins

1. **Add Badge to README**:
   ```markdown
   [![Documentation](https://img.shields.io/badge/docs-mintlify-green)](https://your-domain.com)
   [![GitHub Stars](https://img.shields.io/github/stars/your-org/whatsapp-team-inbox)](https://github.com/your-org/whatsapp-team-inbox)
   ```

2. **Add "Deploy to Railway" Button**:
   - One-click deploy increases conversions
   - Easy to implement

3. **Create Demo Video**:
   - 60-90 second walkthrough
   - Embed on introduction page
   - Share on social media

4. **Set Up Email Capture**:
   - ConvertKit or Mailchimp
   - "Get updates" CTA
   - Weekly/monthly newsletter

## Resources

- [Mintlify Documentation](https://mintlify.com/docs)
- [SEO Best Practices](https://mintlify.com/docs/settings/seo)
- [Custom Domain Setup](https://mintlify.com/docs/settings/custom-domain)
- [Analytics Integration](https://mintlify.com/docs/settings/analytics)
