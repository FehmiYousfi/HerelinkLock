.class public Lse/vidstige/jadb/AdbFilterOutputStream;
.super Lse/vidstige/jadb/LookBackFilteringOutputStream;
.source "AdbFilterOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/LookBackFilteringOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lse/vidstige/jadb/AdbFilterOutputStream;->lookback()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lse/vidstige/jadb/AdbFilterOutputStream;->lookback()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lse/vidstige/jadb/AdbFilterOutputStream;->unwrite()V

    .line 19
    :cond_0
    invoke-super {p0, p1}, Lse/vidstige/jadb/LookBackFilteringOutputStream;->write(I)V

    return-void
.end method
