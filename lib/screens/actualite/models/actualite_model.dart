//
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Actualite extends Equatable {
  final String? id;
  final String category;
  final String? price;
  final String image;
  final String description;
  final String name;
  final String nbprs;
  final bool? dispo;

  const Actualite({
    this.id,
    required this.category,
    this.price,
    required this.image,
    required this.description,
    required this.name,
    required this.nbprs,
    this.dispo,
  });
  @override
  List<Object?> get props =>
      [id, price, description, image, dispo, nbprs, category, name];

  static Actualite fromSnapshot(DocumentSnapshot snap) {
    Actualite actualite = Actualite(
      id: snap.id,
      description: snap['description'],
      image: snap['image'],
      name: snap['name'],
      category: snap['category'],
      price: snap['price'],
      dispo: snap['disponibilite'],
      nbprs: snap['nbrperson'],
    );
    return actualite;
  }

  Map<String, dynamic> toMap() {
    return {
      // 'id': id,
      'name': name,
      'description': description,
      'image': image,
      'disponibilite': dispo,
      'price': price,
      'nbrperson': nbprs,
      'category': category
    };
  }
}
