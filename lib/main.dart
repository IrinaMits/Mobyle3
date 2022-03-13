// Мицкевич ПИ1903 Лаб3

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Общежития КУБГАУ',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Общежития КУБГАУ'),
            ),
            body: ListView(children: [
              Image.asset(
                'images/kubsau.jpg',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Общежитие № 20',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Краснодар, ул. Калинина, 13',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey),
                        )
                      ]),
                ),
                const Icon(Icons.favorite, color: Colors.red),
                const Text('315'),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.call,
                    size: 40,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.near_me,
                    size: 40,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.share,
                    size: 40,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Позвонить',
                        style: TextStyle(fontSize: 16, color: Colors.green)),
                    Text('Найти',
                        style: TextStyle(fontSize: 16, color: Colors.green)),
                    Text('Поделиться',
                        style: TextStyle(fontSize: 16, color: Colors.green)),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Flexible(
                      child: Text(
                          'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати '
                          'общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех'
                          'нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В  '
                          'соответствии с Положением о студенческих общежитиях университета, при поселении '
                          'между администрацией и студентами заключается договор найма жилого помещения.  '
                          'Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил'
                          'внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия '
                          'проживания в общежитиях университетского кампуса полностью отвечают санитарным '
                          'нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, '
                          'читальных залов, комнат самоподготовки, помещений для заседаний студенческих'
                          'советов и наглядной агитации. С целью улучшения условий быта студентов активно'
                          'работает система студенческого самоуправления - студенческие советы организуют всю '
                          'работу по самообслуживанию.'))
                ],
              )
            ])));
  } //виджет build
}
