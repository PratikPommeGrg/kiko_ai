//svg data path here...
const baseSVGPath = 'assets/svgs/';

//svgs
final kSendIconSvg = _getSvgBasePath('send.svg');
final kImageIconSvg = _getSvgBasePath('image.svg');
final kVoiceIconSvg = _getSvgBasePath('voice.svg');

// functions for medias

String _getSvgBasePath(String name) {
  return baseSVGPath + name;
}
