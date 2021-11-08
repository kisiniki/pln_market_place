import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(backgroundHome),
          DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 0.8,
              builder: (BuildContext context, myScrollController) {
                return Container(
                  width: screenWidth(context),
                  color: Colors.white,
                  child: ListView.builder(
                      controller: myScrollController,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Center(
                                child: Image.asset(
                              dividerDraggableScroll,
                              scale: 5,
                            )),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuTokenTagihan)),
                                      ),
                                      const Text(
                                        "Token & Tagihan",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuPasangBaruListrik)),
                                      ),
                                      const Text(
                                        "Pasang Baru Listrik",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, reportOutageRoute);
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuReportOutage)),
                                      ),
                                      const Text(
                                        "Report Outage",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuSelfMatering)),
                                      ),
                                      const Text(
                                        "Self Matering",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuComplaintsSupport)),
                                      ),
                                      const Text(
                                        "Complains & Support",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuInfoStimulus)),
                                      ),
                                      const Text(
                                        "Info Stimulus",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuSimulasiBiaya)),
                                      ),
                                      const Text(
                                        "Simulasi Biaya",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: screenWidth(context) * 0.18,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/notfound");
                                        },
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            height: screenWidth(context) * 0.18,
                                            width: screenWidth(context) * 0.18,
                                            child: Image.asset(
                                                iconMenuPemasanganSementara)),
                                      ),
                                      const Text(
                                        "Pemasanagan Sementara",
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                );
              })
        ],
      ),
    );
  }
}
