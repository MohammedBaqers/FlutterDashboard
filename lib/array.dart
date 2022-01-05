import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:tempapp/conistant.dart';

List drawerlist = [
  {
    'name': 'Dashboard',
    'icon': Icons.dashboard_customize_outlined,
  },
  {
    'name': 'Transform',
    'icon': Icons.transform,
  },
  {
    'name': 'Edit',
    'icon': Icons.edit,
  },
  {
    'name': 'Task',
    'icon': Icons.task,
  },
  {
    'name': 'Document',
    'icon': Icons.document_scanner,
  },
  {
    'name': 'Notifications',
    'icon': Icons.notifications,
  },
  {
    'name': 'Settings',
    'icon': Icons.settings,
  },
];

List pieChartData = [
  {'color': Colors.lightBlueAccent[300], 'value': 22, 'radius': 22},
  {'color': Colors.yellow, 'value': 13, 'radius': 19},
  {'color': Colors.red, 'value': 15, 'radius': 16},
  {'color': mainColor.withOpacity(.5), 'value': 25, 'radius': 13},
  {'color': Colors.blue, 'value': 25, 'radius': 25},
];

List storgelist = [
  {
    'title': 'Document Files',
    'file': '1328 files',
    'storge': '1.3GB',
    'icon': Icons.insert_drive_file_rounded,
    'color': Colors.blue
  },
  {
    'title': 'Media Files',
    'file': '2050 files',
    'storge': '10GB',
    'icon': Icons.markunread_mailbox_rounded,
    'color': Colors.lightBlue[100]
  },
  {
    'title': 'Other Files',
    'file': '500 files',
    'storge': '6.5GB',
    'icon': Icons.folder,
    'color': Colors.yellow
  },
  {
    'title': 'Unknown',
    'file': '140 files',
    'storge': '3.1GB',
    'icon': Icons.device_unknown,
    'color': Colors.red
  },
];

List midStorgelist = [
  {
    'title': 'Document',
    'file': '1328 files',
    'storge': '1.3GB',
    'icon': Icons.insert_drive_file_rounded,
    'color': Colors.blue,
    'per':0.5
  },
  {
    'title': 'Google Drvie',
    'file': '2050 files',
    'storge': '10GB',
    'icon': Icons.add_to_drive_outlined,
    'color': Colors.lightBlue[100],
    'per':0.2
  },
  {
    'title': 'Video',
    'file': '500 files',
    'storge': '6.5GB',
    'icon': Icons.video_camera_back_outlined,
    'color': Colors.yellow,
    'per':0.8
  },
  {
    'title': 'One drive',
    'file': '140 files',
    'storge': '3.1GB',
    'icon': Icons.insert_drive_file,
    'color': Colors.red,
    'per':0.3
  },
];
