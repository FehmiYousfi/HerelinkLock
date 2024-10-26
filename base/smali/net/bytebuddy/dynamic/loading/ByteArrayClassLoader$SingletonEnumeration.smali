.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;
.super Ljava/lang/Object;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SingletonEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private element:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;->element:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;->element:Ljava/net/URL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 2

    .line 1009
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;->element:Ljava/net/URL;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1015
    iput-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;->element:Ljava/net/URL;

    return-object v0

    .line 1010
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
