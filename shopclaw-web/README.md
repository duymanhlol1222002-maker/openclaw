# ShopClaw Web — Website bán hàng demo

ShopClaw Web là giao diện cửa hàng trực tuyến bằng HTML, CSS và JavaScript thuần, nằm trong repository OpenClaw của bạn. Website responsive, không cần cài npm để mở thử.

## Tính năng hiện có

- Danh sách sản phẩm mẫu và ảnh minh họa.
- Tìm kiếm theo tên/mô tả sản phẩm.
- Lọc danh mục.
- Thêm/xóa sản phẩm và điều chỉnh số lượng trong giỏ hàng.
- Lưu giỏ hàng bằng localStorage trên trình duyệt.
- Biểu mẫu đặt hàng demo, không thu tiền và không gửi đơn đi đâu.
- Trợ lý mua sắm demo có thể gợi ý từ danh sách sản phẩm mẫu.

## Mở website

Mở trực tiếp tệp `index.html` trong trình duyệt, hoặc mở thư mục này bằng VS Code. Có thể dùng extension Live Server nếu đã cài.

## Đưa lên GitHub Pages

Workflow nằm ở `.github/workflows/deploy-shopclaw.yml` và xuất bản thư mục `shopclaw-web`.

1. Vào repository GitHub của bạn.
2. Mở **Settings → Pages**.
3. Ở mục **Build and deployment → Source**, chọn **GitHub Actions**.
4. Mở tab **Actions**, chọn workflow **Deploy ShopClaw Web to GitHub Pages** và chạy workflow nếu chưa tự chạy.
5. Khi workflow thành công, mở đường dẫn Pages hiển thị trong phần Settings → Pages hoặc trong log workflow.

URL thường có dạng `https://<ten-tai-khoan>.github.io/<ten-repository>/`, nhưng hãy dùng chính URL GitHub Pages được GitHub cung cấp.

## OpenClaw: hiện trạng và cách tích hợp thật

Website hiện là bản demo frontend. Trợ lý mua sắm trong trang dùng logic JavaScript và dữ liệu mẫu, **chưa gọi OpenClaw hay mô hình AI thật**. GitHub Pages chỉ phục vụ tệp tĩnh, vì vậy không được đặt API key bí mật vào HTML/JavaScript.

Để tích hợp OpenClaw:
1. Triển khai một backend riêng (ví dụ Node.js) trên máy chủ bạn kiểm soát.
2. Backend xác thực yêu cầu, giới hạn tần suất và gọi OpenClaw qua API/Gateway đã cấu hình.
3. Đưa URL backend vào cấu hình frontend, và chỉ gửi dữ liệu cần thiết.
4. Lưu đơn hàng ở backend/cơ sở dữ liệu và tích hợp cổng thanh toán chính thức nếu cần thanh toán thật.

## Lưu ý

- Sản phẩm, giá, đánh giá và tồn kho chỉ là dữ liệu mẫu.
- Không có thanh toán thật, xác nhận đơn hàng thật, đăng nhập, quản lý kho hoặc lưu dữ liệu đơn hàng trên máy chủ.
- Ảnh minh họa được tải từ Unsplash nên cần kết nối Internet để hiển thị.
- Không dùng bản demo làm cửa hàng kinh doanh thật trước khi bổ sung backend, chính sách riêng tư, bảo mật và xử lý đơn hàng.
