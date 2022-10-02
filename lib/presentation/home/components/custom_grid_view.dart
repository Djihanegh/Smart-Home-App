import 'package:flutter/cupertino.dart';
import 'package:smart_home_app/data/devices_data.dart';
import 'package:smart_home_app/presentation/home/components/device_item.dart';

import '../../../data/rooms_data.dart';
import 'room_item.dart';

const deviceKey = Key("device");

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      itemCount: key == deviceKey ? devicesList.length : roomsList.length,
      itemBuilder: (BuildContext ctx, index) {
        return key == deviceKey
            ? DeviceItem(device: devicesList[index])
            : RoomItem(room: roomsList[index]);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
    );
  }
}
