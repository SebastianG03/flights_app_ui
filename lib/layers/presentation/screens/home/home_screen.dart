import 'package:flights_app/layers/domain/entities/items_data.dart';
import 'package:flights_app/layers/presentation/widgets/components/home/horizontal_corrousel.dart';
import 'package:flights_app/layers/presentation/widgets/custom/cards/cards.dart';
import 'package:flights_app/layers/presentation/widgets/shared/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<ItemData> itemsData = [
    ItemData(label: 'Flights', icon: Icons.flight_rounded),
    ItemData(label: 'Hotel', icon: Icons.hotel),
    ItemData(label: 'Transport', icon: Icons.directions_bus),
  ];

  final List<ItemData> carrouselItems = [
    ItemData(
        label: 'See the best flights to Miami',
        imageUrl: 'assets/img/images 3.jpeg',
        description: 'Book your flight today!'),
    ItemData(
        label: 'Discover where to go!',
        imageUrl: 'assets/img/images 6.jpeg',
        description: 'Get that destination inspiration!'),
    ItemData(
        label: 'Plan for your budget!',
        imageUrl: 'assets/img/images 4.jpg',
        description: 'See which dates save you more'),
    ItemData(
        label: 'Pick the right price.',
        imageUrl: 'assets/img/images 5.jpg',
        description: 'Make sure you book a good deal.'),
  ];
  final List<ItemData> carrouselItems2 = [
    ItemData(
        label: 'Great promotion for this summer',
        imageUrl: 'assets/img/images 4.jpg',
        description: 'Buy your package today!'),
    ItemData(
        label: 'Holiday travel unwrapped!',
        imageUrl: 'assets/img/images 2.jpeg',
        description: 'Relax at your vacations!'),
    ItemData(
        label: 'Pariatur esse laborum incididunt do.!',
        imageUrl: 'assets/img/images 1.jpeg',
        description:
            'Aliquip ut irure est eu consectetur incididunt sit officia culpa enim magna culpa irure esse.'),
    ItemData(
        label: 'Officia magna officia velit esse.',
        imageUrl: 'assets/img/images 3.jpeg',
        description: 'Consequat tempor duis consequat consectetur.'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(),
        SliverGrid.builder(
          itemCount: itemsData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
            child: CardButton(item: itemsData[index]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 100,
              height: 400,
              child: HorizontalCorrousel(
                  title: 'Hop on, hop off',
                  subtitle: 'Skip the layovers andd fly nonstop',
                  items: carrouselItems),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 100,
              height: 400,
              child: HorizontalCorrousel(
                  title: 'Your wishes starts here',
                  subtitle: 'Get the best flight at the best price',
                  items: carrouselItems2),
            ),
          ),
        )
      ],
    );
  }
}
