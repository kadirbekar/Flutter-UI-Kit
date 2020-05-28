import 'package:flutter/cupertino.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

enum TabItem { Messages, Calls, Discover, More }

class TabItemData{
  final String title;
  final IconData icon;

  TabItemData(this.title,this.icon);

  static Map<TabItem,TabItemData> allTabs = {
    TabItem.Messages : TabItemData("Messages", LineAwesomeIcons.comment),
    TabItem.Calls : TabItemData("Calls", LineAwesomeIcons.phone),
    TabItem.Discover : TabItemData("Discover", LineAwesomeIcons.compass),
    TabItem.More : TabItemData("More", LineAwesomeIcons.list),
  };
}
