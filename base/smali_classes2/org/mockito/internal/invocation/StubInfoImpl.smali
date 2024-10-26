.class public Lorg/mockito/internal/invocation/StubInfoImpl;
.super Ljava/lang/Object;
.source "StubInfoImpl.java"

# interfaces
.implements Lorg/mockito/invocation/StubInfo;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1d8074b60abf8a03L


# instance fields
.field private final stubbedAt:Lorg/mockito/invocation/DescribedInvocation;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/DescribedInvocation;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/invocation/StubInfoImpl;->stubbedAt:Lorg/mockito/invocation/DescribedInvocation;

    return-void
.end method


# virtual methods
.method public stubbedAt()Lorg/mockito/invocation/Location;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/invocation/StubInfoImpl;->stubbedAt:Lorg/mockito/invocation/DescribedInvocation;

    invoke-interface {v0}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    return-object v0
.end method
