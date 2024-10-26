.class public interface abstract Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;
.super Ljava/lang/Object;
.source "XECDHECryptography.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "XDHPublicKeyApi"
.end annotation


# virtual methods
.method public abstract getCurveName(Ljava/security/PublicKey;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract isSupporting(Ljava/security/PublicKey;)Z
.end method
