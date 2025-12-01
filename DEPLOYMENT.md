# Documentation Deployment Guide

This guide explains how to deploy the WhatsApp Team Inbox documentation.

## Prerequisites

- GitHub account
- Mintlify account OR Vercel account

## Deployment Options

### Option 1: Mintlify Cloud (Recommended)

Mintlify provides the best experience for documentation hosting with automatic SSL, CDN, and optimizations.

#### Setup Steps

1. **Install Mintlify CLI**
   ```bash
   npm install -g mintlify
   ```

2. **Login to Mintlify**
   ```bash
   mintlify login
   ```

3. **Deploy**
   ```bash
   mintlify deploy
   ```

4. **Configure Custom Domain**
   - Go to Mintlify dashboard
   - Navigate to your project settings
   - Add custom domain: `docs.reachbox.in`
   - Update DNS records as instructed:
     ```
     Type: CNAME
     Name: docs
     Value: <your-mintlify-domain>.mintlify.app
     ```

5. **Enable Analytics (Optional)**
   - Update `mint.json` with your Google Analytics ID
   - Commit and redeploy

#### Auto-Deploy from GitHub

1. Go to [Mintlify Dashboard](https://dashboard.mintlify.com)
2. Connect your GitHub repository: `shadowpint/whatsapp-team-inbox-docs`
3. Enable auto-deploy on push to `main` branch
4. Every push will automatically deploy to production

### Option 2: Vercel

Deploy as a static site on Vercel.

#### Setup Steps

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Deploy**
   ```bash
   vercel --prod
   ```

3. **Configure Domain**
   - Go to Vercel dashboard
   - Add domain: `docs.reachbox.in`
   - Update DNS:
     ```
     Type: CNAME
     Name: docs
     Value: cname.vercel-dns.com
     ```

4. **Auto-Deploy**
   - Vercel automatically deploys on push to `main`
   - Configure in Vercel dashboard → Project Settings → Git

### Option 3: Cloudflare Pages

Free hosting with excellent performance.

#### Setup Steps

1. Go to [Cloudflare Pages](https://pages.cloudflare.com)
2. Connect GitHub repository
3. Configure build settings:
   - **Build command**: `mintlify build`
   - **Build output directory**: `out`
   - **Install command**: `npm install -g mintlify`
4. Add custom domain: `docs.reachbox.in`
5. Auto-deploys on every push

### Option 4: Netlify

Another excellent option for static sites.

#### Setup Steps

1. Go to [Netlify](https://netlify.com)
2. Import from GitHub
3. Build settings:
   - **Build command**: `mintlify build`
   - **Publish directory**: `out`
4. Add domain: `docs.reachbox.in`
5. Configure DNS as instructed

### Option 5: Self-Host with Docker

For complete control, self-host on your own infrastructure.

#### Using Docker

1. **Build the documentation**
   ```bash
   mintlify build
   ```

2. **Create Dockerfile**
   ```dockerfile
   FROM nginx:alpine
   COPY out /usr/share/nginx/html
   EXPOSE 80
   CMD ["nginx", "-g", "daemon off;"]
   ```

3. **Build and run**
   ```bash
   docker build -t whatsapp-docs .
   docker run -d -p 80:80 whatsapp-docs
   ```

4. **Or use docker-compose**
   ```yaml
   version: '3.8'
   services:
     docs:
       image: nginx:alpine
       volumes:
         - ./out:/usr/share/nginx/html
       ports:
         - "80:80"
   ```

## Domain Configuration

### DNS Setup for docs.reachbox.in

Add the following DNS record to your domain provider:

**For Mintlify/Vercel/Netlify:**
```
Type: CNAME
Name: docs
Value: <provided-by-platform>
TTL: Auto
```

**For Self-Hosted:**
```
Type: A
Name: docs
Value: <your-server-ip>
TTL: Auto
```

## SSL/HTTPS

All deployment platforms provide automatic SSL:
- **Mintlify**: Automatic
- **Vercel**: Automatic
- **Cloudflare**: Automatic
- **Netlify**: Automatic (Let's Encrypt)
- **Self-Hosted**: Use Certbot or Cloudflare proxy

## Continuous Deployment

### GitHub Actions (Optional)

Create `.github/workflows/deploy.yml` for custom deployment:

```yaml
name: Deploy Documentation

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Install Mintlify
        run: npm install -g mintlify

      - name: Build
        run: mintlify build

      - name: Deploy to Mintlify
        run: mintlify deploy
        env:
          MINTLIFY_API_KEY: ${{ secrets.MINTLIFY_API_KEY }}
```

## Monitoring & Analytics

### Google Analytics

1. Get GA4 Measurement ID from [Google Analytics](https://analytics.google.com)
2. Update `mint.json`:
   ```json
   {
     "analytics": {
       "ga4": {
         "measurementId": "G-XXXXXXXXXX"
       }
     }
   }
   ```
3. Commit and deploy

### Mintlify Analytics

Mintlify provides built-in analytics:
- Page views
- Search queries
- Popular pages
- User geography

Access in Mintlify dashboard.

## Performance Optimization

### CDN Configuration

All platforms provide CDN automatically:
- **Mintlify**: Global CDN included
- **Vercel**: Edge Network (100+ locations)
- **Cloudflare**: 200+ data centers
- **Netlify**: Global CDN

### Caching Headers

Already configured in `vercel.json`. Add similar headers for other platforms.

## Troubleshooting

### Build Failures

**Issue**: `mintlify build` fails
**Solution**:
- Check all `.mdx` files for syntax errors
- Validate `mint.json` format
- Check image paths

**Issue**: Custom domain not working
**Solution**:
- Verify DNS propagation: `dig docs.reachbox.in`
- Check SSL certificate status
- Clear browser cache

**Issue**: Images not loading
**Solution**:
- Ensure images are in the repository
- Use relative paths: `/images/hero.png`
- Check file extensions match

### Preview vs Production

**Preview Deployments** (Mintlify/Vercel):
- Every PR creates a preview
- Test changes before merging
- Share preview links with team

**Production Deployments**:
- Only from `main` branch
- Automatic on merge
- Monitor in platform dashboard

## Best Practices

1. **Test Locally First**
   ```bash
   mintlify dev
   # Preview at http://localhost:3000
   ```

2. **Use Preview Deployments**
   - Create PRs for changes
   - Review preview before merging

3. **Monitor Analytics**
   - Track popular pages
   - Identify missing content
   - Optimize based on data

4. **Keep Dependencies Updated**
   ```bash
   npm update -g mintlify
   ```

5. **Regular Backups**
   - GitHub is your backup
   - Tag releases for important versions
   - Document major changes

## Support

- **Mintlify Docs**: https://mintlify.com/docs
- **Vercel Docs**: https://vercel.com/docs
- **GitHub Issues**: https://github.com/shadowpint/whatsapp-team-inbox-ui-docs/issues

## Quick Commands

```bash
# Local development
mintlify dev

# Build static site
mintlify build

# Deploy to Mintlify
mintlify deploy

# Deploy to Vercel
vercel --prod

# Check deployment status
mintlify status
```
