.class Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;
.super Ljava/lang/Object;
.source "InvocationsFinder.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/InvocationsFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveNotMatching"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
        "Lorg/mockito/invocation/Invocation;",
        ">;"
    }
.end annotation


# instance fields
.field private final wanted:Lorg/mockito/invocation/MatchableInvocation;


# direct methods
.method private constructor <init>(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;->wanted:Lorg/mockito/invocation/MatchableInvocation;

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/invocation/InvocationsFinder$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;-><init>(Lorg/mockito/invocation/MatchableInvocation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 141
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;->isOut(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/invocation/Invocation;)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;->wanted:Lorg/mockito/invocation/MatchableInvocation;

    invoke-interface {v0, p1}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
