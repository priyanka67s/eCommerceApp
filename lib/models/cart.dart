import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    // Shoe(name: 'Zoom FREAK',
    //   price: '2899',
    //   imagePath:'images/Nike Logo.jpeg' ,
    //   description: 'The forward-thinking design of his latest signature shoe'),
    Shoe(name: 'Air Jordand',
        price: '3599',
        imagePath:'images/black shoe.png' ,
        description: 'You have got the hops and the speed-lace up in shoes that enhance'),
    Shoe(name: 'kD Treys',
        price: '5499',
        imagePath:'images/season shoe.png' ,
        description: 'The forward-thinking design of his latest signature shoe'),
    Shoe(name: 'Fashion shoe',
        price: '8499',
        imagePath:'images/shoe.png' ,
        description: 'The fashion design of his latest signature shoe'),
    Shoe(name: 'Zoom Freak',
        price: '10499',
        imagePath:'images/white show.png' ,
        description: 'The moderate design of his latest signature shoe with stylist'),
    Shoe(name: 'Zoom fly  shoe',
        price: '7499',
        imagePath:'images/zoom fly shoe.png' ,
        description: 'The forward-thinking zoom fly walking design of his latest signature shoe'),
  ];

//list of items in user cart
List<Shoe> userCart =[];
//get list of items for sale
List<Shoe>  getShoeList(){
  return shoeShop;
}
// get cart
List<Shoe> getUserCart(){
  return userCart;
}
//add items to cart
void addItemToCart( Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}
// remove item from cart
void removeItemFromCart( Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}
}