import 'dart:io';

List<Map<String, dynamic>> chats = [
  {"image": "assets/image/god.png", "name": "GOD"},
  {"image": "assets/image/goddes.png", "name": "GODDES"},
  {"image": "assets/image/satishmama.png", "name": "Satish mama"},
  {"image": "assets/image/ashudidi.png", "name": "Ashu"},
  {"image": "assets/image/rahul.png", "name": "Rahul"},
  {"image": "assets/image/rajvi.png", "name": "Rajvi"},
  {"image": "assets/image/bhargav.png", "name": "Bhargav"},
  {"image": "assets/image/prit.png", "name": "Prit"},
  {"image": "assets/image/viraj.png", "name": "Viraj"},
  {"image": "assets/image/sam.png", "name": "Samarth"},
  {"image": "assets/image/vivek.png", "name": "Vivek"},
  {"image": "assets/image/urvashi.png", "name": "Urvshi"},
  {"image": "assets/image/ruchir.png", "name": "Ruchir"},
  {"image": "assets/image/nnididi.png", "name": "Nni didi"},
  {"image": "assets/image/semogoddes.png", "name": "SEMIGODDES"},
  {"image": "assets/image/dada.png", "name": "DADA"},
  {"image": "assets/image/nilay.png", "name": "Nilay"},
  {"image": "assets/image/kratos.png", "name": "Kratos"},
  {"image": "assets/image/mercedes.png", "name": "Mercedes"},
  {"image": "assets/image/santa.jpg", "name": "Santa"}
];

List<Map<String, dynamic>> status = [
  {"image": "assets/image/god.png", "name": "GOD", "time": "12:22 A.M."},
  {"image": "assets/image/goddes.png", "name": "GODDES", "time": "12:22 A.M."},
  {
    "image": "assets/image/satishmama.png",
    "name": "Satish mama",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/ashudidi.png", "name": "Ashu", "time": "12:22 A.M."},
  {"image": "assets/image/rahul.png", "name": "Rahul", "time": "12:22 A.M."},
  {"image": "assets/image/rajvi.png", "name": "Rajvi", "time": "12:22 A.M."},
  {
    "image": "assets/image/bhargav.png",
    "name": "Bhargav",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/prit.png", "name": "Prit", "time": "12:22 A.M."},
  {"image": "assets/image/viraj.png", "name": "Viraj", "time": "12:22 A.M."},
  {"image": "assets/image/sam.png", "name": "Samarth", "time": "12:22 A.M."},
  {"image": "assets/image/vivek.png", "name": "Vivek", "time": "12:22 A.M."},
  {"image": "assets/image/urvashi.png", "name": "Urvshi", "time": "12:22 A.M."},
  {"image": "assets/image/ruchir.png", "name": "Ruchir", "time": "12:22 A.M."},
  {
    "image": "assets/image/nnididi.png",
    "name": "Nni didi",
    "time": "12:22 A.M."
  },
  {
    "image": "assets/image/semogoddes.png",
    "name": "SEMIGODDES",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/dada.png", "name": "DADA", "time": "12:22 A.M."},
  {"image": "assets/image/nilay.png", "name": "Nilay", "time": "12:22 A.M."},
  {"image": "assets/image/kratos.png", "name": "Kratos", "time": "12:22 A.M."},
  {
    "image": "assets/image/mercedes.png",
    "name": "Mercedes",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/santa.jpg", "name": "Santa", "time": "12:22 A.M."},
];

List<Map<String, dynamic>> calls = [
  {"image": "assets/image/god.png", "name": "GOD", "time": "12:22 A.M."},
  {"image": "assets/image/goddes.png", "name": "GODDES", "time": "12:22 A.M."},
  {
    "image": "assets/image/satishmama.png",
    "name": "Satish mama",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/ashudidi.png", "name": "Ashu", "time": "12:22 A.M."},
  {"image": "assets/image/rahul.png", "name": "Rahul", "time": "12:22 A.M."},
  {"image": "assets/image/rajvi.png", "name": "Rajvi", "time": "12:22 A.M."},
  {
    "image": "assets/image/bhargav.png",
    "name": "Bhargav",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/prit.png", "name": "Prit", "time": "12:22 A.M."},
  {"image": "assets/image/viraj.png", "name": "Viraj", "time": "12:22 A.M."},
  {"image": "assets/image/sam.png", "name": "Samarth", "time": "12:22 A.M."},
  {"image": "assets/image/vivek.png", "name": "Vivek", "time": "12:22 A.M."},
  {"image": "assets/image/urvashi.png", "name": "Urvshi", "time": "12:22 A.M."},
  {"image": "assets/image/ruchir.png", "name": "Ruchir", "time": "12:22 A.M."},
  {
    "image": "assets/image/nnididi.png",
    "name": "Nni didi",
    "time": "12:22 A.M."
  },
  {
    "image": "assets/image/semogoddes.png",
    "name": "SEMIGODDES",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/dada.png", "name": "DADA", "time": "12:22 A.M."},
  {"image": "assets/image/nilay.png", "name": "Nilay", "time": "12:22 A.M."},
  {"image": "assets/image/kratos.png", "name": "Kratos", "time": "12:22 A.M."},
  {
    "image": "assets/image/mercedes.png",
    "name": "Mercedes",
    "time": "12:22 A.M."
  },
  {"image": "assets/image/santa.jpg", "name": "Santa", "time": "12:22 A.M."}
];

List getChats() {
  // var duration = const Duration(seconds: 5);
  // sleep(duration);
  // print(DateTime.now().toString()+"  Calling getChats function.");
  return chats;
}

List getStatus() {
  return status;
}

List getCall() {
  return calls;
}
