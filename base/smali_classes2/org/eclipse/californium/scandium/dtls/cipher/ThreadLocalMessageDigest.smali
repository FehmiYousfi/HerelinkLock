.class public Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;
.super Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;
.source "ThreadLocalMessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest$1;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;)V

    return-void
.end method
