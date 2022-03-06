
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pethero/app/components/star.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height*0.014),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'service');
        },
        child: Container(
          width: size.width,
          height: size.height*0.211,
          decoration: BoxDecoration(
            color: Color(0xff484747),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 4,
                offset: Offset(0,4)
              )
            ]
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height*0.019,left: size.width*0.029),
                    child: Container(
                      height: size.width*0.112,
                      width:size.height*0.061,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Image.asset("assets/img/avatar.png", height: 125.0,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.021*size.width),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Antônia', 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.032,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Cuido do seu pet do jeito que...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.026,
                          ),
                        ),
                        Text(
                          'monte castelo a 1,1km',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.021,
                          ),
                          
                        ),
                        Row(
                          children: [
                            Star(size: size),
                            Star(size: size),
                            Star(size: size),
                            Star(size: size),
                            Star(size: size),
                            Text(
                              ' (1)',
                              style: TextStyle(
                                fontSize: size.width*0.021,
                                color: Color(0xffF4506C),
                              ),
                            )
      
                          ],
                        ),
      
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.height*0.008,
                      left: size.width*0.312
                    
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "R\$", 
                            style: TextStyle(
                              color: Color(0xffF4506C),
                              fontSize: size.width*0.021
                            ),
                          ),
                          Text(
                            "35", 
                            style: TextStyle(
                              color: Color(0xffF4506C),
                              fontSize: size.width*0.037
                            ),
                          ),
                          Text(
                            "/noite", 
                            style: TextStyle(
                              color: Color(0xffF4506C),
                              fontSize: size.width*0.021
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height*0.017,
                  left: size.width*0.026
                ),
                child: Row(
                  children: [
                    Container(
                      width: size.width*0.837,
                      height: size.height*0.059,
                      decoration: BoxDecoration(
                        color: Color(0xff5A5858)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height*0.010,
                          left: size.width*0.032
                        ),
                        child: Text(
                          'Cuidou da minha cachorrinha com todo amor de dedicação e sempre me manteve informado sobre ela.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.026,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'roboto'  
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.width*0.041, 
                        left: size.width*0.016 
                      ),
                      child: Container(
                        width: size.width*0.072,
                        height: size.width*0.072,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/img/avatar2.png", height: 125.0,),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.048*size.width, top: size.width*0.016),
                child: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/apartment.svg',
                        height: size.width*0.064,
                        width: size.width*0.064,
                    ),
                    SizedBox(
                      width: size.width*0.0053 ,
                    ),
                    Text(
                      'Apê',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width*0.026,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(
                      width: size.width*0.064
                    ),
                    SvgPicture.asset(
                      'assets/icons/eye.svg',
                      height: size.width*0.06,
                      width: size.width*0.06,
                    ),
                    SizedBox(width: size.width*0.013,),
                    Text(
                      'Supervisão 24h',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width*0.026,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
