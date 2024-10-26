.class public Lorg/mockito/internal/stubbing/StubbingComparator;
.super Ljava/lang/Object;
.source "StubbingComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/mockito/stubbing/Stubbing;",
        ">;"
    }
.end annotation


# instance fields
.field private final invocationComparator:Lorg/mockito/internal/invocation/InvocationComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/mockito/internal/invocation/InvocationComparator;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/InvocationComparator;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/StubbingComparator;->invocationComparator:Lorg/mockito/internal/invocation/InvocationComparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lorg/mockito/stubbing/Stubbing;

    check-cast p2, Lorg/mockito/stubbing/Stubbing;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/stubbing/StubbingComparator;->compare(Lorg/mockito/stubbing/Stubbing;Lorg/mockito/stubbing/Stubbing;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/mockito/stubbing/Stubbing;Lorg/mockito/stubbing/Stubbing;)I
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbingComparator;->invocationComparator:Lorg/mockito/internal/invocation/InvocationComparator;

    invoke-interface {p1}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object p1

    invoke-interface {p2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/invocation/InvocationComparator;->compare(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)I

    move-result p1

    return p1
.end method
