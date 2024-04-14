import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/core/app_textStyles.dart';

class ReservaPage extends StatefulWidget {
  const ReservaPage({Key? key}) : super(key: key);

  @override
  _ReservaPageState createState() => _ReservaPageState();
}

class _ReservaPageState extends State<ReservaPage> {
  int? _selectedTable;
  int _selectedPeople = 1;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reserva de Mesa',
          style: AppTextStyles.labelTextBlack, 
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
     
    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecione a mesa:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, 
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTable =
                          index + 1; 
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedTable == index + 1
                          ? AppColors.primary
                          : Colors.grey, // Cor da mesa selecionada
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Mesa ${index + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'Número de pessoas:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButton<int>(
              value: _selectedPeople,
              onChanged: (value) {
                setState(() {
                  _selectedPeople = value!;
                });
              },
              items: List.generate(
                10,
                (index) => DropdownMenuItem<int>(
                  value: index + 1,
                  child: Text('${index + 1}'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selecione a data:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)),
                );

                if (pickedDate != null && pickedDate != _selectedDate) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },
              child: Text('Selecionar Data'),
            ),
            SizedBox(height: 20),
            Text(
              'Selecione a hora:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: _selectedTime,
                );

                if (pickedTime != null && pickedTime != _selectedTime) {
                  setState(() {
                    _selectedTime = pickedTime;
                  });
                }
              },
              child: Text('Selecionar Hora'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('RESERVA CONFIRMADA'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mesa selecionada: ${_selectedTable ?? 'Nenhuma mesa selecionada'}'),
                          Text('Número de pessoas: $_selectedPeople'),
                          Text('Data da reserva: ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}'),
                          Text('Hora da reserva: ${_selectedTime.hour}:${_selectedTime.minute}'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Confirmar Reserva'),
            ),
          ],
        ),
      ),
    );
  }
}
