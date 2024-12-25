import 'package:flutter/material.dart';

enum ProjectIcons {
  star,
  notification,
  back,
}

extension GetIconData on ProjectIcons {
  IconData get getIconData {
    switch (this) {
      case ProjectIcons.star:
        return Icons.star_rounded;
      case ProjectIcons.notification:
        return Icons.notification_add_outlined;
      case ProjectIcons.back:
        return Icons.arrow_back_rounded;
    }
  }
}

enum PriceChangeICons {
  up,
  down,
  notFound,
}

extension GetPriceIconData on PriceChangeICons {
  IconData get getIconData {
    switch (this) {
      case PriceChangeICons.up:
        return Icons.arrow_drop_up_outlined;
      case PriceChangeICons.down:
        return Icons.arrow_drop_down;
      case PriceChangeICons.notFound:
        return Icons.close;
    }
  }
}
