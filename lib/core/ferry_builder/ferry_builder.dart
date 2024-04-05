import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

typedef OperationResponseBuilder<TData, TVars> = Widget Function(
  BuildContext context,
  OperationResponse<TData, TVars> response,
);

class FerryBuilder<TData, TVars> extends StatefulWidget {
  const FerryBuilder({
    required this.operationRequest,
    required this.builder,
    required this.client,
    super.key,
  });
  final OperationRequest<TData, TVars> operationRequest;
  final OperationResponseBuilder<TData, TVars> builder;
  final TypedLink client;

  @override
  State<FerryBuilder<TData, TVars>> createState() => _FerryBuilderState();
}

class _FerryBuilderState<TData, TVars>
    extends State<FerryBuilder<TData, TVars>> {
  late Stream<OperationResponse<TData, TVars>> _stream;

  Stream<OperationResponse<TData, TVars>> _getStream() =>
      widget.client.request(widget.operationRequest).distinct();

  @override
  void initState() {
    super.initState();
    _stream = _getStream();
  }

  @override
  void didUpdateWidget(FerryBuilder<TData, TVars> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.operationRequest != widget.operationRequest) {
      setState(() => _stream = _getStream());
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<OperationResponse<TData, TVars>>(
      initialData: OperationResponse<TData, TVars>(
        operationRequest: widget.operationRequest,
      ),
      stream: _stream,
      builder: (context, snapshot) {
        return widget.builder(
          context,
          snapshot.data!,
        );
      },
    );
  }
}
