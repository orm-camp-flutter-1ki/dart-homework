class Member {
  int id;
  String name;
  String address;
  String contact;
  DateTime birthday;
  DateTime registeredDate;

  Member(this.id, this.name, this.address, this.contact, this.birthday,
      this.registeredDate);

  int get age {
    final currentDate = DateTime.now();
    int age = currentDate.year - birthday.year;
    if (currentDate.month < birthday.month ||
        (currentDate.month == birthday.month &&
            currentDate.day < birthday.day)) {
      age--;
    }
    return age;
  }

  @override
  String toString() {
    return 'Member{id: $id, name: $name, address: $address, contact: $contact, age: $age, registeredDate: $registeredDate}';
  }
}
