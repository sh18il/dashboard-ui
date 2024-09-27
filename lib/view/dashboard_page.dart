import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sidebarx/sidebarx.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SidebarXController _controller = SidebarXController(selectedIndex: 0);
    Map<String, double> dataMap = {
      "Awaiting Approval": 225,
      "Execution": 150,
      "Completed": 300,
    };

    List<Color> colorList = [
      Colors.orange,
      Colors.blue,
      Colors.green,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                CircleAvatar(child: Icon(Icons.person)),
                Gap(10),
                Text("Mohammed Ibrahim")
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 5, color: Colors.black12)
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.dashboard, color: Colors.red),
                          Gap(5),
                          Text("Dashboard",
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.assignment, color: Colors.black),
                          Gap(5),
                          Text("Projects",
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5, color: Colors.black12)
                          ],
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "ACTIVE JOC PROJECTS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.sync, size: 30, color: Colors.blue),
                                Gap(10),
                                Text("900",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5, color: Colors.black12)
                          ],
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "ACTIVE CPC PROJECTS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.sync, size: 30, color: Colors.blue),
                                Gap(10),
                                Text("500",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5, color: Colors.black12)
                          ],
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "COMPLETED PROJECTS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check_circle,
                                    size: 30, color: Colors.green),
                                Gap(10),
                                Text("1000",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5, color: Colors.black12)
                          ],
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "PENDING APPROVAL",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.timer,
                                    size: 30, color: Colors.orange),
                                Gap(10),
                                Text("100",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5, color: Colors.black12)
                          ],
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "TOTAL PROJECTS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.folder, size: 30, color: Colors.red),
                                Gap(10),
                                Text("2500",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ],
                      ),
                      child: Column(
                        children: [
                          const Text("ACTIVE PROJECT STATUS",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("225"),
                                      Gap(4),
                                      CircleAvatar(
                                        backgroundColor: colorList[0],
                                        maxRadius: 4,
                                      ),
                                      Gap(5),
                                      Text("Awaiting Approval"),
                                    ],
                                  ),
                                  Gap(10),
                                  Row(
                                    children: [
                                      Text("150"),
                                      Gap(4),
                                      CircleAvatar(
                                        backgroundColor: colorList[1],
                                        maxRadius: 4,
                                      ),
                                      Gap(5),
                                      Text("Execution"),
                                    ],
                                  ),
                                  Gap(10),
                                  Row(
                                    children: [
                                      Text("300"),
                                      Gap(4),
                                      CircleAvatar(
                                        backgroundColor: colorList[2],
                                        maxRadius: 4,
                                      ),
                                      Gap(5),
                                      Text("Completed"),
                                    ],
                                  ),
                                  Gap(10),
                                ],
                              ),
                              PieChart(
                                dataMap: dataMap,
                                animationDuration:
                                    const Duration(milliseconds: 800),
                                chartLegendSpacing: 32,
                                chartRadius:
                                    MediaQuery.of(context).size.width / 8,
                                colorList: colorList,
                                initialAngleInDegree: 0,
                                chartType: ChartType.disc,
                                ringStrokeWidth: 32,
                                centerText: "Projects",
                                legendOptions:
                                    const LegendOptions(showLegends: false),
                                chartValuesOptions: const ChartValuesOptions(
                                  showChartValueBackground: false,
                                  showChartValues: true,
                                  showChartValuesInPercentage: true,
                                  decimalPlaces: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ],
                      ),
                      child: Column(
                        children: [
                          const Gap(10),
                          Container(
                            height: 150,
                            child: const Center(child: Text("Line Chart ")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 5, color: Colors.black12)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("CLIENT",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("CLIENT ID ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("STATUS ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("PLANNING ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("EXECUTION ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("COMPLETED ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("PENDING ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Text("TOTAL ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Gap(10),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      child: Icon(Icons.person,
                                          color: Colors.white),
                                    ),
                                    const Gap(10),
                                    const Expanded(
                                        child: Text("JOHN SMITH",
                                            style: TextStyle(fontSize: 16))),
                                    const Text("#141147",
                                        style: TextStyle(fontSize: 16)),
                                    const Gap(10),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      child: const Text("ACTIVE",
                                          style:
                                              TextStyle(color: Colors.green)),
                                    ),
                                    const Spacer(),
                                    const Text("234",
                                        style: TextStyle(fontSize: 16)),
                                    const Spacer(),
                                    const Text("2346",
                                        style: TextStyle(fontSize: 16)),
                                    const Spacer(),
                                    const Text("12456",
                                        style: TextStyle(fontSize: 16)),
                                    const Spacer(),
                                    const Text("235",
                                        style: TextStyle(fontSize: 16)),
                                    const Spacer(),
                                    const Text("23567",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SidebarX(
        controller: _controller,
        items: [
          SidebarXItem(icon: Icons.home),
          SidebarXItem(icon: Icons.settings),
        ],
      ),
    );
  }
}
