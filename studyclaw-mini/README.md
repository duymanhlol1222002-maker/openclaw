# StudyClaw Mini — Trợ lý học tập trên OpenClaw

Demo cơ bản chỉ có 2 nhiệm vụ:
1. Tóm tắt tài liệu học tập.
2. Giải thích kiến thức bằng tiếng Việt dễ hiểu.

Đây là workspace mẫu cho OpenClaw, không phải ứng dụng AI độc lập. Cần cài OpenClaw và cấu hình một mô hình AI trước khi chạy.

## Cấu trúc

```text
studyclaw-mini/
├── AGENTS.md
├── SOUL.md
├── IDENTITY.md
├── README.md
├── run-studyclaw.ps1
└── skills/
    ├── tom-tat-tai-lieu/SKILL.md
    └── giai-thich-kien-thuc/SKILL.md
```

## Cách chạy trên Windows

### Bước 1 — Cài OpenClaw

Mở PowerShell và chạy lệnh cài đặt chính thức:

```powershell
iwr -useb https://openclaw.ai/install.ps1 | iex
```

Làm theo các bước trên màn hình để hoàn tất onboarding và kết nối mô hình AI. Nếu lệnh `openclaw` chưa nhận diện sau khi cài, hãy đóng PowerShell rồi mở lại.

Tài liệu chính thức: https://docs.openclaw.ai/install

### Bước 2 — Tải repository về máy

Nếu chưa tải repository, chạy:

```powershell
git clone https://github.com/duymanhlol1222002-maker/openclaw.git
cd openclaw
```

Nếu máy chưa có Git, tải ZIP của repository từ GitHub và giải nén thay vì dùng lệnh `git clone`.

### Bước 3 — Chạy StudyClaw

Trong PowerShell, chuyển đến thư mục repository vừa tải:

```powershell
cd "$HOME\openclaw\studyclaw-mini"
```

Nếu bạn đã lưu repository ở vị trí khác, hãy thay đường dẫn bằng vị trí thực tế. Sau đó chạy:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\run-studyclaw.ps1
```

Script sẽ kiểm tra OpenClaw, tạo agent `studyclaw` nếu chưa có, rồi gửi một câu hỏi thử. Quyền thực thi chỉ được thay đổi trong cửa sổ PowerShell hiện tại.

### Nếu muốn chạy từng lệnh thủ công

Mở PowerShell tại thư mục repository rồi chạy:

```powershell
openclaw --version
openclaw doctor
openclaw agents add studyclaw --workspace "$PWD\studyclaw-mini"
openclaw agent --agent studyclaw --message "Giải thích khóa chính trong SQL Server bằng tiếng Việt dễ hiểu, kèm ví dụ."
```

Chỉ chạy lệnh `agents add` một lần. Nếu agent đã tồn tại, xem `openclaw agents list` và không tạo lại. Nếu Gateway hoặc mô hình AI chưa được cấu hình, hãy chạy `openclaw onboard` hoặc `openclaw doctor` và làm theo hướng dẫn hiển thị.

## Ví dụ yêu cầu

**Tóm tắt tài liệu:**
> Hãy tóm tắt nội dung sau thành ý chính, thuật ngữ quan trọng và phần cần ghi nhớ: [dán nội dung bài học]

**Giải thích kiến thức:**
> Giải thích sự khác nhau giữa khóa chính và khóa ngoại trong SQL Server cho người mới học. Cho ví dụ ngắn.

## Giới hạn demo

- Chỉ tập trung vào hai nhiệm vụ học tập; chưa có giao diện web riêng.
- Có thể dán văn bản trực tiếp vào tin nhắn. Khả năng đọc tệp phụ thuộc công cụ/kênh đã cấu hình trong OpenClaw.
- Nội dung trả lời phụ thuộc mô hình AI mà OpenClaw đang dùng.
- Không dán mật khẩu, khóa API hoặc thông tin nhạy cảm vào tài liệu học tập.

## Tài liệu tham khảo

- OpenClaw: https://github.com/openclaw/openclaw
- Cài đặt: https://docs.openclaw.ai/install
- CLI agents: https://docs.openclaw.ai/cli/agents
