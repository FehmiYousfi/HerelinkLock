.class public abstract Lnet/bytebuddy/NamingStrategy$AbstractBase;
.super Ljava/lang/Object;
.source "NamingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/NamingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/NamingStrategy$AbstractBase;->name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
