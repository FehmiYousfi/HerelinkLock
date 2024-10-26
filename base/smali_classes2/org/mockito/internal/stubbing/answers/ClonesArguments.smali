.class public Lorg/mockito/internal/stubbing/answers/ClonesArguments;
.super Ljava/lang/Object;
.source "ClonesArguments.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 20
    aget-object v2, v0, v1

    .line 21
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/mockito/plugins/InstantiatorProvider;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;

    move-result-object v3

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mockito/internal/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    new-instance v4, Lorg/mockito/internal/util/reflection/LenientCopyTool;

    invoke-direct {v4}, Lorg/mockito/internal/util/reflection/LenientCopyTool;-><init>()V

    invoke-virtual {v4, v2, v3}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyToRealObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
