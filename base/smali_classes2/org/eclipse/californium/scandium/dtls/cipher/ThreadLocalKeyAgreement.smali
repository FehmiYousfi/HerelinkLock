.class public Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;
.super Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;
.source "ThreadLocalKeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto<",
        "Ljavax/crypto/KeyAgreement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement$1;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;)V

    return-void
.end method
