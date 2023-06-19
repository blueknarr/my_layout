import 'package:flutter/material.dart';
import 'package:my_layout/ui/component/custom_button.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Image.network(
      'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b38436e0-1698-4ccd-ad71-7f64bb805ea6/에어-조던-1-하이-플라이이즈-남성-신발-dciANdj7.png',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildBottom() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          _buildTitle(),
          const SizedBox(height: 30),
          _buildButton(),
          const SizedBox(height: 30),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '조던 1 리미티드 에디션',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '희망 가격 : 100만원',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          child: Row(
            children: [
              Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: Colors.red,
              ),
              const Text('41'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          top: Icon(Icons.call),
          bottom: Text('CALL'),
        ),
        CustomButton(
          top: Icon(Icons.arrow_outward),
          bottom: Text('ROUTE'),
        ),
        CustomButton(
          top: Icon(Icons.share),
          bottom: Text('SHARE'),
        ),
      ],
    );
  }

  Widget _buildText() {
    return const Text(
      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
      textAlign: TextAlign.justify,
    );
  }
}
