import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting_mobile/provider/voting_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import 'package:evoting_mobile/models/pemira_model/pemira_model.dart';

import '../../models/kandidat_model/kandidat_model.dart';
import '../../models/ormawa_model/ormawa_model.dart';
import '../../models/voting_model/voting_model.dart';
import '../../provider/kandidat_provider.dart';
import '../../shared/shared.dart';
import '../pages/pages.dart';

part 'bottom_navbar.dart';
part 'custom_bottom_navbar.dart';
part 'header_widget.dart';
part 'ormawa_card.dart';
part 'pemira_card.dart';
part 'vote_card.dart';
part 'logo_card.dart';
