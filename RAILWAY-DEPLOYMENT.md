# Deploy to Railway - Quick Guide

This guide will help you deploy the WhatsApp Team Inbox documentation to Railway in under 5 minutes.

## 🚀 One-Click Deploy

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/shadowpint/whatsapp-team-inbox-docs)

## 📋 Manual Deployment Steps

### Step 1: Create Railway Account

1. Go to [Railway.app](https://railway.app)
2. Sign up with GitHub (recommended)
3. Verify your email

### Step 2: Deploy from GitHub

1. **New Project**
   - Click "New Project" in Railway dashboard
   - Select "Deploy from GitHub repo"
   - Choose `shadowpint/whatsapp-team-inbox-docs`

2. **Railway Auto-Detects Configuration**
   - Railway will read `railway.toml`
   - Build command: `npm install -g mintlify && mintlify build`
   - Start command: `npx serve out -l 3000`

3. **Click Deploy**
   - Railway will start building
   - Build takes ~2-3 minutes
   - You'll get a temporary URL like `xxx.railway.app`

### Step 3: Configure Custom Domain

1. **Add Domain in Railway**
   - Go to your project settings
   - Click "Domains" tab
   - Click "Custom Domain"
   - Enter: `docs.reachbox.in`

2. **Update DNS Records**

   Add these records to your DNS provider (e.g., Cloudflare, Namecheap):

   **Option A: CNAME (Recommended)**
   ```
   Type: CNAME
   Name: docs
   Value: xxx.railway.app (from Railway dashboard)
   TTL: Auto
   ```

   **Option B: A Record**
   ```
   Type: A
   Name: docs
   Value: <IP from Railway>
   TTL: Auto
   ```

3. **Wait for SSL**
   - Railway automatically provisions SSL
   - Takes 5-10 minutes
   - Your docs will be live at `https://docs.reachbox.in`

### Step 4: Enable Auto-Deploy

1. **Settings → Deploy Triggers**
   - Enable "Deploy on push to main"
   - Now every git push automatically deploys

2. **Branch Deployments (Optional)**
   - Enable preview deployments for PRs
   - Each PR gets a unique URL

## ⚙️ Configuration Details

### Environment Variables (Optional)

If you want to add analytics or custom configuration:

1. Go to **Variables** tab in Railway
2. Add variables:
   ```
   PORT=3000
   NODE_ENV=production
   ```

### Build Settings

Railway uses `railway.toml`:
```toml
[build]
builder = "nixpacks"
buildCommand = "npm install -g mintlify"

[deploy]
startCommand = "mintlify dev --host 0.0.0.0 --port $PORT"
```

**Note**: Mintlify runs as a live development server rather than building static files. This provides:
- ✅ Hot reload capabilities
- ✅ Built-in search functionality
- ✅ Optimized performance
- ✅ Real-time updates

### Using Docker (Alternative)

If you prefer Docker deployment:

1. Railway will auto-detect `Dockerfile`
2. Build uses the Dockerfile we created
3. Runs Mintlify dev server on port 3000

**Docker Command**:
```bash
docker build -t docs .
docker run -p 3000:3000 docs
```

## 🎯 Post-Deployment

### Verify Deployment

1. **Check Build Logs**
   - Click on deployment
   - View build logs for errors

2. **Test the Site**
   ```bash
   curl https://docs.reachbox.in
   ```

3. **Check Health**
   - Railway monitors automatically
   - View metrics in dashboard

### Performance Optimization

Railway provides:
- ✅ Global CDN
- ✅ Automatic SSL
- ✅ HTTP/2 support
- ✅ Gzip compression
- ✅ Edge caching

### Monitor Deployments

1. **Deployment History**
   - See all past deployments
   - Rollback to previous versions

2. **Logs**
   - Real-time logs
   - Filter by severity

3. **Metrics**
   - CPU usage
   - Memory usage
   - Request count

## 💰 Cost Estimate

**Railway Pricing:**
- **Free Tier**: $5 credit/month (enough for docs)
- **Developer Plan**: $5/month (500 hours)
- **Pro Plan**: $20/month (unlimited)

**Expected Usage for Docs:**
- Static site: ~$0-2/month
- Low resource usage
- Free tier is usually sufficient

## 🔧 Troubleshooting

### Build Fails

**Error**: `mintlify: command not found`
**Solution**: Check `railway.toml` has correct build command

**Error**: `No such file or directory: out`
**Solution**: Ensure `mintlify build` runs successfully locally first

### Domain Not Working

**Issue**: Custom domain shows "Not found"
**Solution**:
- Verify DNS propagation: `dig docs.reachbox.in`
- Check SSL status in Railway dashboard
- Wait 5-10 minutes for SSL provisioning

### Slow Build Times

**Issue**: Build takes &gt;5 minutes
**Solution**:
- Railway caches dependencies
- First build is slower
- Subsequent builds are faster

## 🚀 Advanced Configuration

### Multiple Environments

Deploy to different environments:

```bash
# Production (main branch)
docs.reachbox.in → main branch

# Staging (develop branch)
docs-staging.reachbox.in → develop branch
```

### Custom Nginx Configuration

Already included in `nginx.conf`:
- Security headers
- Gzip compression
- Browser caching
- Health check endpoint

### Monitoring & Alerts

Set up Railway notifications:
1. Go to Project Settings
2. Enable email notifications
3. Get alerts for:
   - Failed deployments
   - High resource usage
   - Downtime

## 📊 Analytics

After deployment, add analytics:

1. **Google Analytics**
   - Get GA4 measurement ID
   - Update `mint.json`
   - Commit and push

2. **Railway Metrics**
   - Built-in metrics dashboard
   - Request logs
   - Performance monitoring

## 🔄 Update Workflow

```bash
# 1. Make changes locally
git add .
git commit -m "Update documentation"

# 2. Push to GitHub
git push origin main

# 3. Railway auto-deploys
# Check Railway dashboard for status

# 4. Verify
curl https://docs.reachbox.in
```

## 📱 Mobile Testing

Railway provides preview URLs:
- Test on mobile devices
- Share preview with team
- Get feedback before production

## ✅ Deployment Checklist

- [ ] Railway account created
- [ ] GitHub repository connected
- [ ] Deployment successful
- [ ] Custom domain configured
- [ ] DNS records updated
- [ ] SSL certificate active
- [ ] Site loads correctly
- [ ] Auto-deploy enabled
- [ ] Analytics configured (optional)
- [ ] Team notified

## 🆘 Support

- **Railway Docs**: https://docs.railway.app
- **Railway Discord**: https://discord.gg/railway
- **GitHub Issues**: https://github.com/shadowpint/whatsapp-team-inbox-docs/issues

## 🎉 You're Live!

Once deployed, your documentation will be available at:
- **Production**: https://docs.reachbox.in
- **Railway URL**: https://xxx.railway.app (fallback)

Share it with your team and users! 🚀
