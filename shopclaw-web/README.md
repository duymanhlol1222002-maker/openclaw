# 🛍️ ShopClaw Web — Chạm vào trải nghiệm mua sắm thông minh

<p align="center">
  <strong>Một cửa hàng trực tuyến nhỏ gọn, hiện đại và dễ khám phá.</strong><br>
  Được xây dựng bằng HTML, CSS và JavaScript thuần — mở nhanh, dễ học, dễ tùy biến.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/HTML5-structure-e34f26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5">
  <img src="https://img.shields.io/badge/CSS3-design-1572b6?style=for-the-badge&logo=css3&logoColor=white" alt="CSS3">
  <img src="https://img.shields.io/badge/JavaScript-interaction-f7df1e?style=for-the-badge&logo=javascript&logoColor=222" alt="JavaScript">
  <img src="https://img.shields.io/badge/Mode-Demo-8a63d2?style=for-the-badge" alt="Demo project">
</p>

<p align="center">
  <em>✨ Tìm món đồ bạn thích. Thêm vào giỏ. Khám phá cách một cửa hàng web vận hành.</em>
</p>

---

## 🌿 Giới thiệu

**ShopClaw Web** là dự án website bán hàng demo hướng đến trải nghiệm mua sắm trực quan và thân thiện. Giao diện được thiết kế theo phong cách hiện đại, giúp người dùng dễ dàng khám phá sản phẩm, tìm kiếm món đồ phù hợp và thử quy trình đặt hàng ngay trên trình duyệt.

Dự án nằm trong repository **OpenClaw** và có thể mở trực tiếp bằng trình duyệt mà không cần cài đặt npm hay thiết lập máy chủ để chạy thử. Đây cũng là nền tảng thực hành hữu ích để tìm hiểu cách HTML, CSS và JavaScript phối hợp tạo nên một website tương tác.

> 💡 **Tinh thần của ShopClaw:** giao diện dễ dùng, thao tác rõ ràng và đủ tính năng để bạn trải nghiệm một cửa hàng trực tuyến mẫu.

## ✨ Tính năng nổi bật

| Tính năng | Mô tả |
| --- | --- |
| 🛒 **Danh sách sản phẩm** | Khám phá các sản phẩm mẫu qua giao diện dạng thẻ trực quan. |
| 🔎 **Tìm kiếm nhanh** | Tìm sản phẩm theo tên, danh mục hoặc nội dung mô tả. |
| 🧭 **Lọc danh mục** | Thu hẹp lựa chọn theo nhóm sản phẩm. |
| ➕ **Quản lý sản phẩm demo** | Thêm sản phẩm mới, nhập giá và mô tả; có thể điền link ảnh thủ công. |
| 🧺 **Giỏ hàng tương tác** | Thêm sản phẩm, thay đổi số lượng và xem tổng tiền. |
| 🧾 **Đặt hàng minh họa** | Nhập thông tin nhận hàng và xem lại chi tiết đơn hàng demo. |
| 📚 **Lịch sử đơn hàng** | Xem các đơn hàng đã tạo trong trình duyệt hiện tại. |
| 📈 **Thống kê doanh thu demo** | Tổng hợp doanh thu, tiền hàng, số đơn và sản phẩm đã đặt từ dữ liệu demo đã lưu. |
| ✦ **Trợ lý mua sắm** | Trải nghiệm gợi ý sản phẩm bằng logic JavaScript mẫu. |
| 💾 **Lưu dữ liệu cục bộ** | Giỏ hàng, sản phẩm tự thêm và đơn hàng được lưu bằng `localStorage` trên trình duyệt. |
| 📱 **Giao diện linh hoạt** | Bố cục được thiết kế để sử dụng trên màn hình máy tính và thiết bị nhỏ. |

## 🚀 Bắt đầu trong vài giây

### Cách 1 — Mở trực tiếp

1. Tải hoặc sao chép thư mục `shopclaw-web` về máy.
2. Mở thư mục và tìm tệp `index.html`.
3. Nhấp đúp vào tệp để mở bằng Chrome, Edge hoặc trình duyệt yêu thích.
4. Bắt đầu tìm sản phẩm, thử giỏ hàng và khám phá các chức năng.

**Không cần cài npm.** Một số hình ảnh minh họa được tải từ Internet nên cần kết nối mạng để hiển thị đầy đủ.

### Cách 2 — Mở bằng VS Code

1. Mở thư mục `shopclaw-web` trong VS Code.
2. Mở tệp `index.html`.
3. Chạy bằng trình duyệt hoặc sử dụng extension **Live Server** nếu bạn đã cài.

