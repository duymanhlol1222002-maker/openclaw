# StudyClaw Mini — Trợ lý học tập trên OpenClaw

Demo cơ bản chỉ có 2 nhiệm vụ:
1. Tóm tắt tài liệu học tập.
2. Giải thích kiến thức bằng tiếng Việt dễ hiểu.

Đây là **workspace mẫu dành cho OpenClaw**, không phải một ứng dụng AI độc lập. Dự án dùng agent và mô hình AI mà OpenClaw đã được cấu hình sẵn; không tạo web server hoặc API riêng.

## Các tệp

```text
studyclaw-mini/
├── AGENTS.md
├── SOUL.md
├── IDENTITY.md
├── README.md
└── skills/
    ├── tom-tat-tai-lieu/
    │   └── SKILL.md
    └── giai-thich-kien-thuc/
        └── SKILL.md
```

## Cách sử dụng

### 1. Cần có OpenClaw đang hoạt động

Trong terminal, kiểm tra:

```powershell
openclaw --version
openclaw doctor
openclaw agents list
```

Bạn cần hoàn tất cấu hình nhà cung cấp mô hình AI và Gateway theo hướng dẫn OpenClaw trước khi chạy agent.

### 2. Tạo agent StudyClaw

Clone repository của bạn nếu chưa có trên máy:

```powershell
git clone https://github.com/duymanhlol1222002-maker/openclaw.git
cd openclaw
```

Sau đó tạo agent với workspace mẫu. Ví dụ nếu repository được clone vào `C:\Users\YourName\openclaw`, chạy:

```powershell
openclaw agents add studyclaw --workspace "C:\Users\YourName\openclaw\studyclaw-mini"
```

Thay đường dẫn ví dụ bằng đường dẫn thực tế của bạn. Nếu agent `studyclaw` đã tồn tại, không chạy lệnh tạo lại; hãy kiểm tra `openclaw agents list` và cấu hình workspace hiện có.

### 3. Kiểm tra agent

```powershell
openclaw agents list
openclaw agent --agent studyclaw --message "Giải thích khóa chính trong SQL Server bằng tiếng Việt dễ hiểu, kèm ví dụ."
```

Nếu Gateway chưa chạy, kiểm tra:

```powershell
openclaw gateway status
```

Hãy khởi động Gateway theo hướng dẫn dành cho bản OpenClaw đã cài trên máy. Nếu CLI báo lỗi, hãy đọc thông báo lỗi và kiểm tra cấu hình agent/model trước.

## Ví dụ sử dụng

**Tóm tắt tài liệu**

> Hãy tóm tắt tài liệu sau thành các ý chính, thuật ngữ quan trọng và phần cần ghi nhớ: [dán nội dung bài học]

**Giải thích kiến thức**

> Giải thích sự khác nhau giữa khóa chính và khóa ngoại trong SQL Server cho người mới học. Cho ví dụ ngắn.

## Giới hạn demo

- Chỉ tập trung vào hai nhiệm vụ học tập; không có giao diện web riêng, tài khoản hoặc lịch sử học.
- Có thể dán văn bản trực tiếp vào tin nhắn. Khả năng đọc tệp phụ thuộc giao diện/kênh OpenClaw và công cụ được cấu hình.
- Nội dung trả lời phụ thuộc mô hình AI mà OpenClaw đang dùng.
- Không gửi mật khẩu, khóa API hoặc thông tin nhạy cảm vào tài liệu học tập.

## Tài liệu tham khảo

- OpenClaw: https://github.com/openclaw/openclaw
- CLI Agents: https://docs.openclaw.ai/cli/agents
- CLI Agent: https://docs.openclaw.ai/cli/agent
