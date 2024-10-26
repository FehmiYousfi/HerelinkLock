.class public Lorg/mockito/internal/invocation/realmethod/DefaultRealMethod;
.super Ljava/lang/Object;
.source "DefaultRealMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/realmethod/RealMethod;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3fc9f1ee75f0670eL


# instance fields
.field private final methodProxy:Lorg/mockito/internal/creation/util/MockitoMethodProxy;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/creation/util/MockitoMethodProxy;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/invocation/realmethod/DefaultRealMethod;->methodProxy:Lorg/mockito/internal/creation/util/MockitoMethodProxy;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/mockito/internal/invocation/realmethod/DefaultRealMethod;->methodProxy:Lorg/mockito/internal/creation/util/MockitoMethodProxy;

    invoke-interface {v0, p1, p2}, Lorg/mockito/internal/creation/util/MockitoMethodProxy;->invokeSuper(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
