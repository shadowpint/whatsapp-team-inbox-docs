# WhatsApp Team Inbox - Documentation

Official documentation for [WhatsApp Team Inbox](https://hello.reachbox.in) - a self-hosted alternative to expensive customer support platforms.

[![Documentation](https://img.shields.io/badge/docs-mintlify-green)](https://docs.reachbox.in)
[![GitHub](https://img.shields.io/github/stars/shadowpint/whatsapp-team-inbox-docs)](https://github.com/shadowpint/whatsapp-team-inbox-docs)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## 🚀 Quick Links

- **Live Docs**: [docs.reachbox.in](https://docs.reachbox.in) (coming soon)
- **Demo App**: [hello.reachbox.in](https://hello.reachbox.in)
- **Main Repo**: [github.com/shadowpint/whatsapp-team-inbox](https://github.com/shadowpint/whatsapp-team-inbox)

## 📚 What's Inside

This repository contains the complete documentation for WhatsApp Team Inbox, built with [Mintlify](https://mintlify.com).

### Documentation Structure

```
docs/
├── introduction.mdx              # Landing page & overview
├── why-team-inbox.mdx           # Value proposition & cost comparison
├── how-it-works.mdx             # Architecture & workflow
├── pricing-comparison.mdx        # Detailed pricing vs competitors
│
├── getting-started/
│   ├── requirements.mdx         # Prerequisites
│   ├── deploy-in-30-minutes.mdx # Quick start guide
│   ├── first-setup.mdx          # Initial configuration
│   └── invite-team.mdx          # Team onboarding
│
├── deployment/
│   ├── quick-start.mdx          # One-click deployment
│   ├── whatsapp-setup.mdx       # WhatsApp Business API setup
│   ├── environment-variables.mdx # Configuration reference
│   ├── database-setup.mdx       # PostgreSQL setup
│   ├── email-setup.mdx          # Resend email configuration
│   ├── railway.mdx              # Railway deployment
│   ├── vercel.mdx               # Vercel deployment
│   ├── digitalocean.mdx         # DigitalOcean deployment
│   └── going-live.mdx           # Production checklist
│
├── user-guide/
│   ├── inbox-overview.mdx       # Using the inbox
│   ├── managing-conversations.mdx
│   ├── team-collaboration.mdx
│   ├── notifications.mdx
│   └── settings.mdx
│
├── admin/
│   ├── team-management.mdx
│   ├── conversation-assignment.mdx
│   ├── integrations.mdx
│   └── security-settings.mdx
│
├── features/
│   ├── real-time-messaging.mdx
│   ├── conversation-assignment.mdx
│   ├── push-notifications.mdx
│   └── webhooks.mdx
│
├── cost/
│   ├── monthly-costs.mdx        # Cost calculator
│   ├── scaling-guide.mdx        # Scaling strategies
│   └── optimization-tips.mdx    # Cost optimization
│
├── api-reference/
│   ├── authentication.mdx
│   ├── conversations.mdx
│   ├── contacts.mdx
│   └── webhooks.mdx
│
└── support/
    ├── faq.mdx                  # Frequently asked questions
    ├── common-issues.mdx        # Troubleshooting
    └── migration-guide.mdx      # Migration from other platforms
```

## 🛠️ Local Development

### Prerequisites

- Node.js 18+
- npm or yarn

### Setup

```bash
# Clone the repository
git clone https://github.com/shadowpint/whatsapp-team-inbox-docs.git
cd whatsapp-team-inbox-docs

# Install Mintlify CLI
npm i -g mintlify

# Start development server
mintlify dev
```

The documentation will be available at `http://localhost:3000`

### Making Changes

1. Edit `.mdx` files in the docs directory
2. Changes will hot-reload automatically
3. Preview at http://localhost:3000
4. Commit and push when ready

## 🚀 Deployment

### Deploy to Mintlify Cloud (Recommended)

```bash
# Install Mintlify CLI
npm i -g mintlify

# Login to Mintlify
mintlify login

# Deploy
mintlify deploy
```

### Deploy to Vercel

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel --prod
```

### Deploy with Docker

```bash
# Build static site
mintlify build

# Serve with any static file server
npx serve out
```

## 📝 Contributing

We welcome contributions! Here's how you can help:

### Documentation Improvements

1. Fork this repository
2. Create a feature branch (`git checkout -b improve-deployment-docs`)
3. Make your changes
4. Test locally with `mintlify dev`
5. Commit your changes (`git commit -m 'Improve deployment documentation'`)
6. Push to the branch (`git push origin improve-deployment-docs`)
7. Open a Pull Request

### Reporting Issues

Found a typo, broken link, or unclear explanation?

1. Check [existing issues](https://github.com/shadowpint/whatsapp-team-inbox-docs/issues)
2. Create a new issue with details
3. We'll review and fix it promptly

### Style Guide

- Use clear, concise language
- Include code examples where helpful
- Add screenshots for UI instructions
- Test all commands and code snippets
- Follow existing MDX formatting patterns

## 🎨 Customization

### Branding

Update these files to customize branding:
- `mint.json` - Colors, logo, navigation
- `/logo/dark.svg` - Dark mode logo
- `/logo/light.svg` - Light mode logo
- `/favicon.svg` - Browser favicon

### Navigation

Edit `mint.json` to modify:
- Sidebar navigation
- Top bar links
- Anchor links
- Footer socials

### Styling

Mintlify uses Tailwind CSS. Custom styles can be added via:
- Component classes in `.mdx` files
- Custom CSS in `/styles` (if needed)

## 📊 Analytics

Add your Google Analytics ID in `mint.json`:

```json
{
  "analytics": {
    "ga4": {
      "measurementId": "G-XXXXXXXXXX"
    }
  }
}
```

## 🔗 Useful Links

- [Mintlify Documentation](https://mintlify.com/docs)
- [MDX Documentation](https://mdxjs.com/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Main Repository](https://github.com/shadowpint/whatsapp-team-inbox)

## 📄 License

This documentation is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 💬 Support

- **Email**: support@reachbox.in
- **GitHub Issues**: [Create an issue](https://github.com/shadowpint/whatsapp-team-inbox-docs/issues)
- **Discord**: [Join our community](https://discord.gg/your-server)

## 🌟 Acknowledgments

Built with [Mintlify](https://mintlify.com) - the modern documentation platform.

---

**Made with ❤️ by the Reachbox Team**
