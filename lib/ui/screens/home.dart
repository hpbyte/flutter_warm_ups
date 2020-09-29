import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warmups/bloc/post_bloc.dart';
import 'package:warmups/ui/components/bottom_loader.dart';
import 'package:warmups/ui/components/post_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final scrollThreshold = 200;
  PostBloc postBloc;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(onScroll);
    postBloc = BlocProvider.of<PostBloc>(context);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void onScroll() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;

    if ((maxScroll - currentScroll) < scrollThreshold) {
      postBloc.add(PostFetched());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if (state is PostInitial) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is PostFailure) {
          return Center(
            child: Text('Failed To Fetch Posts'),
          );
        }

        if (state is PostSuccess) {
          if (state.posts.isEmpty) {
            return Center(
              child: Text('No Posts'),
            );
          }

          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return index >= state.posts.length
                  ? BottomLoader()
                  : PostWidget(
                      post: state.posts[index],
                    );
            },
            itemCount: state.hasReachedMax
                ? state.posts.length
                : state.posts.length + 1,
            controller: scrollController,
          );
        }
      },
    );
  }
}
