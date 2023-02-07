import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider & Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,

            activeColor: AppTheme.primary,
            // divisions: 10, // Diviciones fijas para el valor
            value: _sliderValue,
            onChanged: !_sliderEnabled
                ? null
                : (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  },
          ),
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
            title: const Text("Habilitar Slider"),
          ),
          // Switch.adaptive(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value;
          //     setState(() {});
          //   },
          // ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
             title: const Text("Habilitar Slider"),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://static.wikia.nocookie.net/chainsaw-man/images/5/54/Pochita_anime_design.png/revision/latest?cb=20220919121110'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
