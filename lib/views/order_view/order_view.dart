part of  './order_imports.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> with TickerProviderStateMixin  {
  late TabController _tabController;
  
    @override
    void initState() {
      super.initState();
      setState(() {
        _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
      _tabController.animateTo(1);
      });
     
    }
     @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>  [
            SliverAppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
            leading: IconButton(icon: const  Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {
              AppNavigation.navigatorPop(context);
            },),
            title: Text('My Orders', style: TextStyle(
              fontWeight: FontWeight.w700   ,
              
              color: Theme.of(context).textTheme.headline1!.color,)),
            pinned: true,
            floating: true,
            bottom: TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor:Colors.black ,
              padding: EdgeInsets.only(right: 140),
              indicatorSize: TabBarIndicatorSize.label,
              controller: _tabController,
              isScrollable: true,
              automaticIndicatorColorAdjustment: true,
              tabs: const  [
                Tab(child: Text('Ongoing', style: TextStyle(fontWeight: FontWeight.w700), textScaleFactor: 1.2,)),
                Tab(child: Text('Complete',style: TextStyle(fontWeight: FontWeight.w700), textScaleFactor: 1.2,)),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
         controller: _tabController,
        children: const  <Widget>[
      OnGoinView(),
CompletedOrderView()
       
        ],
      ),
    ));
  }
}