import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  final List<Map<String, dynamic>> gridMap = [{"title": "Router", "price": "1000", "images": "assets/images/logo.png"}];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: 
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0, 
          mainAxisSpacing: 12.0,
          mainAxisExtent: 290,
          ),
      itemCount: gridMap.length,
      itemBuilder: (_,index){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
              ),
              color: Colors.redAccent.shade100
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    "${gridMap.elementAt(index)['images']}",
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${gridMap.elementAt(index)['title']}",style: Theme.of(context).textTheme.titleMedium!.merge(const TextStyle(fontWeight: FontWeight.w700)),), 
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text("${gridMap.elementAt(index)['price']}",style: Theme.of(context).textTheme.titleSmall!.merge( TextStyle(fontWeight: FontWeight.w700,color: Colors.grey.shade500)),),const SizedBox(
                      height: 8.0,
                    ),
                    Row(children: [IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart,),),IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.cart),),],)
                  ],
                  ),
                ),
              ],
            ),    
          );
        },
      );
  }
}