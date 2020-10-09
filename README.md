Show preview of urls, designed to show list of url previews with caching support.

Forked from [flutter-simple-url-preview](https://github.com/Amitbhave/flutter-simple-url-preview) with different caching strategy for fast retrivel, and additional styling options.

![In Action](./example.png)

## Getting Started

Show single or list of URL previews

Currently only supports [Open Graph Protocol](https://www.ogp.me/)

Please use latest version of the package.

## How to use ?

Add url_preview_card to pubspec.yaml, and hit command 'flutter pub get'
```yaml
dependencies:
  ...
  url_preview_card: ^0.1.0
```

#### 1) **Simple use:**
```dart
SimpleUrlPreview(
  url: 'https://pub.dev/',
),
```

#### 2) **Override preview height, padding.(Default and minimum possible height is 130):**
```dart
SimpleUrlPreview(
  url: 'https://pub.dev/',
  previewHeight: 200,
  previewContainerPadding: EdgeInsets.all(10),
),
```

#### 3) **Override title text style, description text style and site name text style**

```
Default titleStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.black
    );
```

```
Default descriptionStyle = TextStyle(
      fontSize: 14,
      color: Colors.black
    );
```

```
Default siteNameStyle = TextStyle(
      fontSize: 14,
      color: Colors.black
    );
```

```dart
SimpleUrlPreview(
  url: 'https://pub.dev/',
  titleStyle: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 16,
  fontFamily: 'Sansita Swashed'
  ),
  descriptionStyle: TextStyle(
    color: Colors.white
  ),
  siteNameStyle: TextStyle(
    color: Colors.white
  ),
),
```


#### 4) **Override image loader color and title and description lines:**

Default and maximum title lines = 2 and description lines = 3.

```dart
SimpleUrlPreview(
  url: 'https://pub.dev/',
  titleLines: 1,
  descriptionLines: 2,
  imageLoaderColor: Colors.white,
),
```

#### 6) **Override onTap callback of the URL preview:**

By Default, will open URL in default browser.

```dart
SimpleUrlPreview(
  url: 'https://pub.dev/',
  onTap: () => print('Hello Flutter URL Preview'),
),
```

### Contribution:

Would :heart: to see any contributions.
