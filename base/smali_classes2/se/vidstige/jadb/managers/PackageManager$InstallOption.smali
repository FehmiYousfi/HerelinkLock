.class public Lse/vidstige/jadb/managers/PackageManager$InstallOption;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/vidstige/jadb/managers/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallOption"
.end annotation


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;->stringBuilder:Ljava/lang/StringBuilder;

    .line 98
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 99
    iget-object v4, p0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const-string v1, " "

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lse/vidstige/jadb/managers/PackageManager$InstallOption;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-direct {p0}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;->getStringRepresentation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringRepresentation()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
