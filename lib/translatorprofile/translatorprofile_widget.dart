import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'translatorprofile_model.dart';
export 'translatorprofile_model.dart';

class TranslatorprofileWidget extends StatefulWidget {
  const TranslatorprofileWidget({
    Key? key,
    this.translatorID,
    this.chatID,
  }) : super(key: key);

  final DocumentReference? translatorID;
  final DocumentReference? chatID;

  @override
  _TranslatorprofileWidgetState createState() =>
      _TranslatorprofileWidgetState();
}

class _TranslatorprofileWidgetState extends State<TranslatorprofileWidget>
    with TickerProviderStateMixin {
  late TranslatorprofileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TranslatorprofileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.translatorID!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final translatorprofileUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFF1FB6FF),
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
              onPressed: () async {
                context.pushNamed('listoftranslator');
              },
            ),
            title: Text(
              translatorprofileUsersRecord.displayName!,
              style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x230F1113),
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 8, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE0E3E7),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(60),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            translatorprofileUsersRecord
                                                .photoUrl,
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgBhcplevwUKGRs1P-Ps8Mwf2wOwnW_R_JIA&usqp=CAU',
                                          ),
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          translatorprofileUsersRecord
                                              .displayName!,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF0F1113),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          translatorprofileUsersRecord
                                              .phoneNumber!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF4B39EF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 8, 0, 0),
                                              child: Text(
                                                translatorprofileUsersRecord
                                                    .sector!,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Outfit',
                                                  color:
                                                  Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'chat',
                                                    queryParams: {
                                                      'chatUser':
                                                      serializeParam(
                                                        translatorprofileUsersRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'chatUser':
                                                      translatorprofileUsersRecord,
                                                      kTransitionInfoKey:
                                                      TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                        PageTransitionType
                                                            .fade,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );

                                                  final chatsCreateData = {
                                                    ...createChatsRecordData(
                                                      userA:
                                                      translatorprofileUsersRecord
                                                          .reference,
                                                      userB:
                                                      currentUserReference,
                                                      lastMessageTime:
                                                      getCurrentTimestamp,
                                                    ),
                                                    'users': functions
                                                        .createChatUserList(
                                                        translatorprofileUsersRecord
                                                            .reference,
                                                        currentUserReference!),
                                                  };
                                                  await ChatsRecord.collection
                                                      .doc()
                                                      .set(chatsCreateData);
                                                },
                                                child: Icon(
                                                  Icons.chat,
                                                  color: Color(0xFFF95F62),
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await launchUrl(Uri(
                                                  scheme: 'tel',
                                                  path:
                                                  translatorprofileUsersRecord
                                                      .phoneNumber!,
                                                ));

                                                final usersUpdateData = {
                                                  'number_customers':
                                                  FieldValue.increment(1),
                                                };
                                                await translatorprofileUsersRecord
                                                    .reference
                                                    .update(usersUpdateData);

                                                context.pushNamed(
                                                  'rate',
                                                  queryParams: {
                                                    'ratingTranslator':
                                                    serializeParam(
                                                      translatorprofileUsersRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Icon(
                                                Icons.phone,
                                                color: Color(0xFF1FB6FF),
                                                size: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 12),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 12, 16, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        translatorprofileUsersRecord
                                                            .displayName!,
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .subtitle1
                                                            .override(
                                                          fontFamily:
                                                          'Outfit',
                                                          color: Color(
                                                              0xFF0F1113),
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 4, 16, 12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    translatorprofileUsersRecord
                                                        .bio!,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Outfit',
                                                      color:
                                                      Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      lineHeight: 5,
                                                    ),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 10, 16, 10),
                                  child: Container(
                                    width: 100,
                                    height: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Wrap(
                                      spacing: 16,
                                      runSpacing: 16,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                      WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.4,
                                            height: 160,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF1F4F8),
                                              borderRadius:
                                              BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.payments,
                                                    color: Color(0xFFF95F62),
                                                    size: 44,
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 12, 0, 12),
                                                    child: Text(
                                                      translatorprofileUsersRecord
                                                          .price!,
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .title3,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Price per hour',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.4,
                                            height: 160,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .supervisor_account_rounded,
                                                    color: Color(0xFFF95F62),
                                                    size: 32,
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 12, 0, 12),
                                                    child: Text(
                                                      translatorprofileUsersRecord
                                                          .numberCustomers!
                                                          .toString(),
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .title3,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Customers',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.4,
                                            height: 160,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.auto_awesome,
                                                    color: Color(0xFFF95F62),
                                                    size: 32,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0, 12,
                                                            0, 12),
                                                        child: Text(
                                                          formatNumber(
                                                            functions.countAccuracy(
                                                                translatorprofileUsersRecord
                                                                    .accuracy!,
                                                                translatorprofileUsersRecord
                                                                    .numberCustomers!),
                                                            formatType:
                                                            FormatType
                                                                .decimal,
                                                            decimalType:
                                                            DecimalType
                                                                .periodDecimal,
                                                          ),
                                                          textAlign:
                                                          TextAlign.center,
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .title3,
                                                        ),
                                                      ),
                                                      Text(
                                                        '%',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Accuracy',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.4,
                                            height: 160,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                              PageTransitionType
                                                                  .fade,
                                                              child:
                                                              FlutterFlowExpandedImageView(
                                                                image: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    translatorprofileUsersRecord
                                                                        .certifacte,
                                                                    'https://jeremiegoldberg.com/wp-content/uploads/2020/06/index-3.jpeg',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                                allowRotation:
                                                                false,
                                                                tag:
                                                                valueOrDefault<
                                                                    String>(
                                                                  translatorprofileUsersRecord
                                                                      .certifacte,
                                                                  'https://jeremiegoldberg.com/wp-content/uploads/2020/06/index-3.jpeg',
                                                                ),
                                                                useHeroAnimation:
                                                                true,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Hero(
                                                          tag: valueOrDefault<
                                                              String>(
                                                            translatorprofileUsersRecord
                                                                .certifacte,
                                                            'https://jeremiegoldberg.com/wp-content/uploads/2020/06/index-3.jpeg',
                                                          ),
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              translatorprofileUsersRecord
                                                                  .certifacte,
                                                              'https://jeremiegoldberg.com/wp-content/uploads/2020/06/index-3.jpeg',
                                                            ),
                                                            width: 100,
                                                            height: 90,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      if (translatorprofileUsersRecord
                                                          .certifacte !=
                                                          null &&
                                                          translatorprofileUsersRecord
                                                              .certifacte !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(85,
                                                              75, 0, 0),
                                                          child: Icon(
                                                            Icons.star_rounded,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .customColor1,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      if (translatorprofileUsersRecord
                                                          .certifacte ==
                                                          null ||
                                                          translatorprofileUsersRecord
                                                              .certifacte ==
                                                              '')
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(85,
                                                              75, 0, 0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .solidTimesCircle,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .customColor3,
                                                            size: 20,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 4, 0, 12),
                                                    child: Text(
                                                      'View certificate',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
          ),
        );
      },
    );
  }
}
