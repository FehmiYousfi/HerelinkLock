.class public Lse/vidstige/jadb/SyncTransport;
.super Ljava/lang/Object;
.source "SyncTransport.java"


# instance fields
.field private final input:Ljava/io/DataInput;

.field private final output:Ljava/io/DataOutput;


# direct methods
.method public constructor <init>(Ljava/io/DataOutput;Ljava/io/DataInput;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    .line 16
    iput-object p2, p0, Lse/vidstige/jadb/SyncTransport;->input:Ljava/io/DataInput;

    return-void
.end method

.method private readChunk([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 88
    invoke-direct {p0, v0}, Lse/vidstige/jadb/SyncTransport;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Lse/vidstige/jadb/SyncTransport;->readInt()I

    move-result v1

    const-string v2, "FAIL"

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DATA"

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 94
    :cond_0
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->input:Ljava/io/DataInput;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Ljava/io/DataInput;->readFully([BII)V

    return v1

    .line 91
    :cond_1
    new-instance p1, Lse/vidstige/jadb/JadbException;

    invoke-direct {p0, v1}, Lse/vidstige/jadb/SyncTransport;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lse/vidstige/jadb/JadbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->input:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-array p1, p1, [B

    .line 50
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->input:Ljava/io/DataInput;

    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 51
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private sendChunk([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    const-string v1, "DATA"

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-static {p3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method


# virtual methods
.method public readChunksTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 109
    invoke-direct {p0, v0}, Lse/vidstige/jadb/SyncTransport;->readChunk([B)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    invoke-direct {p0, v0}, Lse/vidstige/jadb/SyncTransport;->readChunk([B)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readDirectoryEntry()Lse/vidstige/jadb/RemoteFileRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 70
    invoke-direct {p0, v0}, Lse/vidstige/jadb/SyncTransport;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-direct {p0}, Lse/vidstige/jadb/SyncTransport;->readInt()I

    move-result v1

    .line 72
    invoke-direct {p0}, Lse/vidstige/jadb/SyncTransport;->readInt()I

    move-result v2

    .line 73
    invoke-direct {p0}, Lse/vidstige/jadb/SyncTransport;->readInt()I

    move-result v3

    .line 74
    invoke-direct {p0}, Lse/vidstige/jadb/SyncTransport;->readInt()I

    move-result v4

    .line 75
    invoke-direct {p0, v4}, Lse/vidstige/jadb/SyncTransport;->readString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DENT"

    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lse/vidstige/jadb/RemoteFileRecord;->DONE:Lse/vidstige/jadb/RemoteFileRecord;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lse/vidstige/jadb/RemoteFileRecord;

    invoke-direct {v0, v4, v1, v2, v3}, Lse/vidstige/jadb/RemoteFileRecord;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 22
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 23
    iget-object p2, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 24
    iget-object p2, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->write([B)V

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sync commands must have length 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendDirectoryEntry(Lse/vidstige/jadb/RemoteFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    const-string v1, "DENT"

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-virtual {p1}, Lse/vidstige/jadb/RemoteFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit16 v1, v1, 0x1b6

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-virtual {p1}, Lse/vidstige/jadb/RemoteFile;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-virtual {p1}, Lse/vidstige/jadb/RemoteFile;->getLastModified()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 59
    invoke-virtual {p1}, Lse/vidstige/jadb/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 60
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public sendDirectoryEntryDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    const-string v1, "DONE"

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    const-string v1, "\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method public sendStatus(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lse/vidstige/jadb/SyncTransport;->output:Ljava/io/DataOutput;

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public sendStream(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, v0, v2, v1}, Lse/vidstige/jadb/SyncTransport;->sendChunk([BII)V

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public verifyStatus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 33
    invoke-direct {p0, v0}, Lse/vidstige/jadb/SyncTransport;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {p0}, Lse/vidstige/jadb/SyncTransport;->readInt()I

    move-result v1

    const-string v2, "FAIL"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "OKAY"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v1, Lse/vidstige/jadb/JadbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lse/vidstige/jadb/JadbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_1
    invoke-direct {p0, v1}, Lse/vidstige/jadb/SyncTransport;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lse/vidstige/jadb/JadbException;

    invoke-direct {v1, v0}, Lse/vidstige/jadb/JadbException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
