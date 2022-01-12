# CV Oluşturma - Linux Proje
Linux dersi kapsamında yapılan bir projedir.

## Açıklama
 `Shell Script` ve `Zenity` Kütüphanesi kullanılarak oluşturulmuş bir projedir.Bu projede amacımız GUI bileşenlerini kullanarak kullanıcıdan
 gerekli bilgileri almak ve kullanıcının isteği doğrultusunda bu bilgileri kullanarak iki farklı tasarımda CV dosyası oluşturmaktır. Bu programda sırasıyla yapılacak olanlar şunlardır : 
- İlk başta programımızı komut satırından çalıştırıyoruz.
- Çalıştırdıktan sonra karşımıza ilk olarak `Bölümünüzü Giriniz` diye bir ekran açılıyor.
- İkinci olarak `Bilgi Ekle` ekranı açılıyor.Bu kısımda Adınız,Soyadınız,Yaşadığınız Yer, Mail adresiniz, Github ve Linkedin linki,Fotoğraf linki ve en son Telefon bilginiz isteniyor.Ayrıca bu kısımda CV tasarımınız için `mor` veya `mavi` seçeneklerinden birini seçmeniz bekleniyor.
- Sonrasında `İlgi Alanlarınız` ekranı açılıyor.Sizden iki ilgi alanınızı girmeniz bekleniyor.
- İlgi alanlarını girdikten sonra bunlarla `ne kadar ilgili olduğunuza dair bir değer` belirleme ekranı çıkıyor. 
- Daha sonra `Proje ve Deneyimleriniz` ve `Eğitim Bilgileriniz` hakkında birer ekran karşınıza çıkıyor.
- Bütün bilgiler kullanıcıdan alındıktan sonra `mor.html` yada `mavi.html` adlı dosyalardan biri program tarafından oluşturulmuş oluyor.
- Böylece kullanıcının CV dosyası hazırlanıyor.

## Program Anlatımı
- https://youtu.be/GiGBmxf_RdI

## Programı Çalıştırmak
Yaptığımız programı çalıştırmak için ilk olarak yapmamız gereken;
`bash` komutunu kullanarak `.sh` uzantılı dosyayı çalıştırmaktır.
```sh
bash proje_cv.sh
```

## Program Ekran Görüntüleri
`Bölüm Ekleme Ekranı:`

![Bolum](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran1.PNG)

`Bilgi Ekleme Ekranı:`

![Bilgiekleme](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran2.PNG)

`İlgi Alanı Ekleme Ekranı:`

![İlgiAlanı](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran3.PNG)

`İlgi Alanı Değeri Belirleme Ekranları:`

![İlgiAlanıDeger](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran4.PNG)

![İlgiAlanıDeger2](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran5.PNG)

`Proje ve Deneyim Ekleme Ekranı:`

![Deneyim](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran6.PNG)

`Eğitim Bilgileri Ekleme Ekranı:`

![Eğitimbilgileri](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran7.PNG)

`CV Görüntüleme Ekranı:`

![CVmor](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran8.PNG)

![CVmavi](https://github.com/iremsertel/CV_Olusturma_Proje/blob/main/Resimler/Ekran9.PNG)

