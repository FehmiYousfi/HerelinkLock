.class public Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$LazyFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyTypeDescription"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V
    .locals 0

    .line 7652
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;-><init>()V

    .line 7653
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 7654
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected delegate()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 7664
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 7659
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->name:Ljava/lang/String;

    return-object v0
.end method
