import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

typedef OperationResponseBuilder<TData, TVars> = Widget Function(
  BuildContext context,
  OperationResponse<TData, TVars> response,
);

class FerryBuilder<TData, TVars> extends StatefulWidget {
  final OperationRequest<TData, TVars> operationRequest;
  final OperationResponseBuilder<TData, TVars> builder;
  final TypedLink client;

  const FerryBuilder({
    super.key,
    required this.operationRequest,
    required this.builder,
    required this.client,
  });

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
        dataSource: DataSource.None,
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
