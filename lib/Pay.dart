import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {

  var _razorpay = Razorpay();
  var amount=1;

  @override
  void initState() {
    // TODO: implement initState
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Payment Done");// Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Payment Failed");// Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(amount.toString(),style: TextStyle(color: Colors.black,fontSize: 24,),),
            ElevatedButton( child: Container(height: 150,width: 100,child: Center(child: Text("Pay"),),),
              onPressed: (){
                var options = {
                  'key': '<NopQzjy7SnpWN2jtnMmV6Iy5>',
                  'amount': amount, //in the smallest currency sub-unit.
                  'name': 'Acme Corp.',
                  'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API

                  'timeout': 300, // in seconds
                  'prefill': {
                    'contact': '6396947106',
                    'email': 'saxenakush789@gmail.com'
                  }
                };
                _razorpay.open(
                  options
                );
              },
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _razorpay.clear(); // Removes all listeners
    super.dispose();
  }
}

