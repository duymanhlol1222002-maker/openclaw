# OpenClaw 🦞 — Trợ lý AI của bạn, trên thiết bị và trong các ứng dụng trò chuyện

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/openclaw/openclaw/main/docs/assets/openclaw-banner-light.png">
    <img src="https://raw.githubusercontent.com/openclaw/openclaw/main/docs/assets/openclaw-banner-dark.png" alt="OpenClaw — Trợ lý AI chạy trên thiết bị của chính bạn.">
  </picture>
</p>

<p align="center">
  <a href="https://github.com/openclaw/openclaw/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/openclaw/openclaw/ci.yml?branch=main&style=flat-square&label=ci" alt="Trạng thái CI"></a>
  <a href="https://www.npmjs.com/package/openclaw"><img src="https://img.shields.io/npm/v/openclaw?style=flat-square&label=npm" alt="Phiên bản npm"></a>
  <a href="https://nodejs.org"><img src="https://img.shields.io/node/v/openclaw?style=flat-square" alt="Phiên bản Node.js"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="Giấy phép MIT"></a>
  <a href="https://discord.gg/clawd"><img src="https://img.shields.io/discord/1456350064065904867?label=discord&logo=discord&logoColor=white&color=5865F2&style=flat-square" alt="Discord"></a>
</p>

**OpenClaw** là trợ lý trí tuệ nhân tạo (AI) mã nguồn mở, có thể chạy trên máy tính của bạn và kết nối với những ứng dụng nhắn tin bạn đang sử dụng, chẳng hạn như Discord, iMessage, Slack, Teams, Telegram, WhatsApp và hơn 20 nền tảng khác. Dự án cũng có ứng dụng dành cho macOS, iOS, Android, Windows và Linux.

Một **Gateway** có thể vận hành OpenClaw như trợ lý cá nhân trên máy tính của bạn hoặc triển khai dùng chung cho một nhóm. Điểm khác biệt chủ yếu nằm ở cách cấu hình.

## Vì sao nên dùng OpenClaw?

