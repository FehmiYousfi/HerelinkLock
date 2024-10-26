.class public Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;
.super Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;
.source "ThreadLocalCertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto<",
        "Ljava/security/cert/CertificateFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory$1;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;)V

    return-void
.end method
