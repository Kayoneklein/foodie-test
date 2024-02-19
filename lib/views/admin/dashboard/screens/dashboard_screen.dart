part of '../index.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: FColors.black,
        title: Text(
          Config.appName,
          style: theme.textTheme.headlineMedium?.copyWith(
            color: FColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          _AppBarActionIcon(icon: FIcons.phone),
          _AppBarActionIcon(icon: FIcons.whatsapp),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: FColors.black,
        radius: 37,
        child: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (ctx) {
                  return Dialog(
                    backgroundColor: Colors.white,
                    insetPadding: const EdgeInsets.only(left: 20, right: 20),

                    child: SizedBox(
                      height: size.height * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          right: 10,
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Images',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.2,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.asset(
                                    FImages.food,
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: FColors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                fixedSize: Size(size.width, 32),
                              ),
                              child: Text(
                                'Select Images',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: FColors.white,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  // width: size.width * 0.35,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Name of the product',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                const HorizontalSpace(10),
                                Container(
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    color: FColors.black,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Category',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: FColors.white,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FColors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // actions: [
                    //   TextButton(
                    //     onPressed: () => Navigator.pop(context),
                    //     child: Text('Cancel'),
                    //   ),
                    //   TextButton(
                    //     onPressed: () {},
                    //     child: Text('Save'),
                    //   ),
                    // ],
                  );
                });
          },
          icon: const Icon(
            Icons.add,
            color: FColors.white,
            size: 41,
          ),
          // iconSize: 74,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10, left: 10),
              child: Text(
                'Salads',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Card(
                        child: Image.asset(
                          FImages.food,
                          height: size.height * 0.2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        right: 20,
                        child: Row(
                          children: [
                            _AdminFoodIcon(icon: Icons.add),
                            _AdminFoodIcon(icon: Icons.delete_outline_outlined),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chicken Salad',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text('\$7.0'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AdminFoodIcon extends StatelessWidget {
  final IconData icon;
  const _AdminFoodIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: CircleAvatar(
        backgroundColor: FColors.white,
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
        ),
      ),
    );
  }
}
