.class final Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$1;
.super Ljava/lang/Object;
.source "AsyncAdvancedPskStore.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$1;->getInstance(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;
    .locals 1

    .line 59
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
