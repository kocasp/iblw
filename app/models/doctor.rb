class Doctor < User
  has_many :comments, as: :author
  serialize :specializations

  # specializations codes emailed by Naczelna Izba Lekarska regarding their API
  SPECIALIZATIONS = {
    1 => "Anestezjologia i intensywna terapia",
    2 => "Chirurgia dziecięca",
    3 => "Chirurgia klatki piersiowej",
    4 => "Chirurgia ogólna",
    5 => "Chirurgia szczękowo-twarzowa",
    6 => "Choroby wewnętrzne",
    7 => "Choroby zakaźne",
    8 => "Dermatologia i wenerologia",
    9 => "Diagnostyka laboratoryjna",
    10 => "Genetyka kliniczna",
    11 => "Kardiochirurgia",
    12 => "Medycyna nuklearna",
    13 => "Medycyna pracy",
    14 => "Medycyna ratunkowa",
    15 => "Medycyna rodzinna",
    16 => "Medycyna sądowa",
    17 => "Mikrobiologia lekarska",
    18 => "Neurochirurgia",
    19 => "Neurologia",
    20 => "Okulistyka",
    21 => "Onkologia",
    22 => "Ortopedia i traumatologia narządu ruchu",
    23 => "Otorynolaryngologia",
    24 => "Patomorfologia",
    25 => "Pediatria",
    26 => "Położnictwo i ginekologia",
    27 => "Psychiatria",
    28 => "Radiologia i diagnostyka obrazowa",
    29 => "Radioterapia onkologiczna",
    30 => "Rehabilitacja medyczna",
    31 => "Urologia",
    32 => "Zdrowie publiczne",
    33 => "Alergologia",
    34 => "Chirurgia naczyniowa",
    35 => "Chirurgia plastyczna",
    36 => "Choroby płuc",
    37 => "Endokrynologia",
    38 => "Farmakologia kliniczna",
    39 => "Gastroenterologia",
    40 => "Geriatria",
    41 => "Hematologia",
    43 => "Kardiologia",
    44 => "Nefrologia",
    45 => "Psychiatria dzieci i młodzieży",
    46 => "Reumatologia",
    47 => "Angiologia",
    48 => "Audiologia i foniatria",
    49 => "Balneoklimatologia i medycyna fizykalna",
    50 => "Chirurgia onkologiczna",
    51 => "Diabetologia",
    52 => "Epidemiologia",
    53 => "Kardiologia dziecięca",
    54 => "Medycyna paliatywna",
    55 => "Medycyna sportowa (cywilna)",
    56 => "Medycyna tropikalna",
    57 => "Neonatologia",
    58 => "Neurologia dziecięca",
    59 => "Onkologia i hematologia dziecięca",
    60 => "Seksuologia",
    61 => "Toksykologia kliniczna",
    62 => "Transfuzjologia kliniczna",
    63 => "Transplantologia kliniczna",
    64 => "Fizjologia kliniczna",
    65 => "Pedagogika medyczna",
    66 => "Chirurgia stomatologiczna",
    67 => "Ortodoncja",
    68 => "Chirurgia szczękowo-twarzowa",
    71 => "Periodontologia",
    72 => "Protetyka stomatologiczna",
    73 => "Stomatologia dziecięca",
    74 => "Stomatologia zachowawcza z endodoncją",
    75 => "Ginekologia onkologiczna",
    76 => "Hipertensjologia",
    77 => "Higiena i epidemiologia",
    78 => "Immunologia kliniczna",
    79 => "Neuropatologia",
    80 => "Otorynolaryngologia dziecięca",
    81 => "Urologia dziecięca",
    83 => "Oświata zdrowotna",
    84 => "Higiena/Epidemiologia",
    85 => "Medycyna lotnicza",
    86 => "Medycyna morska",
    87 => "Medycyna sportowa (wojskowa)",
    88 => "Ochrona radiologiczna",
    89 => "Toksykologia",
    90 => "Intensywna terapia",
    91 => "Choroby płuc dzieci",
    92 => "Endokrynologia ginekologiczna i rozrodczość",
    93 => "Endokrynologia i diabetologia dziecięca",
    94 => "Gastroenterologia dziecięca",
    95 => "Nefrologia dziecięca",
    96 => "Pediatria metaboliczna",
    97 => "Perinatologia",
  }
end
