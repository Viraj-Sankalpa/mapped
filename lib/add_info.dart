import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceInfoForm extends StatefulWidget {
  final LatLng location;

  const PlaceInfoForm({super.key, required this.location});

  @override
  _PlaceInfoFormState createState() => _PlaceInfoFormState();
}

class _PlaceInfoFormState extends State<PlaceInfoForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _description;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Save the place information to Firestore
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Place Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location: ${widget.location.latitude}, ${widget.location.longitude}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('Save'),
                onPressed: _submitForm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
