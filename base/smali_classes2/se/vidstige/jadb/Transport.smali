.class Lse/vidstige/jadb/Transport;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final dataInput:Ljava/io/DataInputStream;

.field private final dataOutput:Ljava/io/DataOutputStream;

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lse/vidstige/jadb/Transport;->outputStream:Ljava/io/OutputStream;

    .line 16
    iput-object p2, p0, Lse/vidstige/jadb/Transport;->inputStream:Ljava/io/InputStream;

    .line 17
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lse/vidstige/jadb/Transport;->dataInput:Ljava/io/DataInputStream;

    .line 18
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lse/vidstige/jadb/Transport;->dataOutput:Ljava/io/DataOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lse/vidstige/jadb/Transport;-><init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    return-void
.end method

.method private getCommandLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%04x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lse/vidstige/jadb/Transport;->dataInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 73
    iget-object v0, p0, Lse/vidstige/jadb/Transport;->dataOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 36
    iget-object v0, p0, Lse/vidstige/jadb/Transport;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public readResponseTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lse/vidstige/jadb/Transport;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lse/vidstige/jadb/Stream;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 26
    invoke-virtual {p0, v0}, Lse/vidstige/jadb/Transport;->readString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lse/vidstige/jadb/Transport;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-array p1, p1, [B

    .line 49
    iget-object v0, p0, Lse/vidstige/jadb/Transport;->dataInput:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 50
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lse/vidstige/jadb/Transport;->outputStream:Ljava/io/OutputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 59
    invoke-direct {p0, p1}, Lse/vidstige/jadb/Transport;->getCommandLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public startSync()Lse/vidstige/jadb/SyncTransport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const-string v0, "sync:"

    .line 65
    invoke-virtual {p0, v0}, Lse/vidstige/jadb/Transport;->send(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lse/vidstige/jadb/Transport;->verifyResponse()V

    .line 67
    new-instance v0, Lse/vidstige/jadb/SyncTransport;

    iget-object v1, p0, Lse/vidstige/jadb/Transport;->dataOutput:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lse/vidstige/jadb/Transport;->dataInput:Ljava/io/DataInputStream;

    invoke-direct {v0, v1, v2}, Lse/vidstige/jadb/SyncTransport;-><init>(Ljava/io/DataOutput;Ljava/io/DataInput;)V

    return-object v0
.end method

.method public verifyResponse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 40
    invoke-virtual {p0, v0}, Lse/vidstige/jadb/Transport;->readString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OKAY"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lse/vidstige/jadb/Transport;->readString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lse/vidstige/jadb/JadbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lse/vidstige/jadb/JadbException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