- **Bạn kiểm soát dữ liệu:** trạng thái hoạt động, bộ nhớ và thông tin xác thực được lưu trên thiết bị của bạn.
- **Linh hoạt với mô hình AI:** có thể dùng các mô hình và bộ điều phối tác nhân như Claude, Codex hoặc mô hình chạy cục bộ thông qua cơ chế plugin.
- **Kết nối nhiều nền tảng:** trò chuyện với trợ lý qua những dịch vụ nhắn tin quen thuộc.
- **Có thể mở rộng:** bổ sung công cụ, kỹ năng (skills) và plugin để đáp ứng nhu cầu riêng.
- **Mã nguồn mở:** dự án được quản lý bởi [OpenClaw Foundation](https://openclaw.org), một tổ chức phi lợi nhuận độc lập; OpenClaw không có gói trả phí, dịch vụ lưu trữ do dự án cung cấp hay token riêng.

Các lời nhắc của bạn được gửi đến nhà cung cấp mô hình và nền tảng trò chuyện mà bạn cấu hình, cùng với dữ liệu chẩn đoán nếu bạn chủ động bật xuất dữ liệu đó. Theo mặc định, OpenClaw chỉ kiểm tra phiên bản mỗi ngày; thống kê tính năng ẩn danh là tùy chọn. Có thể tắt cả hai bằng cấu hình `update.checkOnStart: false`. Xem thêm [dữ liệu OpenClaw gửi đi](https://docs.openclaw.ai/gateway/telemetry) và [lý do thiết kế kiến trúc](https://docs.openclaw.ai/start/why-openclaw).

**Liên kết hữu ích:** [Trang chủ](https://openclaw.ai) · [Tài liệu](https://docs.openclaw.ai) · [Hướng dẫn bắt đầu](https://docs.openclaw.ai/start/getting-started) · [Câu hỏi thường gặp](https://docs.openclaw.ai/help/faq) · [Tầm nhìn dự án](VISION.md) · [DeepWiki](https://deepwiki.com/openclaw/openclaw)

## 1. Cài đặt OpenClaw

Trình cài đặt hỗ trợ macOS, Linux và Windows. Khi cần, trình cài đặt sẽ thiết lập môi trường Node.js được hỗ trợ.

### macOS / Linux / WSL2

Mở Terminal và chạy:

```bash
curl -fsSL https://openclaw.ai/install.sh | bash
```

### Windows PowerShell

Mở PowerShell và chạy:

```powershell
iwr -useb https://openclaw.ai/install.ps1 | iex
```

### Cài qua npm nếu đã có Node.js

Yêu cầu Node.js 24.16 trở lên hoặc 26.1 trở lên; khuyến nghị Node.js 26.

```bash
npm install -g openclaw@latest --allow-scripts=openclaw
```

Lệnh trên dành cho npm 12 hoặc npm 11.16 trở lên. Nếu dùng npm 11.15 trở xuống, hãy bỏ tùy chọn `--allow-scripts=openclaw`.

Xem [hướng dẫn cài đặt đầy đủ](https://docs.openclaw.ai/install) để biết thêm về Docker, Nix và các phương thức triển khai khác.

## 2. Bắt đầu nhanh

Nếu cài bằng trình cài đặt, quá trình thiết lập ban đầu sẽ tự khởi chạy. Hãy làm theo các bước trên màn hình.

Nếu bạn cài trực tiếp bằng npm, pnpm hoặc Bun, chạy:

```bash
openclaw onboard --install-daemon
```

Lệnh này mở trình thiết lập ban đầu, giúp kiểm tra quyền truy cập mô hình AI, tạo thư mục làm việc và cấu hình Gateway.

Sau khi thiết lập xong, kiểm tra trạng thái Gateway:

```bash
openclaw gateway status
```

Mở giao diện điều khiển:

```bash
openclaw dashboard
```

Giao diện Control UI sẽ mở ra. Hãy gửi thử một tin nhắn để xác nhận trợ lý hoạt động bình thường. Xem [hướng dẫn bắt đầu](https://docs.openclaw.ai/start/getting-started) để cấu hình các kênh trò chuyện và xử lý sự cố.

## 3. OpenClaw hoạt động như thế nào?

- **Gateway:** thành phần điều phối cục bộ, quản lý phiên làm việc, công cụ, sự kiện và kết nối đến các kênh.
- **Control UI, CLI và TUI:** các giao diện để điều khiển và tương tác với Gateway.
- **Kênh trò chuyện (Channels):** kết nối trợ lý với WhatsApp, Telegram, Slack, Discord, Google Chat, Signal, iMessage và các dịch vụ khác.
- **Ứng dụng đồng hành và Nodes:** bổ sung các tính năng như giọng nói, Canvas, camera, màn hình và thao tác trên thiết bị, tùy nền tảng được hỗ trợ.
- **Nhà cung cấp mô hình:** có thể sử dụng mô hình AI trực tuyến hoặc mô hình chạy cục bộ.
- **Tools, Skills và Plugins:** mở rộng khả năng thực hiện tác vụ của trợ lý.

Tìm hiểu thêm về [Gateway](https://docs.openclaw.ai/gateway), [các nền tảng](https://docs.openclaw.ai/platforms), [nhà cung cấp mô hình](https://docs.openclaw.ai/concepts/model-providers), [công cụ](https://docs.openclaw.ai/tools), [skills](https://docs.openclaw.ai/tools/skills) và [plugins](https://docs.openclaw.ai/plugins).

## 4. Bảo mật

Hãy coi tin nhắn đến là dữ liệu không đáng tin cậy. Với những kênh hỗ trợ tin nhắn trực tiếp (DM), người gửi chưa được xác thực sẽ cần ghép nối (pairing) theo mặc định. Để chấp thuận yêu cầu ghép nối, sử dụng:

```bash
openclaw pairing approve <channel> <code>
```

Trong phiên chính, các công cụ có thể chạy trực tiếp trên máy chủ nếu bạn chưa cấu hình sandbox. Vì vậy, trước khi cho người khác kết nối hoặc mở Gateway ra mạng bên ngoài, hãy đọc kỹ:

- [Hướng dẫn bảo mật](https://docs.openclaw.ai/gateway/security)
- [Hướng dẫn xử lý khi để lộ dịch vụ ra bên ngoài](https://docs.openclaw.ai/gateway/security/exposure-runbook)
- [Hướng dẫn sandbox](https://docs.openclaw.ai/gateway/sandboxing)

Chỉ bật những quyền và kết nối bạn thực sự cần. Không công khai Gateway ra Internet khi chưa hiểu rõ các rủi ro bảo mật.

## 5. Tài liệu theo nhu cầu

| Bạn muốn làm gì? | Tài liệu nên đọc |
| --- | --- |
| Cấu hình mô hình AI và xác thực | [Models](https://docs.openclaw.ai/concepts/models) · [Model providers](https://docs.openclaw.ai/concepts/model-providers) |
| Kết nối ứng dụng nhắn tin | [Channels](https://docs.openclaw.ai/channels) |
| Thêm công cụ, kỹ năng và plugin | [Tools](https://docs.openclaw.ai/tools) · [Skills](https://docs.openclaw.ai/tools/skills) · [Plugins](https://docs.openclaw.ai/plugins) · [ClawHub](https://clawhub.ai) |
| Chạy ứng dụng và kết nối thiết bị | [Platforms](https://docs.openclaw.ai/platforms) · [Nodes](https://docs.openclaw.ai/nodes) |
| Sử dụng dòng lệnh và lệnh trò chuyện | [CLI](https://docs.openclaw.ai/cli) · [Slash commands](https://docs.openclaw.ai/tools/slash-commands) |
| Cấu hình và vận hành Gateway | [Configuration](https://docs.openclaw.ai/gateway/configuration) · [Architecture](https://docs.openclaw.ai/concepts/architecture) |
| Cập nhật và chọn kênh phát hành | [Updating](https://docs.openclaw.ai/install/updating) · [Release channels](https://docs.openclaw.ai/install/development-channels) |

## 6. Phát triển mã nguồn

Kho mã nguồn sử dụng **pnpm workspace**. Không hỗ trợ chạy `npm install` trực tiếp tại thư mục gốc của repository.

Các bước cơ bản để tải mã nguồn và xây dựng dự án:

```bash
git clone https://github.com/openclaw/openclaw.git
cd openclaw
pnpm install
pnpm build
pnpm ui:build
```

Ý nghĩa các lệnh:

- `git clone`: tải repository về máy.
- `cd openclaw`: chuyển vào thư mục dự án.
- `pnpm install`: cài đặt các gói phụ thuộc.
- `pnpm build`: xây dựng các thành phần của dự án.
- `pnpm ui:build`: xây dựng giao diện người dùng.

Để đóng góp mã nguồn, đọc [CONTRIBUTING.md](CONTRIBUTING.md) và [hướng dẫn thiết lập môi trường phát triển](https://docs.openclaw.ai/start/setup).

> Lưu ý: các lệnh trên dành cho việc phát triển dự án từ mã nguồn. Nếu chỉ muốn cài và sử dụng OpenClaw, hãy làm theo phần **Cài đặt OpenClaw** ở trên.

## 7. Quản trị dự án và cộng đồng

OpenClaw được phát triển công khai dưới sự quản lý của [OpenClaw Foundation](https://openclaw.org), một tổ chức phi lợi nhuận độc lập. Quỹ hỗ trợ đội ngũ nòng cốt và ký phát hành các bản phát hành chính thức. Các nhà tài trợ đóng góp kinh phí và hạ tầng nhưng không sở hữu hoặc điều hành dự án; OpenAI là một nhà tài trợ, không phải chủ sở hữu.

Bạn có thể tham gia cộng đồng bằng cách:

- Báo lỗi hoặc đề xuất tính năng qua [Issue Tracker](https://github.com/openclaw/openclaw/issues/new/choose).
- Trao đổi và nhận hỗ trợ tại [cộng đồng OpenClaw](https://community.openclaw.ai/).
- Báo cáo lỗ hổng bảo mật theo hướng dẫn trong [SECURITY.md](SECURITY.md).
- Đóng góp mã nguồn theo [hướng dẫn đóng góp](CONTRIBUTING.md).
- Xây dựng tính năng mới dưới dạng plugin bằng [Plugin SDK](https://docs.openclaw.ai/plugins/building-plugins) và chia sẻ qua [ClawHub](https://clawhub.ai).

OpenClaw được tạo ra cho **Molty**, một trợ lý AI hình tôm hùm ngoài không gian, bởi Peter Steinberger cùng cộng đồng. Tìm hiểu thêm về [câu chuyện dự án](https://docs.openclaw.ai/start/lore), [soul.md](https://soul.md), [trang cá nhân của Peter](https://steipete.me) và [lịch sử sao của dự án](https://www.star-history.com/#openclaw/openclaw&type=date&legend=top-left).

## 8. Nhà tài trợ

OpenClaw Foundation nhận đóng góp từ Amazon, Lobster Computer Company, Offline Holdings, OpenAI, Red Hat và University of Michigan. Hạ tầng dự án được hỗ trợ bởi Blacksmith, Convex, GitHub, NVIDIA và Vercel.

## 9. Giấy phép

OpenClaw sử dụng giấy phép [MIT](LICENSE), bản quyền © OpenClaw Foundation. Xem [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) để biết thông tin về mã nguồn của bên thứ ba được tích hợp hoặc điều chỉnh trong dự án.

---

**OpenClaw 🦞 — Trợ lý AI mã nguồn mở, linh hoạt trên nhiều hệ điều hành và nền tảng.**
