part of '../account_page.dart';

class _UserInfoCard extends ConsumerWidget {
  const _UserInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userControllerProvider.select(
      (value) => value.userOrCrash,
    ));

    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(const EditProfileRoute()),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            UserPhotoAvatar(radius: 42, photoUrl: user.photoUrl),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.fullname,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
