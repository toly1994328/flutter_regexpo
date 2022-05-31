import 'package:equatable/equatable.dart';

class TabList{
  final List<TabBean> tabs;

  TabList({required this.tabs});

  static TabList test = TabList(
    tabs: [
      // TabBean(name: 'tab_bar.dart',flag: true,content: 'tab_bar.dart'),
      // TabBean(name: 'main.dart',flag: true,content: 'main.dart'),
      // TabBean(name: 'splash.dart',flag: false,content: 'splash.dart'),
    ]
  );
}

class TabBean extends Equatable{
  final int id;
  final String name;
  final bool flag;
  final String content;

  TabBean({required this.name,required this.flag,required this.content,required this.id});

  @override
  String toString() {
    return 'TabBean{name: $name, flag: $flag, content: $content}';
  }

  @override
  List<Object?> get props => [id];
}