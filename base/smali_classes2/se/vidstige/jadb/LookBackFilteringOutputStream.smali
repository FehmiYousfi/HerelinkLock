.class public Lse/vidstige/jadb/LookBackFilteringOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LookBackFilteringOutputStream.java"


# instance fields
.field private final buffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final lookBackBufferSize:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    iput p2, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->lookBackBufferSize:I

    .line 16
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->buffer:Ljava/util/ArrayDeque;

    return-void
.end method

.method private flushBuffer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    :goto_0
    iget-object v0, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 41
    iget-object v0, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 42
    iget-object v1, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lse/vidstige/jadb/LookBackFilteringOutputStream;->flushBuffer(I)V

    .line 36
    iget-object v0, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected lookback()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->buffer:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method protected unwrite()V
    .locals 1

    .line 20
    iget-object v0, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->buffer:Ljava/util/ArrayDeque;

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 30
    iget p1, p0, Lse/vidstige/jadb/LookBackFilteringOutputStream;->lookBackBufferSize:I

    invoke-direct {p0, p1}, Lse/vidstige/jadb/LookBackFilteringOutputStream;->flushBuffer(I)V

    return-void
.end method
