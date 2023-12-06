import 'package:flutter/material.dart';

class Organizer {
  int id;
  String firstname, lastname, contactNumber, addr, email;

  Organizer({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.contactNumber,
    required this.addr,
    required this.email,
  });
}
