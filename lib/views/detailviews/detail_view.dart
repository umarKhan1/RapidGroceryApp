part of 'detail_imports.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late PageController controller;
  int currentPage = 0;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 287,
            color: Colors.grey,
            child: PageView.builder(
                controller: controller,
                itemCount: 5,
             
                onPageChanged: (value) => setState(() => currentPage = value),
                itemBuilder: ((context, index) {
                  return Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FancyShimmerImage(
                          boxFit: BoxFit.cover,
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
                          errorWidget: Image.network(
                              'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 28.0),
                            child: DotsIndicator(dotsCount: 5,position: double.parse(
                                index.toString()), ),
                          )),
                   
                    ],
                  );
                })),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),    color: Colors.white),
          

            height: 450,
            ),
          )
        ],
      ),
    );
  }
}
