<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chuyển đổi tiền tệ</title>
    <style>
        body { font-family: Arial, sans-serif; display: flex; justify-content: center; background: #f8fafc; margin: 0; padding: 90px 16px; }
        .converter-container { box-sizing: border-box; width: 100%; max-width: 390px; padding: 35px; border-radius: 8px; background: white; box-shadow: 0 4px 10px rgba(0,0,0,.1); text-align: center; }
        h2 { color: #1b2a7a; }
        label { display: block; text-align: left; font-weight: bold; color: #333; margin: 16px 0 8px; }
        input { box-sizing: border-box; width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; }
        button { width: 100%; padding: 12px; margin-top: 20px; background: #1b2a7a; color: white; border: none; border-radius: 4px; font-weight: bold; cursor: pointer; }
        button:hover { background: #121c54; }
    </style>
</head>
<body>
    <main class="converter-container">
        <h2>USD to VND Converter</h2>
        <form action="converter.jsp" method="POST" accept-charset="UTF-8">
            <label for="rate">Tỉ giá (VND/USD):</label>
            <input id="rate" type="number" name="rate" value="25000" min="0.01" step="any" required>
            <label for="usd">Lượng USD cần đổi:</label>
            <input id="usd" type="number" name="usd" placeholder="Nhập lượng USD" min="0" step="any" required>
            <button type="submit">Tính toán</button>
        </form>
    </main>
</body>
</html>
