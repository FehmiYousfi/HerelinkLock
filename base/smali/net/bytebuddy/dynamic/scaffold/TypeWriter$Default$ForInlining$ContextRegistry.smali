.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;
.super Ljava/lang/Object;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContextRegistry"
.end annotation


# instance fields
.field private implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 3543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuxiliaryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation

    .line 3567
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->getAuxiliaryTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setImplementationContext(Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V
    .locals 0

    .line 3556
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    return-void
.end method
