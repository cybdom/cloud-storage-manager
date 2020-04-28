import 'package:flutter/material.dart';

class MyColors {
  static const lightBlue = Color(0xffe1f2ff),
      lightGrey = Color(0xfff5f6fc),
      blue = Color(0xff367ffa),
      orange = Color(0xffffefe1);
}

List<StorageBox> storageBoxes = [
  StorageBox(
    color: Color(0xffe1f2ff),
    availableSpace: 15,
    usedSpace: 5.3,
    expiryDate: "01/2021",
    icon: "assets/dropbox.png",
    name: "Dropbox",
    stats: [
      StatsByDate(
        bandwidthUsage: 3.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 29300,
      ),
      StatsByDate(
        bandwidthUsage: 6.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 19300,
      ),
      StatsByDate(
        bandwidthUsage: 4.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 34300,
      ),
      StatsByDate(
        bandwidthUsage: 8.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 1300,
      ),
      StatsByDate(
        bandwidthUsage: 3.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 69300,
      ),
      StatsByDate(
        bandwidthUsage: 1.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 79300,
      ),
      StatsByDate(
        bandwidthUsage: 8.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 89300,
      ),
    ],
    storageFolders: [
      StorageFolder(
        creationDate: "01/2020",
        icon: "assets/folder.png",
        name: "My Folders",
      ),
      StorageFolder(
        creationDate: "02/2020",
        icon: "assets/favorites.png",
        name: "My Favorites",
      ),
      StorageFolder(
        creationDate: "03/2020",
        icon: "assets/audio.png",
        name: "My Audio",
      ),
      StorageFolder(
        creationDate: "01/2020",
        icon: "assets/image.png",
        name: "My Pictures",
      ),
    ],
  ),
  StorageBox(
    color: Color(0xffe6e1ff),
    availableSpace: 15,
    usedSpace: 5.3,
    expiryDate: "01/2021",
    icon: "assets/google_drive.png",
    name: "Google Drive",
    stats: [
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 29300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 19300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 34300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 1300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 69300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 79300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 89300,
      ),
    ],
    storageFolders: [
      StorageFolder(
        creationDate: "01/2020",
        icon: "assets/folder.png",
        name: "My Folders",
      ),
      StorageFolder(
        creationDate: "02/2020",
        icon: "assets/favorites.png",
        name: "My Favorites",
      ),
      StorageFolder(
        creationDate: "03/2020",
        icon: "assets/audio.png",
        name: "My Audio",
      ),
      StorageFolder(
        creationDate: "01/2020",
        icon: "assets/image.png",
        name: "My Pictures",
      ),
    ],
  ),
  StorageBox(
    color: Color(0xffffefe1),
    availableSpace: 25,
    usedSpace: 6.3,
    expiryDate: "01/2021",
    icon: "assets/mediafire.png",
    name: "Mediafire",
    stats: [
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 29300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 19300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 34300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 1300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 69300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 79300,
      ),
      StatsByDate(
        bandwidthUsage: 10.1,
        downloadsCount: 30393,
        pageViews: 35491,
        visitorsCount: 89300,
      ),
    ],
    storageFolders: [
      StorageFolder(
        creationDate: "01/2020",
        icon: "assets/folder.png",
        name: "My Folders",
      ),
      StorageFolder(
        creationDate: "02/2020",
        icon: "assets/favorites.png",
        name: "My Favorites",
      ),
      StorageFolder(
        creationDate: "03/2020",
        icon: "assets/audio.png",
        name: "My Audio",
      ),
      StorageFolder(
        creationDate: "01/2020",
        icon: "assets/image.png",
        name: "My Pictures",
      ),
    ],
  ),
];

class StorageBox {
  final String name, icon, expiryDate;
  final double availableSpace, usedSpace;
  final List<StatsByDate> stats;
  final List<StorageFolder> storageFolders;
  final Color color;
  StorageBox({
    this.color,
    this.storageFolders,
    this.name,
    this.icon,
    this.expiryDate,
    this.availableSpace,
    this.usedSpace,
    this.stats,
  });
}

class StorageFolder {
  final String name, icon, creationDate;

  StorageFolder({
    this.creationDate,
    this.name,
    this.icon,
  });
}

class StatsByDate {
  final double bandwidthUsage;
  final int downloadsCount, visitorsCount, pageViews;
  StatsByDate({
    this.bandwidthUsage,
    this.downloadsCount,
    this.visitorsCount,
    this.pageViews,
  });
}
