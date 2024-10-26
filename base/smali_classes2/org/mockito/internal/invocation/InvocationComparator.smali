.class public Lorg/mockito/internal/invocation/InvocationComparator;
.super Ljava/lang/Object;
.source "InvocationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/mockito/invocation/Invocation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lorg/mockito/invocation/Invocation;

    check-cast p2, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/invocation/InvocationComparator;->compare(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)I
    .locals 0

    .line 16
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Lorg/mockito/invocation/Invocation;->getSequenceNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
