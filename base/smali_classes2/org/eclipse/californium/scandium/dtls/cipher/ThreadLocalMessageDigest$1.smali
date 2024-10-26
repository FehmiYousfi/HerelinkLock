.class Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest$1;
.super Ljava/lang/Object;
.source "ThreadLocalMessageDigest.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$algorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest$1;->val$algorithm:Ljava/lang/String;

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

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest$1;->getInstance()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest$1;->val$algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method
