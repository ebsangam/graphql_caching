// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAddressInput.serializer)
      ..add(GCompanyInput.serializer)
      ..add(GCreateAlbumInput.serializer)
      ..add(GCreateCommentInput.serializer)
      ..add(GCreatePhotoInput.serializer)
      ..add(GCreatePostData.serializer)
      ..add(GCreatePostData_createPost.serializer)
      ..add(GCreatePostData_createPost_user.serializer)
      ..add(GCreatePostInput.serializer)
      ..add(GCreatePostReq.serializer)
      ..add(GCreatePostVars.serializer)
      ..add(GCreateTodoInput.serializer)
      ..add(GCreateUserInput.serializer)
      ..add(GDeletePostData.serializer)
      ..add(GDeletePostReq.serializer)
      ..add(GDeletePostVars.serializer)
      ..add(GGeoInput.serializer)
      ..add(GOperatorKindEnum.serializer)
      ..add(GOperatorOptions.serializer)
      ..add(GPageQueryOptions.serializer)
      ..add(GPaginateOptions.serializer)
      ..add(GPostFragmentData.serializer)
      ..add(GPostFragmentData_user.serializer)
      ..add(GPostFragmentReq.serializer)
      ..add(GPostFragmentVars.serializer)
      ..add(GPostsData.serializer)
      ..add(GPostsData_posts.serializer)
      ..add(GPostsData_posts_data.serializer)
      ..add(GPostsData_posts_data_user.serializer)
      ..add(GPostsReq.serializer)
      ..add(GPostsVars.serializer)
      ..add(GSearchOptions.serializer)
      ..add(GSliceOptions.serializer)
      ..add(GSortOptions.serializer)
      ..add(GSortOrderEnum.serializer)
      ..add(GUpdateAlbumInput.serializer)
      ..add(GUpdateCommentInput.serializer)
      ..add(GUpdatePhotoInput.serializer)
      ..add(GUpdatePostData.serializer)
      ..add(GUpdatePostData_updatePost.serializer)
      ..add(GUpdatePostInput.serializer)
      ..add(GUpdatePostReq.serializer)
      ..add(GUpdatePostVars.serializer)
      ..add(GUpdateTodoInput.serializer)
      ..add(GUpdateUserInput.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GPostsData_posts_data)]),
          () => new ListBuilder<GPostsData_posts_data?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GSortOptions)]),
          () => new ListBuilder<GSortOptions?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GOperatorOptions)]),
          () => new ListBuilder<GOperatorOptions?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
