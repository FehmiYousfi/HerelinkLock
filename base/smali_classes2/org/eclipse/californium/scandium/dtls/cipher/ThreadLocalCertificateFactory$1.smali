.class Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory$1;
.super Ljava/lang/Object;
.source "ThreadLocalCertificateFactory.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory<",
        "Ljava/security/cert/CertificateFactory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$algorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory$1;->val$algorithm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory$1;->getInstance()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/security/cert/CertificateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory$1;->val$algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method
