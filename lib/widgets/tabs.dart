class TabbedConstants {
  static const List<Tab> sendTabs = [
    Tab(index: 0, title: 'NDANI YA NCHI'),
    Tab(index: 1, title: 'NJE YA NCHI'),
  ];
}

class Tab {
  final int index;
  final String title;

  const Tab({
    required this.index,
    required this.title,
  }) : assert(index >= 0, 'index cannot be negative');
}
