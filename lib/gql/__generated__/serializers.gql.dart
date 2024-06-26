// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:graphql_caching/gql/__generated__/schema.schema.gql.dart'
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
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.data.gql.dart'
    show GPostFragmentData, GPostFragmentData_user;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.req.gql.dart'
    show GPostFragmentReq;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.var.gql.dart'
    show GPostFragmentVars;
import 'package:graphql_caching/gql/mutation/__generated__/create_post.data.gql.dart'
    show
        GCreatePostData,
        GCreatePostData_createPost,
        GCreatePostData_createPost_user;
import 'package:graphql_caching/gql/mutation/__generated__/create_post.req.gql.dart'
    show GCreatePostReq;
import 'package:graphql_caching/gql/mutation/__generated__/create_post.var.gql.dart'
    show GCreatePostVars;
import 'package:graphql_caching/gql/mutation/__generated__/delete_post.data.gql.dart'
    show GDeletePostData;
import 'package:graphql_caching/gql/mutation/__generated__/delete_post.req.gql.dart'
    show GDeletePostReq;
import 'package:graphql_caching/gql/mutation/__generated__/delete_post.var.gql.dart'
    show GDeletePostVars;
import 'package:graphql_caching/gql/mutation/__generated__/update_post.data.gql.dart'
    show GUpdatePostData, GUpdatePostData_updatePost;
import 'package:graphql_caching/gql/mutation/__generated__/update_post.req.gql.dart'
    show GUpdatePostReq;
import 'package:graphql_caching/gql/mutation/__generated__/update_post.var.gql.dart'
    show GUpdatePostVars;
import 'package:graphql_caching/gql/query/__generated__/posts.data.gql.dart'
    show
        GPostsData,
        GPostsData_posts,
        GPostsData_posts_data,
        GPostsData_posts_data_user;
import 'package:graphql_caching/gql/query/__generated__/posts.req.gql.dart'
    show GPostsReq;
import 'package:graphql_caching/gql/query/__generated__/posts.var.gql.dart'
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
  GCreatePostData,
  GCreatePostData_createPost,
  GCreatePostData_createPost_user,
  GCreatePostInput,
  GCreatePostReq,
  GCreatePostVars,
  GCreateTodoInput,
  GCreateUserInput,
  GDeletePostData,
  GDeletePostReq,
  GDeletePostVars,
  GGeoInput,
  GOperatorKindEnum,
  GOperatorOptions,
  GPageQueryOptions,
  GPaginateOptions,
  GPostFragmentData,
  GPostFragmentData_user,
  GPostFragmentReq,
  GPostFragmentVars,
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
  GUpdatePostData,
  GUpdatePostData_updatePost,
  GUpdatePostInput,
  GUpdatePostReq,
  GUpdatePostVars,
  GUpdateTodoInput,
  GUpdateUserInput,
])
final Serializers serializers = _serializersBuilder.build();
