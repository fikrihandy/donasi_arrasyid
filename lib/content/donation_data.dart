class DonationData {
  String donationTitle;
  String description;
  int collectedDonation;
  String imageAsset;
  int donationTarget;

  DonationData({
    required this.donationTitle,
    required this.description,
    required this.collectedDonation,
    required this.imageAsset,
    required this.donationTarget,
  });
}

List<DonationData> donationData = [
  DonationData(
      donationTitle: 'Donasi Mobil Operasional',
      description:
          '''Pondok Pesantren Ar-Rasyid Wonogiri telah membuka kesempatan untuk beramal kebaikan, dengan berpartisipasi dalam program Donasi Mobil Operasional.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
      collectedDonation: 12000000,
      imageAsset:
          'https://1.bp.blogspot.com/-3WrbEwLNriI/YUvSeERYlII/AAAAAAAABZ8/1B7YxoMgtQ8kzFqidMG1rb5XXAB2889UACLcBGAsYHQ/s920/mobil%2Boperasional.png',
      donationTarget: 70000000),
  DonationData(
      donationTitle: 'Beras Santri Penghafal Quran',
      description:
          '''Beras adalah salah satu kebutuhan pokok yang wajib ada setiap hari. Beras akan diolah menjadi nasi dan akan menjadi makanan pokok santri. Untuk menyediakan makanan bagi 171 santri, kami membutuhkan kurang lebih 30kg beras setiap harinya, atau jika dirupiahkan adalah Rp 500.000/hari (update tanggal = 22/09/2021).
          
Beras santri adalah salah salah satu program donasi pondok pesantren Ar-Rasyid dalam kategori Beasantri. Donatur dapat berpartisipasi dengan berdonasi berupa beras ataupun uang.''',
      collectedDonation: 7500000,
      imageAsset:
          'https://1.bp.blogspot.com/-o_Q3GEH6pqE/YUky71ecBDI/AAAAAAAABZk/g5tx8NDLFgMA49dJ0-s2rNNqzOIuFWPwwCLcBGAsYHQ/w400-h304/beras%2Bsantri.png',
      donationTarget: 10000000),
  DonationData(
      donationTitle: 'Uang Saku Santri Yatim dan Dhuafa',
      description:
          '''Di dalam pondok pesantren, santri diajarkan untuk mandiri, termasuk dalam manajemen keuangan (uang saku) mereka. Akan tetapi kami melakukan pembatasan uang saku kepada santri agar melatih hidup hemat dan tidak boros dalam pengeluaran. Di Ponpes Ar-Rasyid Wonogiri, santri hanya diperbolehkan memegang uang cash Rp 50.000/minggu (diluar kebutuhan pokok seperti membeli peralatan mandi, pakaian dan lain-lain).
          
Kami adalah pondok yang menyediakan beasiswa 100% gratis untuk santri yatim, dan keringanan bagi mereka yang kurang mampu. Kami juga memberikan uang saku kepada santri yang tidak mendapatkan kiriman dari orang tua / saudara mereka. Dengan program uang saku santri yatim ini diharapkan bisa menjembatani donatur dan santri kami agar bisa memenuhi kebutuhannya.''',
      collectedDonation: 8000000,
      imageAsset:
          'https://1.bp.blogspot.com/-LTs6_2AlJpw/YUkvyp6qLcI/AAAAAAAABZU/Z0rr8f9THXkzvgLB8copYwxDjiwQjgAhwCLcBGAsYHQ/w400-h304/uang%2Bsaku%2Bsantri.png',
      donationTarget: 20000000),
  DonationData(
      donationTitle: 'Orang Tua Asuh',
      description:
          '''Ponpes Ar-Rasyid Wonogiri menyediakan beasiswa gratis 100% untuk anak yatim, dan keringanan bagi mereka yang kurang mampu. Kami selalu berusaha semaksimal mungkin untuk memenuhi kebutuhan santri kami, agar bisa fokus dalam pembelajaran, seperti menghafal Al-Qur'an dan pelajaran dikelas.
          
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
      collectedDonation: 4500000,
      imageAsset:
          'https://blogger.googleusercontent.com/img/a/AVvXsEiYzgA2VJgXItsnyb5qm6LIPbql7VsOF3kzxYl4GPlbWkPBOQnP6SaUs3-Pxr8ISKDgyyXOYzCrEYLrXE2doLz4jeYL8oLD6uz57mQvINa7IkCSy4JbY6aKlLhD_ag4Lr_xNjPSwHZnI2SVkk09G1nK8_Jg3aiXljOWxGzPTTApv8pORDOkaI-kAMR8=s920',
      donationTarget: 10000000),
  DonationData(
      donationTitle: 'Zakat Infaq dan Shodaqah',
      description:
          '''Salurkan zakat, infak dan sedekah untuk disalurkan kepada santri (dan warga pondok), juga kepada warga dhuafa sekitar pondok pesantren.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
''',
      collectedDonation: 30000000,
      imageAsset:
          'https://1.bp.blogspot.com/-1upejuc_o5I/YUgEBIq1hiI/AAAAAAAABZA/lkPQ6vSeDtownXNKJ0GxhYKaDHCe_10XgCPcBGAYYCw/w400-h304/lazis.png',
      donationTarget: 100000000),
];
