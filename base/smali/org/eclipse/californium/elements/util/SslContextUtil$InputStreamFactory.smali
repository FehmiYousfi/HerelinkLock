.class public interface abstract Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;
.super Ljava/lang/Object;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputStreamFactory"
.end annotation


# virtual methods
.method public abstract create(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
