# Railway Deployment

Deploy WhatsApp Team Inbox documentation to Railway.

## Quick Deploy

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/shadowpint/whatsapp-team-inbox-docs)

## Requirements

- Node.js 20.17.0+
- Railway account (free tier available)

## Deployment Steps

### 1. Deploy from GitHub

```bash
# Railway Dashboard
New Project → Deploy from GitHub repo → shadowpint/whatsapp-team-inbox-docs
```

Railway auto-detects configuration from `railway.toml`:
- Build: `npm install -g mintlify`
- Start: `mintlify dev --host 0.0.0.0 --port $PORT`

Build time: ~2-3 minutes

### 2. Configure Domain (Optional)

**Railway Dashboard → Settings → Domains → Custom Domain**

Add DNS record:
```
Type: CNAME
Name: docs
Value: <your-project>.railway.app
```

SSL provisions automatically in 5-10 minutes.

### 3. Enable Auto-Deploy

**Settings → Deploy Triggers → Enable "Deploy on push to main"**

## Configuration Files

**railway.toml**
```toml
[build]
builder = "nixpacks"
buildCommand = "npm install -g mintlify"

[deploy]
startCommand = "mintlify dev --host 0.0.0.0 --port $PORT"
```

**nixpacks.toml**
```toml
[phases.setup]
nixPkgs = ["nodejs-20_x"]

[phases.install]
cmds = ["npm install -g mintlify"]

[start]
cmd = "mintlify dev --host 0.0.0.0 --port $PORT"
```

## Repository Structure

- **Docs**: `shadowpint/whatsapp-team-inbox-docs`
- **Backend**: `shadowpint/whatsapp-team-inbox-backend`
- **Frontend**: `shadowpint/whatsapp-team-inbox-ui`

## Costs

Railway charges after free tier ($5/month credit):
- Docs hosting: ~$0-5/month
- Full app (backend + frontend + DB): ~$20-35/month

Use [Railway Calculator](https://railway.app/pricing) for estimates.

## Troubleshooting

**Build fails: "mintlify: command not found"**
→ Check `railway.toml` build command

**Node version error**
→ Ensure Node 20.17+ in `nixpacks.toml`, `.nvmrc`, `package.json`

**Service unavailable after deploy**
→ Wait 1-2 minutes for Mintlify to compile docs

**Domain not working**
→ Check DNS propagation: `dig docs.reachbox.in`

## Update Workflow

```bash
git add .
git commit -m "Update docs"
git push origin main
# Railway auto-deploys
```

## Deployment Checklist

- [ ] Railway account connected to GitHub
- [ ] Repo deployed successfully
- [ ] Custom domain configured (if needed)
- [ ] Auto-deploy enabled
- [ ] Site accessible

## Support

- [Railway Docs](https://docs.railway.app)
- [GitHub Issues](https://github.com/shadowpint/whatsapp-team-inbox-docs/issues)
