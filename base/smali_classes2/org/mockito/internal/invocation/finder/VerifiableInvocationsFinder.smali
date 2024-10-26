.class public Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder;
.super Ljava/lang/Object;
.source "VerifiableInvocationsFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$RemoveIgnoredForVerification;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->find(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 23
    new-instance v0, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$RemoveIgnoredForVerification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$RemoveIgnoredForVerification;-><init>(Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$1;)V

    invoke-static {p0, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method
