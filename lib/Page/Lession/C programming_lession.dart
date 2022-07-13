import 'dart:io';
import 'package:flutter/material.dart';
import 'package:learncode/Page/Lession/API/My_PDF.dart';
import 'package:learncode/Page/Lession/API/Cprogramming_pdf.dart';
class pdfCprogramming extends StatefulWidget {
  const pdfCprogramming({Key? key}) : super(key: key);

  @override
  State<pdfCprogramming> createState() => _pdfCprogrammingState();
}

class _pdfCprogrammingState extends State<pdfCprogramming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: _buildBody,
    );
  }

  get _buildAppbar{
    return AppBar(
      centerTitle: true,
      title: Text("មេរៀន C programming"),
    );
  }
  get _buildBody{
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 10,),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 1"),
              onTap: () async{
                final url1 = "C programming.pdf";
                final file1 = await PDFApi.loadFirebase(url1);
                if(file1 == null) return;
                openPDF(context, file1);
                //openPDF(context,file);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 2"),
              onTap: ()async{
                final url2 = "Getting C programming.pdf";
                final file2 = await PDFApi.loadFirebase(url2);
                if(file2 == null) return;
                openPDF(context, file2);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 3"),
              onTap: ()async{
                final url3 = "Lession Datatype and Oerators.pdf";
                final file3 = await PDFApi.loadFirebase(url3);
                if(file3 == null) return;
                openPDF(context, file3);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 4"),
              onTap: ()async{
                final url4 = "Lession Condition and loop.pdf";
                final file4 = await PDFApi.loadFirebase(url4);
                if(file4 == null) return;
                openPDF(context, file4);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 5"),
              onTap: ()async{
                final url5 = "Lession Array.pdf";
                final file5 = await PDFApi.loadFirebase(url5);
                if(file5 == null) return;
                openPDF(context, file5);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 6"),
              onTap: ()async{
                final url6 = "Lession Function.pdf";
                final file6 = await PDFApi.loadFirebase(url6);
                if(file6 == null) return;
                openPDF(context, file6);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 7"),
              onTap: ()async{
                final url7 = "Lession Pointers.pdf";
                final file7 = await PDFApi.loadFirebase(url7);
                if(file7 == null) return;
                openPDF(context, file7);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 8"),
              onTap: ()async{
                final url8 = "Lession String.pdf";
                final file8 = await PDFApi.loadFirebase(url8);
                if(file8== null) return;
                openPDF(context, file8);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 9"),
              onTap: ()async{
                final url9 = "Lession Structure.pdf";
                final file9 = await PDFApi.loadFirebase(url9);
                if(file9 == null) return;
                openPDF(context, file9);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Lession 10"),
              onTap: ()async{
                final url10 = "Lession File i.pdf";
                final file10 = await PDFApi.loadFirebase(url10);
                if(file10 == null) return;
                openPDF(context, file10);
              },
            ),
            InkWell(
              child:  _buildItems("images/file/cpro.png","Example Array"),
              onTap: ()async{
                final url11 = "Example Array.pdf";
                final file11= await PDFApi.loadFirebase(url11);
                if(file11 == null) return;
                openPDF(context, file11);
              },
            ),

          ],
        ),
      ),
    );
  }
  _buildItems(String image,String title){
    return Card(
      child: Container(
        alignment: Alignment.center,
        height: 80,
        child: ListTile(
          leading: Image.asset(image,width: 80,height: 80,),
          title: Text(title,style: TextStyle(fontSize: 16),),

        ),
      ),
    );
  }
void openPDF(BuildContext context,File file) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PDFViewPage(file : file)));
}

