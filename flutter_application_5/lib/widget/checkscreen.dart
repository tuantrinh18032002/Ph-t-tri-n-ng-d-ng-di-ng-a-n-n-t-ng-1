import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Thông tin thanh toán',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // Thêm các widget hiển thị thông tin thanh toán ở đây
            _buildPaymentDetails(),
            SizedBox(height: 16.0),
            _buildConfirmationButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentDetails() {
    // Điều này có thể là một danh sách các mục chi tiết về thanh toán
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tổng tiền: \$199.99'),
        Text('Phương thức thanh toán: Thẻ tín dụng'),
        // Thêm các thông tin thanh toán khác nếu cần
      ],
    );
  }

  Widget _buildConfirmationButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Xử lý sự kiện khi người dùng xác nhận đơn hàng
        // Ví dụ: Hiển thị thông báo xác nhận, chuyển hướng đến trang xác nhận, vv.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Đơn hàng của bạn đã được xác nhận!'),
          ),
        );
      },
      child: Text('Xác nhận đơn hàng'),
    );
  }
}
