.class public interface abstract Lse/vidstige/jadb/server/AdbDeviceResponder;
.super Ljava/lang/Object;
.source "AdbDeviceResponder.java"


# virtual methods
.method public abstract enableIpCommand(Ljava/lang/String;Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract filePulled(Lse/vidstige/jadb/RemoteFile;Ljava/io/ByteArrayOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lse/vidstige/jadb/JadbException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract filePushed(Lse/vidstige/jadb/RemoteFile;ILjava/io/ByteArrayOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation
.end method

.method public abstract getSerial()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract list(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lse/vidstige/jadb/RemoteFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shell(Ljava/lang/String;Ljava/io/DataOutputStream;Ljava/io/DataInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
