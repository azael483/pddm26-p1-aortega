import 'package:flutter/material.dart';

import '../models/flower.dart';
import '../widgets/flower_card.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  static const List<Flower> flowers = [
    
    Flower(
      name: 'Rosas Rojas',
      description: 'Clásicas rosas rojas para una ocasión especial.',
      price: 520,      
    ),
    Flower(
      name: 'Girasoles',
      description: 'Un arreglo lleno de color y alegría.',
      price: 380,
    ),
    Flower(
      name: 'Tulipanes',
      description: 'Hermosos tulipanes para sorprender.',
      price: 490,
    ),
    Flower(
      name: 'Orquídeas',
      description: 'Arreglo elegante de orquídeas.',
      price: 650,
    ),
    Flower(
      name: 'Lirios',
      description: 'Lirios frescos con un aroma encantador.',
      price: 420,
    ),
    Flower(
      name: 'Mix Primavera',
      description: 'Combinación de flores de temporada.',
      price: 550,
    ),
    Flower(
      name: 'Flores Blancas',
      description: 'Arreglo delicado y elegante.',
      price: 470,
    ),
    Flower(
      name: 'Jardín Floral',
      description: 'Una combinación abundante de flores.',
      price: 620,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
              child: _buildHeader(),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final flower = flowers[index];

                  return FlowerCard(
                    flower: flower,
                  );
                },
                childCount: flowers.length,
              ),

              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.72,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Builder(
      builder: (context) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '¡Hola! :)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Encuentra flores\npara cada ocasión',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      height: 1.15,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFFFE0E8),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Center(
                child: Icon(Icons.shop_rounded),
              ),
            ),
          ],
        );
      },
    );
  }
}