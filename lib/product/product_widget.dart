import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xFF961914),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
              child: Text(
                FFLocalizations.of(context).getText(
                  '91u4jgsm' /* Page Title */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 20,
                    ),
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(23, 23, 23, 23),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'mvqkv0is' /* Для взрослых собак  */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                        child: SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'o7u2lgm1' /* Баранина/Кролик */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF9F9E9D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                      Image.network(
                        'https://i.postimg.cc/YqJnbkJ4/1.png',
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Image.network(
                                'https://picsum.photos/seed/644/600',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Image.network(
                                'https://picsum.photos/seed/69/600',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.network(
                              'https://picsum.photos/seed/383/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 25),
                        child: SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'zsxp4qgf' /* Подходит для ежедвеного кормле... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF434242),
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 52),
                        child: SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            '79aho1jp' /* Состав: Мякоть баранины (46,5%... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF434242),
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'qivigu6v' /* 500г/300г/100г */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF9F9E9D),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('product_form');
                        },
                        text: FFLocalizations.of(context).getText(
                          '42tjb4nw' /* Заказать */,
                        ),
                        options: FFButtonOptions(
                          width: 330,
                          height: 60,
                          color: Color(0x00B81911),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF961914),
                                  ),
                          borderSide: BorderSide(
                            color: Color(0xFF961914),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
