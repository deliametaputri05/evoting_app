import 'dart:io';
import 'dart:math';

import 'package:evoting_mobile/provider/kandidat_provider.dart';
import 'package:evoting_mobile/provider/pemira_provider.dart';
import 'package:evoting_mobile/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

import '../../enum/loading_enum.dart';
import '../../models/kandidat_model/kandidat_model.dart';
import '../../provider/ormawa_provider.dart';
import '../../services/remote_data/facerecognition_remote_data.dart';
import '../widgets/widgets.dart';

part 'onboarding_page.dart';
part 'login_page.dart';
part 'main_page.dart';
part 'pemira_page.dart';
part 'profile_page.dart';
part 'quick_count_page.dart';
part 'form_login_page.dart';
part 'success_page.dart';
part 'kandidat_page.dart';
