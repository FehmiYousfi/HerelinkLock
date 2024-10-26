.class public Lse/vidstige/jadb/AdbServerLauncher;
.super Ljava/lang/Object;
.source "AdbServerLauncher.java"


# instance fields
.field private final executable:Ljava/lang/String;

.field private subprocess:Lse/vidstige/jadb/Subprocess;


# direct methods
.method public constructor <init>(Lse/vidstige/jadb/Subprocess;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lse/vidstige/jadb/AdbServerLauncher;->subprocess:Lse/vidstige/jadb/Subprocess;

    .line 31
    iput-object p2, p0, Lse/vidstige/jadb/AdbServerLauncher;->executable:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lse/vidstige/jadb/Subprocess;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/vidstige/jadb/Subprocess;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {p2}, Lse/vidstige/jadb/AdbServerLauncher;->findAdbExecutable(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/AdbServerLauncher;-><init>(Lse/vidstige/jadb/Subprocess;Ljava/lang/String;)V

    return-void
.end method

.method private static findAdbExecutable(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ANDROID_HOME"

    .line 35
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/platform-tools/adb"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "adb"

    return-object p0
.end method


# virtual methods
.method public launch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lse/vidstige/jadb/AdbServerLauncher;->subprocess:Lse/vidstige/jadb/Subprocess;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lse/vidstige/jadb/AdbServerLauncher;->executable:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "start-server"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lse/vidstige/jadb/Subprocess;->execute([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 45
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb exited with exit code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
