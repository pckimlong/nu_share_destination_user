import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../core/app_utilz.dart';
import '../../widgets/my_elevated_button.dart';
import '../../widgets/my_textform_field.dart';

class TextInputPage extends HookWidget {
  /// Page for input string and return string
  const TextInputPage({
    Key? key,
    required this.pageTitle,
    this.initialText,
    this.submitButtonLabel = "Submit",
  }) : super(key: key);

  final String pageTitle;
  final String? initialText;
  final String submitButtonLabel;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: initialText);
    final showClearButton = useState<bool>((initialText ?? "").isNotEmpty);

    useEffect(() {
      textController.addListener(() {
        if (textController.text.isNotEmpty) {
          showClearButton.value = true;
        } else {
          showClearButton.value = false;
        }
      });

      return () => textController.removeListener(() {});
    }, [textController]);

    return GestureDetector(
      onTap: () => AppUtilzs.closeKeyBoard(context),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(pageTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              MyTextFormField(
                controller: textController,
                maxLines: 8,
                hintText: 'Message',
                capitalization: TextCapitalization.sentences,
                suffixIcon: showClearButton.value
                    ? InkWell(
                        onTap: () => textController.clear(),
                        child: const Icon(Icons.backspace_outlined),
                      )
                    : null,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: MyElevatedButton(
                  label: submitButtonLabel,
                  onTap: () => context.router.pop(textController.text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
