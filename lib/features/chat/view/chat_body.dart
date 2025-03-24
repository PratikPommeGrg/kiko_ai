part of './chat_screen.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({super.key});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> with WidgetsBindingObserver {
  late final ScrollController _scrollController;
  // explicity store context in a variable to avoid potentional issues with outdated or invalid context
  // late BuildContext _currentConntext;

  late final GenerativeModel _generativeModel;
  late final ChatSession _chatSession;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _generativeModel = GenerativeModel(
      apiKey: dotenv.get("GOOGLE_GEMINI_API"),
      model: kGeminiModel2_0Flash,
    );
    _chatSession = _generativeModel.startChat();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    // check if keyboard is open
    // if so, scroll to bottom
    if (View.of(context).viewInsets.bottom > 0) {
      scrollToBottom();
    }
  }

  // function to scroll chat messages to bottom one
  void scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // _currentConntext = context;
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 16),

        title: CustomText.text(
          "Chat Screen",
          fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
          fontWeight: FontWeight.w700,
        ),
        leading: CustomButtons.circleIconButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          CustomButtons.circleIconButton(
            onPressed: () {
              loadMessages();
            },
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: AppPadding.horizontal,
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: loadMessages(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                      controller: _scrollController,
                      separatorBuilder: (context, index) => AppSizedBox.v1,
                      itemCount: snapshot.data?.messages?.length ?? 0,
                      itemBuilder: (context, index) {
                        bool isUser =
                            snapshot.data?.messages?[index].role ==
                            DummyRole.user.name;
                        return SingleChatMessage(
                          isUser: isUser,
                          message: snapshot.data?.messages?[index].text ?? "",
                        );
                      },
                    );
                  }
                  return Center(child: CustomText.text("Chat Screen"));
                },
              ),
            ),
            ChatTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}
