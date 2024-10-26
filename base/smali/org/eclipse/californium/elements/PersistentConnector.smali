.class public interface abstract Lorg/eclipse/californium/elements/PersistentConnector;
.super Ljava/lang/Object;
.source "PersistentConnector.java"


# virtual methods
.method public abstract loadConnections(Ljava/io/InputStream;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract saveConnections(Ljava/io/OutputStream;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
