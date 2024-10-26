.class Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;
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
    name = "RemoveUnverifiedInOrder"
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
.field private final orderingContext:Lorg/mockito/internal/verification/api/InOrderContext;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;->orderingContext:Lorg/mockito/internal/verification/api/InOrderContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 153
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;->isOut(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/invocation/Invocation;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;->orderingContext:Lorg/mockito/internal/verification/api/InOrderContext;

    invoke-interface {v0, p1}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
