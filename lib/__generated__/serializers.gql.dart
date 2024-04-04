// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:graphql_caching/__generated__/schema.schema.gql.dart'
    show
        GAddressInput,
        GCompanyInput,
        GCreateAlbumInput,
        GCreateCommentInput,
        GCreatePhotoInput,
        GCreatePostInput,
        GCreateTodoInput,
        GCreateUserInput,
        GGeoInput,
        GOperatorKindEnum,
        GOperatorOptions,
        GPageQueryOptions,
        GPaginateOptions,
        GSearchOptions,
        GSliceOptions,
        GSortOptions,
        GSortOrderEnum,
        GUpdateAlbumInput,
        GUpdateCommentInput,
        GUpdatePhotoInput,
        GUpdatePostInput,
        GUpdateTodoInput,
        GUpdateUserInput;
import 'package:graphql_caching/gql/__generated__/posts.data.gql.dart'
    show
        GPostsData,
        GPostsData_posts,
        GPostsData_posts_data,
        GPostsData_posts_data_user;
import 'package:graphql_caching/gql/__generated__/posts.req.gql.dart'
    show GPostsReq;
import 'package:graphql_caching/gql/__generated__/posts.var.gql.dart'
    show GPostsVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAddressInput,
  GCompanyInput,
  GCreateAlbumInput,
  GCreateCommentInput,
  GCreatePhotoInput,
  GCreatePostInput,
  GCreateTodoInput,
  GCreateUserInput,
  GGeoInput,
  GOperatorKindEnum,
  GOperatorOptions,
  GPageQueryOptions,
  GPaginateOptions,
  GPostsData,
  GPostsData_posts,
  GPostsData_posts_data,
  GPostsData_posts_data_user,
  GPostsReq,
  GPostsVars,
  GSearchOptions,
  GSliceOptions,
  GSortOptions,
  GSortOrderEnum,
  GUpdateAlbumInput,
  GUpdateCommentInput,
  GUpdatePhotoInput,
  GUpdatePostInput,
  GUpdateTodoInput,
  GUpdateUserInput,
])
final Serializers serializers = _serializersBuilder.build();
