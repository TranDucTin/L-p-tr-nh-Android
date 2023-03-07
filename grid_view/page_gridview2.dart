

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class NguoiMau{
   String ten;
   String url;

  NguoiMau(this.ten, this.url);
}
NguoiMau nm1 = NguoiMau("Việt Nam", "https://media.doisongvietnam.vn/u/rootimage/editor/2019/08/31/13/32/w825/tuo1567211524_3309.jpg");
NguoiMau nm2 = NguoiMau("Thanh Hoá", "https://truyenhinhthanhhoa.qltns.mediacdn.vn/458221966042468352/2022/11/2/vu-ha-3212-1667367799328-16673677994361590095690.jpeg");
NguoiMau nm3 = NguoiMau("Thuỷ Tiên", "https://www.giaoduc.edu.vn/upload/images/2010/09/30/elizabeth-thuy-tien-cham-thi-vns-next-top-model_1.jpg");
NguoiMau nm4 = NguoiMau("Idonexia", "https://znews-photo.zingcdn.me/w660/Uploaded/neg_yslewlx/2022_04_18/pic.jpg");
NguoiMau nm5 = NguoiMau("English", "https://i.9mobi.vn/cf/images/sa/2019/10/24/hinh-anh-nguoi-dep-cho-dien-thoai-9.jpg");
NguoiMau nm6 = NguoiMau("Philippin", "https://afamilycdn.com/150157425591193600/2021/12/9/2648758772135069542704055043737419625680809n-1639037602575653986031.jpg");
NguoiMau nm7 = NguoiMau("Phương Anh", "https://photo-cms-plo.epicdn.me/w850/Uploaded/2023/wopsvun/2021_04_13/ahauphuonganh_csln.jpg");
NguoiMau nm8 = NguoiMau("Tường San", "https://image-us.eva.vn/upload/1-2020/images/2020-02-07/untitled-1-1581048890-547-width600height750.jpg");
List<NguoiMau> listNM = [nm1,nm2,nm3,nm4,nm5,nm6,nm7,nm8];

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Người Mẫu"),
      ),
      body: GridView.extent(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right:5),
          maxCrossAxisExtent: 250,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: listNM.map((e) => SingleChildScrollView(
            child: Card(
              elevation: 1,
              shadowColor: Colors.blue,
              child: Column(
                children: [
                  Image.network(e.url,),
                  Text(e.ten),
                ],
              ),
            ),
          )
          ).toList(),
      ),
    );
  }
}




