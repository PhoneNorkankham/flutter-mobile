import 'dart:math';

import 'package:flutter/material.dart';

class MoonWidget extends StatelessWidget {
  final double size;
  final double percent;
  final Color? moonColor;
  final Color? earthShineColor;
  final double resolution = 96;

  const MoonWidget({
    super.key,
    required this.size,
    required this.percent,
    this.moonColor,
    this.earthShineColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Transform.scale(
          scale: size / (resolution * 2),
          child: CustomPaint(
            painter: _MoonPainter(moonWidget: this),
          ),
        ),
      ),
    );
  }
}

class _MoonPainter extends CustomPainter {
  final MoonWidget moonWidget;

  final Paint paintDark = Paint();
  final Paint paintLight = Paint();

  _MoonPainter({
    required this.moonWidget,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double radius = moonWidget.resolution;

    int width = radius.toInt() * 2;
    int height = radius.toInt() * 2;

    double xCenter = 0;
    double yCenter = 0;

    try {
      paintLight.color = moonWidget.moonColor ?? Colors.green;
      //달의 색깔로 전체 원을 그린다
      canvas.drawCircle(const Offset(0, 1), radius, paintLight);
    } catch (e) {
      radius = min(width, height) * 0.4;
      paintLight.color = moonWidget.moonColor ?? Colors.green;

      Rect oval = Rect.fromLTRB(
        xCenter - radius,
        yCenter - radius,
        xCenter + radius,
        yCenter + radius,
      );
      canvas.drawOval(oval, paintLight);
    }

    ///위상각은 태양 - 달 - 지구의 각도다.
    ///따라서 0 = full phase, 180 = new
    ///우리가 필요한 것은 일출 터미네이터의 위치 각도(태양 - 지구 - 달)다.
    ///위상각과 반대 방향이기 때문에 변환해야한다.
    double phaseAngle = moonWidget.percent * pi;
    double positionAngle = max(0, pi - phaseAngle);

    //이제 어두운 면을 그려야 한다.
    paintDark.color = moonWidget.earthShineColor ?? Colors.red;

    double cosTerm = cos(positionAngle);

    double rsquared = radius * radius;
    double whichQuarter = ((positionAngle * 2.0 / pi) + 4) % 4;

    for (int j = 0; j < radius; ++j) {
      double rrf = sqrt(rsquared - j * j);
      double rr = rrf;
      double xx = rrf * cosTerm;
      double x1 = xCenter - (whichQuarter < 2 ? rr : xx);
      double w = rr + xx;
      canvas.drawRect(Rect.fromLTRB(x1, yCenter - j, w + x1, yCenter - j + 2), paintDark);
      canvas.drawRect(Rect.fromLTRB(x1, yCenter + j, w + x1, yCenter + j + 2), paintDark);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  final deg2rad = pi / 180;

  // convert degrees to a valid angle:
  double angle(double deg) {
    while (deg >= 360.0) {
      deg -= 360.0;
    }
    while (deg < 0.0) {
      deg += 360.0;
    }
    return deg * deg2rad;
  }

  // Return the phase angle for the given date, in RADIANS.
  // Equation from Meeus eqn. 46.4.
  double getPhaseAngle(DateTime date) {
    // Time measured in Julian centuries from epoch J2000.0:
    DateTime tEpoch = DateTime(2000, 1, 1, 12);
    double t = (decimalYears(date) - decimalYears(tEpoch)) / 100.0;
    double t2 = t * t;
    double t3 = t2 * t;
    double t4 = t3 * t;

    // Mean elongation of the moon:
    double D =
        angle(297.8502042 + 445267.1115168 * t - 0.0016300 * t2 + t3 / 545868 + t4 / 113065000);
    // Sun's mean anomaly:
    double M = angle(357.5291092 + 35999.0502909 * t - 0.0001536 * t2 + t3 / 24490000);
    // Moon's mean anomaly:
    double mPrime =
        angle(134.9634114 + 477198.8676313 * t + 0.0089970 * t2 - t3 / 3536000 + t4 / 14712000);

    return (angle(180 -
        (D / deg2rad) -
        6.289 * sin(mPrime) +
        2.100 * sin(M) -
        1.274 * sin(2 * D - mPrime) -
        0.658 * sin(2 * D) -
        0.214 * sin(2 * mPrime) -
        0.110 * sin(D)));
  }

  double decimalYears(DateTime date) {
    return date.millisecondsSinceEpoch.toDouble() / 365.242191 / (24 * 60 * 60 * 1000);
  }

  double getTimeAsDecimalDay(DateTime date) {
    return date.millisecondsSinceEpoch.toDouble() / (24 * 60 * 60 * 1000);
  }
}
