.class Lse/vidstige/jadb/RemoteFileRecord;
.super Lse/vidstige/jadb/RemoteFile;
.source "RemoteFileRecord.java"


# static fields
.field public static final DONE:Lse/vidstige/jadb/RemoteFileRecord;


# instance fields
.field private final lastModified:I

.field private final mode:I

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lse/vidstige/jadb/RemoteFileRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1, v1}, Lse/vidstige/jadb/RemoteFileRecord;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lse/vidstige/jadb/RemoteFileRecord;->DONE:Lse/vidstige/jadb/RemoteFileRecord;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lse/vidstige/jadb/RemoteFile;-><init>(Ljava/lang/String;)V

    .line 15
    iput p2, p0, Lse/vidstige/jadb/RemoteFileRecord;->mode:I

    .line 16
    iput p3, p0, Lse/vidstige/jadb/RemoteFileRecord;->size:I

    .line 17
    iput p4, p0, Lse/vidstige/jadb/RemoteFileRecord;->lastModified:I

    return-void
.end method


# virtual methods
.method public getLastModified()I
    .locals 1

    .line 27
    iget v0, p0, Lse/vidstige/jadb/RemoteFileRecord;->lastModified:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 22
    iget v0, p0, Lse/vidstige/jadb/RemoteFileRecord;->size:I

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 32
    iget v0, p0, Lse/vidstige/jadb/RemoteFileRecord;->mode:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
