// custom_image_carousel.dart
import 'package:flutter/material.dart';

class CustomImageCarousel extends StatefulWidget {
  final List<String> imgList;

  CustomImageCarousel({required this.imgList});

  @override
  _CustomImageCarouselState createState() => _CustomImageCarouselState();
}

class _CustomImageCarouselState extends State<CustomImageCarousel> {
  int _current = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200, // Adjust this value as needed
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imgList.length,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.network(
                widget.imgList[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Positioned(
          top: 10,
          right: 12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xff686D76),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "${_current + 1}/${widget.imgList.length}",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ],import 'package:flutter/material.dart';
import 'package:kerent_app/home_page/controller/HomeController.dart';
import 'package:kerent_app/home_page/cobahome.dart';

class RentalPage extends StatelessWidget {
  final Produk produk;

   const RentalPage({super.key, required this.produk});

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
       child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProductCard(),
            SizedBox(height: 16),
            _buildForm(),
            SizedBox(height: 16),
            _buildRentButton(),
          ],
        ),
      ),
    )
    );
  }

  Widget _buildProductCard() {
    return Card(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF31363F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Image.asset(produk.images),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      produk.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF8F8F8),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      produk.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF8F8F8),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
  }

  Widget _buildForm() {
    return Column(
      children: [
        _buildDropdownField('Durasi Sewa'),
        _buildTextField('Nama'),
        _buildTextField('Kelas'),
        _buildTextField('Gopay account or Phone'),
      ],
    );
  }

  Widget _buildDropdownField(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text(label, style: TextStyle(color: Colors.white70)),
          items: [],
          onChanged: (value) {},
          icon: Icon(Icons.arrow_drop_down, color: Colors.white70),
          dropdownColor: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white70),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildRentButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Rent Now'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
    );
  }
}