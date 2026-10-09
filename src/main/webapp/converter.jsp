<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kết quả chuyển đổi</title>
    <style>
        body { font-family: Arial, sans-serif; display: flex; justify-content: center; background: #f8fafc; margin: 0; padding: 90px 16px; }
        .result-container { box-sizing: border-box; width: 100%; max-width: 440px; padding: 35px; border-radius: 8px; background: white; box-shadow: 0 4px 10px rgba(0,0,0,.1); text-align: center; }
        h2 { color: #1b2a7a; }
        .success { background: #e8f5e9; color: #238040; padding: 15px; border-radius: 8px; }
        .error { background: #ffebee; color: #c0392b; padding: 15px; border-radius: 8px; }
        .back-btn { display: inline-block; margin-top: 20px; padding: 10px 20px; border-radius: 4px; background: #1b2a7a; color: white; text-decoration: none; }
    </style>
</head>
<body>
    <main class="result-container">
        <h2>KẾT QUẢ CHUYỂN ĐỔI</h2>
        <%-- Dùng JSP Scriptlet để lấy dữ liệu và tính toán. --%>
        <%
            try {
                if (!"POST".equalsIgnoreCase(request.getMethod())) {
                    throw new IllegalArgumentException("Chỉ hỗ trợ POST");
                }
                float rate = Float.parseFloat(request.getParameter("rate"));
                float usd = Float.parseFloat(request.getParameter("usd"));
                if (!Float.isFinite(rate) || !Float.isFinite(usd) || rate <= 0 || usd < 0) {
                    throw new IllegalArgumentException("Dữ liệu không hợp lệ");
                }
                float vnd = rate * usd;
                if (!Float.isFinite(vnd)) {
                    throw new IllegalArgumentException("Kết quả không hợp lệ");
                }
        %>
        <p>Tỉ giá hiện tại: <b><%= rate %></b> VND/USD</p>
        <p>Lượng USD yêu cầu: <b>$<%= usd %></b></p>
        <div class="success">
            <h3>Thành tiền: <%= vnd %> VNĐ</h3>
        </div>
        <%
            } catch (Exception e) {
        %>
        <div class="error">
            <h3>Lỗi xử lý!</h3>
            <p>Dữ liệu đầu vào không hợp lệ. Vui lòng kiểm tra lại.</p>
        </div>
        <%
            }
        %>
        <a class="back-btn" href="index.jsp">Quay lại trang chủ</a>
    </main>
</body>
</html>
