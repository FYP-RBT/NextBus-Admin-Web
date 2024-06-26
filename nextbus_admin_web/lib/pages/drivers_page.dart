
import 'package:flutter/material.dart';
import 'package:nextbus_admin/widgets/drivers_data_list.dart';

import '../methods/common_methods.dart';

class DriversPage extends StatefulWidget
{
  static const String id = "\webPageDrivers";

  const DriversPage({super.key});

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage>
{
  CommonMethods cMethods = CommonMethods();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Manage Drivers",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              Row(
                children: [
                  cMethods.header(2, "USER ID"),
                  cMethods.header(1, "USER NAME"),
                  cMethods.header(2, "USER EMAIL"),
                  cMethods.header(1, "PHONE"),
                  cMethods.header(1, "ACTION"),
                ],
              ),

              //display data
              DriversDataList(),

            ],
          ),
        ),
      ),
    );
  }
}