## 🌐 Xuất bản bằng GitHub Pages

Bạn có thể đưa bản demo lên GitHub Pages để chia sẻ đường dẫn website.

1. Mở repository trên GitHub.
2. Chọn **Settings → Pages**.
3. Trong **Build and deployment → Source**, chọn **GitHub Actions**.
4. Mở tab **Actions** và kiểm tra workflow **Deploy ShopClaw Web to GitHub Pages**.
5. Khi workflow chạy thành công, mở URL được GitHub hiển thị trong phần Pages hoặc trong log workflow.

Workflow triển khai nằm tại `.github/workflows/deploy-shopclaw.yml` và xuất bản nội dung trong thư mục `shopclaw-web`.

> 🔗 Hãy dùng URL Pages do GitHub cung cấp trong repository của bạn; không nên đoán đường dẫn khi chưa xác nhận cấu hình triển khai.

## 🧰 Công nghệ sử dụng

- **HTML5** — xây dựng cấu trúc nội dung.
- **CSS3** — định dạng giao diện, bố cục và khả năng thích ứng theo kích thước màn hình.
- **JavaScript thuần** — xử lý tìm kiếm, lọc sản phẩm, giỏ hàng, biểu mẫu, đơn hàng và thống kê demo.
- **localStorage** — lưu dữ liệu thử nghiệm trong trình duyệt.
- **GitHub Pages / GitHub Actions** — có thể dùng để xuất bản website tĩnh.

## 🗂️ Cấu trúc thư mục

```text
openclaw/
├── .github/
│   └── workflows/
│       └── deploy-shopclaw.yml
└── shopclaw-web/
    ├── index.html
    └── README.md
```

## 📊 Hiểu đúng về dữ liệu và doanh thu

ShopClaw Web hiện là **bản demo frontend**, vì vậy:

- Thống kê doanh thu chỉ tính từ các đơn hàng demo được lưu trong trình duyệt hiện tại.
- Dữ liệu trong `localStorage` không tự đồng bộ giữa các trình duyệt hoặc thiết bị.
- Xóa dữ liệu trang web trong trình duyệt có thể làm mất sản phẩm tự thêm, giỏ hàng và lịch sử đơn hàng demo.
- Việc xác nhận đặt hàng không gửi đơn đến cửa hàng thật và không thu tiền.
- Trợ lý mua sắm hiện sử dụng logic JavaScript mẫu, **chưa kết nối mô hình AI hoặc Gateway OpenClaw thật**.

## 🔐 Trước khi phát triển thành cửa hàng thực tế

Nếu muốn đưa dự án vào sử dụng thật, bạn nên bổ sung:

1. **Backend và cơ sở dữ liệu** để quản lý sản phẩm, người dùng và đơn hàng tập trung.
2. **Đăng nhập và phân quyền** để bảo vệ khu vực quản trị.
3. **Kiểm tra dữ liệu phía máy chủ**, giới hạn tần suất và các biện pháp bảo vệ trước yêu cầu độc hại.
4. **Cổng thanh toán chính thức** cùng quy trình xác nhận giao dịch.
5. **Chính sách quyền riêng tư** và cách lưu trữ, xử lý thông tin khách hàng phù hợp.
6. **Backend trung gian an toàn** nếu tích hợp OpenClaw hoặc dịch vụ AI. Không đặt API key bí mật trong HTML hay JavaScript phía trình duyệt.

## 🧭 Hướng phát triển

- [ ] Kết nối cơ sở dữ liệu để đồng bộ sản phẩm và đơn hàng.
- [ ] Xây dựng trang quản trị có xác thực.
- [ ] Hoàn thiện quản lý tồn kho và trạng thái giao hàng.
- [ ] Tích hợp trợ lý AI thông qua backend an toàn.
- [ ] Bổ sung kiểm thử và cải thiện khả năng truy cập.

## 🤝 Đóng góp và học tập

Bạn có thể fork repository, thử nghiệm giao diện, cải tiến trải nghiệm hoặc bổ sung tính năng để phục vụ mục đích học tập. Khi thay đổi mã nguồn, hãy kiểm tra lại các luồng chính như tìm kiếm, thêm sản phẩm, giỏ hàng và đặt hàng demo.

---

<p align="center">
  <strong>🦞 ShopClaw Web</strong><br>
  <em>Một dự án nhỏ để học hỏi, thử nghiệm và từng bước xây dựng trải nghiệm mua sắm tốt hơn.</em>
</p>
