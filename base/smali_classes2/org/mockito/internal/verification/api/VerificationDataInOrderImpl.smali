.class public Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;
.super Ljava/lang/Object;
.source "VerificationDataInOrderImpl.java"

# interfaces
.implements Lorg/mockito/internal/verification/api/VerificationDataInOrder;


# instance fields
.field private final allInvocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end field

.field private final inOrder:Lorg/mockito/internal/verification/api/InOrderContext;

.field private final wanted:Lorg/mockito/invocation/MatchableInvocation;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;->inOrder:Lorg/mockito/internal/verification/api/InOrderContext;

    .line 21
    iput-object p2, p0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;->allInvocations:Ljava/util/List;

    .line 22
    iput-object p3, p0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;->wanted:Lorg/mockito/invocation/MatchableInvocation;

    return-void
.end method


# virtual methods
.method public getAllInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;->allInvocations:Ljava/util/List;

    return-object v0
.end method

.method public getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;->inOrder:Lorg/mockito/internal/verification/api/InOrderContext;

    return-object v0
.end method

.method public getWanted()Lorg/mockito/invocation/MatchableInvocation;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;->wanted:Lorg/mockito/invocation/MatchableInvocation;

    return-object v0
.end method
