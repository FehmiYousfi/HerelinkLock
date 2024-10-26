.class Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher$1;
.super Ljava/lang/Object;
.source "ThreadLocalCipher.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory<",
        "Ljavax/crypto/Cipher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$transformation:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher$1;->val$transformation:Ljava/lang/String;

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

    .line 40
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher$1;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher$1;->val$transformation:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
