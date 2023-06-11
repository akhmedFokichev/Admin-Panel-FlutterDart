
import 'package:adm/Templates/BaseView/template_viewmodel.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TemplateView extends StackedView<TemplateViewModel> {

  PageController page = PageController();
  SideMenuController sideMenu = SideMenuController();

  final TemplateViewModel viewModel;
  TemplateView(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: sideMenu,
            style: SideMenuStyle(
              // showTooltip: false,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[100],
              selectedColor: Colors.lightBlue,
              selectedTitleTextStyle: const TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            title: Column(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                  child: Image.asset(
                    'assets/images/easy_sidemenu.png',
                  ),
                ),
                const Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'mohada',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Dashboard',
                onTap: (page, _) {
                  sideMenu.changePage(page);
                },
                icon: const Icon(Icons.home),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                tooltipContent: "This is a tooltip for Dashboard item",
              ),
              SideMenuItem(
                priority: 1,
                title: 'Users',
                onTap: (page, _) {
                  sideMenu.changePage(page);
                },
                icon: const Icon(Icons.supervisor_account),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Files',
                onTap: (page, _) {
                  sideMenu.changePage(page);
                },
                icon: const Icon(Icons.file_copy_rounded),
                trailing: Container(
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 3),
                      child: Text(
                        'New',
                        style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                      ),
                    )),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Download',
                onTap: (page, _) {
                  sideMenu.changePage(page);
                },
                icon: const Icon(Icons.download),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Settings',
                onTap: (page, _) {
                  sideMenu.changePage(page);
                },
                icon: const Icon(Icons.settings),
              ),
              // SideMenuItem(
              //   priority: 5,
              //   onTap:(page){
              //     sideMenu.changePage(5);
              //   },
              //   icon: const Icon(Icons.image_rounded),
              // ),
              // SideMenuItem(
              //   priority: 6,
              //   title: 'Only Title',
              //   onTap:(page){
              //     sideMenu.changePage(6);
              //   },
              // ),
              const SideMenuItem(
                priority: 7,
                title: 'Exit',
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Dashboard',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Users',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Files',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Download',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Only Title',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Only Icon',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget builder(BuildContext context, TemplateViewModel viewModel, Widget? child) {
    // TODO: implement builder
    throw UnimplementedError();
  }

  @override
  TemplateViewModel viewModelBuilder(BuildContext context) {
    // TODO: implement viewModelBuilder
    throw UnimplementedError();
  }
}

class _WidgetState extends State<StatefulWidget> {
  TemplateViewModel viewModel;
  _WidgetState(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar"),
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset("assets/icon.png")
        Text("Анкета" + viewModel.index.toString()),

        Center(
          child: CupertinoButton.filled(
              child: Text("Начать"),
              onPressed: () {
                viewModel.tap();
                setState(() {});
                // viewModel.start();
              }),
        )
      ],
    ),
    );
  }
}

// class MyWidget<T> extends StatefulWidget {
//   @override
//   _MyWidgetState<T> createState() => _MyWidgetState<T>();
// }
//
// class _MyWidgetState<T> extends State<MyWidget<T>> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
//
//   myMethod<T>() {
//
//   }
// }