<p align="center">
  <img src="assets/images/logo.png" alt="Flutter Starter Pro" width="120"/>
</p>

<h1 align="center">Flutter Starter Pro</h1>

<p align="center">
  <strong>Temiz mimari, Riverpod ve hızlı geliştirme için ihtiyacınız olan her şeyle üretime hazır bir Flutter başlangıç şablonu.</strong>
</p>

<p align="center">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Flutter-3.24+-02569B?style=for-the-badge&logo=flutter" alt="Flutter"/>
  </a>
  <a href="https://dart.dev">
    <img src="https://img.shields.io/badge/Dart-3.2+-0175C2?style=for-the-badge&logo=dart" alt="Dart"/>
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-Non--Commercial-blue?style=for-the-badge" alt="License"/>
  </a>
</p>

<p align="center">
  <a href="#ozellikler">Özellikler</a> •
  <a href="#hizli-baslangic">Hızlı Başlangıç</a> •
  <a href="#proje-yapisi">Yapı</a> •
  <a href="#ozellestirme">Özelleştirme</a> •
  <a href="#test">Test</a> •
  <a href="#katkida-bulunma">Katkıda Bulunma</a>
   <br /><br />
  <strong>Dil:</strong>
  <a href="README.md">İngilizce</a> |
  <a href="README_TR.md">Türkçe</a>
</p>

---

## Özellikler

- **Temiz Mimari** — Ölçeklenebilir, test edilebilir, bakımı kolay kod yapısı
- **Riverpod 2.0** — Kod üretimi ile modern durum yönetimi
- **GoRouter** — Derin bağlantı desteği ile bildirimsel yönlendirme
- **Dio API İstemcisi** — Interceptor'larla tip güvenli API çağrıları
- **Güvenli Depolama** — Token yönetimi doğru şekilde yapılmış
- **Tema Sistemi** — Material 3 ile Açık/Koyu mod
- **Yerelleştirme** — ARB dosyaları ile i18n hazır (İngilizce, İspanyolca)
- **Test Kurulumu** — Birim, Widget ve Entegrasyon testleri
- **CI/CD Hazır** — GitHub Actions iş akışları dahil
- **Duyarlı** — Tüm ekran boyutları için uyarlanabilir düzenler

## Hızlı Başlangıç

### Gereksinimler

- Flutter 3.24+
- Dart 3.2+

### Kurulum

```bash
# Depoyu klonlayın
git clone https://github.com/YOURUSERNAME/flutter-starter-pro.git
cd flutter-starter-pro

# Bağımlılıkları yükleyin
flutter pub get

# Kod üretimini çalıştırın
dart run build_runner build --delete-conflicting-outputs

# Uygulamayı çalıştırın
flutter run
```

### Şablon Olarak Kullanma

GitHub'da **"Use this template"** düğmesine tıklayın veya:

```bash
# Şablondan yeni proje oluşturun
gh repo create my-app --template YOURUSERNAME/flutter-starter-pro
```

## Proje Yapısı

```
lib/
├── core/                    # Çekirdek yardımcı programlar ve yapılandırma
│   ├── constants/           # Uygulama, API ve depolama sabitleri
│   ├── errors/              # İstisna ve hata işleme
│   ├── extensions/          # Dart uzantıları (context, string, date)
│   ├── network/             # API istemcisi ve interceptor'lar
│   ├── router/              # GoRouter yapılandırması
│   ├── storage/             # Yerel ve güvenli depolama
│   ├── theme/               # Renkler, tipografi, tema
│   └── utils/               # Doğrulayıcılar, formatlayıcılar, logger
├── features/                # Özellik modülleri
│   ├── auth/                # Kimlik doğrulama özelliği
│   │   ├── data/            # Modeller, veri kaynakları, repository'ler
│   │   ├── domain/          # Varlıklar, kullanım durumları
│   │   └── presentation/    # Ekranlar, widget'lar, provider'lar
│   ├── home/                # Ana sayfa/Dashboard özelliği
│   ├── settings/            # Ayarlar özelliği
│   └── onboarding/          # Karşılama özelliği
├── shared/                  # Paylaşılan widget'lar ve provider'lar
│   ├── widgets/             # Yeniden kullanılabilir UI bileşenleri
│   └── providers/           # Global provider'lar
├── l10n/                    # Yerelleştirme dosyaları
├── app.dart                 # Uygulama widget'ı
├── bootstrap.dart           # Uygulama başlatma
└── main.dart                # Giriş noktası
```

[Tam mimari dokümantasyonu görüntüle](docs/ARCHITECTURE.md)

## Özelleştirme

### Tema

`lib/core/theme/app_colors.dart` dosyasını düzenleyin:

```dart
static const Color primary = Color(0xFF6366F1); // Marka renginiz
static const Color secondary = Color(0xFF10B981);
```

### API Yapılandırması

`lib/core/constants/api_constants.dart` dosyasını düzenleyin:

```dart
static const String baseUrl = 'https://your-api.com/v1';
```

### Yeni Özellik Ekleme

1. `lib/features/` altında özellik klasörü oluşturun
2. Veri, domain ve sunum katmanlarını ekleyin
3. `lib/core/router/app_router.dart` içinde route'ları kaydedin

[Tam özelleştirme kılavuzunu görüntüle](docs/CUSTOMIZATION.md)

## Test

```bash
# Birim testlerini çalıştırın
flutter test

# Kapsam ile çalıştırın
flutter test --coverage

# Entegrasyon testlerini çalıştırın
flutter test integration_test

# Kapsam raporu oluşturun
genhtml coverage/lcov.info -o coverage/html
```

## Derleme

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## Katkıda Bulunma

Katkılarınızı bekliyoruz! Bir Pull Request göndermeden önce lütfen [Katkıda Bulunma Kılavuzumuzu](CONTRIBUTING.md) okuyun.

1. Depoyu fork edin
2. Özellik dalınızı oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'feat: add amazing feature'`)
4. Dalı push edin (`git push origin feature/amazing-feature`)
5. Bir Pull Request açın

## Lisans

Bu proje Ticari Olmayan Lisans altında lisanslanmıştır - detaylar için [LICENSE](LICENSE) dosyasına bakın.

---

<p align="center">
  ⭐ Yardımcı bulduysanız bu repo'yu yıldızlayın!
</p>
