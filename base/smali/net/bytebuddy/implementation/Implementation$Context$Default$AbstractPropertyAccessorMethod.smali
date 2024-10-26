.class public abstract Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.source "Implementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractPropertyAccessorMethod"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 954
    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getBaseModifiers()I
.end method

.method public getModifiers()I
    .locals 2

    .line 958
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;->getBaseModifiers()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method
