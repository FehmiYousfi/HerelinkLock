.class public interface abstract Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;
.super Ljava/lang/Object;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimpleKeyStore"
.end annotation


# virtual methods
.method public abstract load(Ljava/io/InputStream;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
