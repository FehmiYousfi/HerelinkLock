.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
.super Ljava/lang/Object;
.source "ReturnsDeepStubs.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;,
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;,
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x629b3e6188dd2e07L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deepStub(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 64
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getStubbedInvocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 65
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocationForStubbing()Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object v3

    invoke-virtual {v2}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mockito/internal/invocation/InvocationMatcher;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->newDeepStubMock(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->recordDeepStubAnswer(Ljava/lang/Object;Lorg/mockito/internal/stubbing/InvocationContainerImpl;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V

    .line 80
    invoke-virtual {p2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static delegate()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
    .locals 1

    .line 166
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->access$100()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    move-result-object v0

    return-object v0
.end method

.method private static mockitoCore()Lorg/mockito/internal/MockitoCore;
    .locals 1

    .line 162
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->access$000()Lorg/mockito/internal/MockitoCore;

    move-result-object v0

    return-object v0
.end method

.method private newDeepStubMock(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 95
    invoke-static {p2}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object p2

    .line 96
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->mockitoCore()Lorg/mockito/internal/MockitoCore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->withSettingsUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private propagateSerializationSettings(Lorg/mockito/MockSettings;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;
    .locals 0

    .line 112
    invoke-interface {p2}, Lorg/mockito/mock/MockCreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mockito/MockSettings;->serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;

    move-result-object p1

    return-object p1
.end method

.method private recordDeepStubAnswer(Ljava/lang/Object;Lorg/mockito/internal/stubbing/InvocationContainerImpl;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 1

    .line 120
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p2, v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;Z)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object p1

    return-object p1
.end method

.method private returnsDeepStubsAnswerUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
    .locals 1

    .line 116
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)V

    return-object v0
.end method

.method private withSettingsUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;
    .locals 2

    .line 103
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->hasRawExtraInterfaces()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawExtraInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    .line 107
    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->propagateSerializationSettings(Lorg/mockito/MockSettings;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->returnsDeepStubsAnswerUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected actualParameterizedType(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 0

    .line 125
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/internal/InternalMockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 126
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object p1

    return-object p1
.end method

.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->actualParameterizedType(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v1

    .line 52
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->mockitoCore()Lorg/mockito/internal/MockitoCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mockito/internal/MockitoCore;->isTypeMockable(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->delegate()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->deepStub(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
