.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;
.super Ljava/lang/Object;
.source "MockMethodInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForEquals"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doIdentityEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/This;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/Argument;
            value = 0x0
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
