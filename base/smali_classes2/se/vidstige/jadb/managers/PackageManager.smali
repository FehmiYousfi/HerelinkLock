.class public Lse/vidstige/jadb/managers/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/vidstige/jadb/managers/PackageManager$InstallOption;
    }
.end annotation


# static fields
.field public static final ALLOW_TEST_APK:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

.field public static final ALLOW_VERSION_DOWNGRADE:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

.field public static final GRANT_ALL_PERMISSIONS:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

.field public static final REINSTALL_KEEPING_DATA:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

.field public static final WITH_FORWARD_LOCK:Lse/vidstige/jadb/managers/PackageManager$InstallOption;


# instance fields
.field private final device:Lse/vidstige/jadb/JadbDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const-string v1, "-l"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    sput-object v0, Lse/vidstige/jadb/managers/PackageManager;->WITH_FORWARD_LOCK:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    .line 111
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const-string v1, "-r"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    sput-object v0, Lse/vidstige/jadb/managers/PackageManager;->REINSTALL_KEEPING_DATA:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    .line 114
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const-string v1, "-t"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    sput-object v0, Lse/vidstige/jadb/managers/PackageManager;->ALLOW_TEST_APK:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    .line 133
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const-string v1, "-d"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    sput-object v0, Lse/vidstige/jadb/managers/PackageManager;->ALLOW_VERSION_DOWNGRADE:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    .line 139
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const-string v1, "-g"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    sput-object v0, Lse/vidstige/jadb/managers/PackageManager;->GRANT_ALL_PERMISSIONS:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    return-void
.end method

.method public constructor <init>(Lse/vidstige/jadb/JadbDevice;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    return-void
.end method

.method public static ON_INTERNAL_SYSTEM_MEMORY(Ljava/lang/String;)Lse/vidstige/jadb/managers/PackageManager$InstallOption;
    .locals 4

    .line 130
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-f"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static ON_SHARED_MASS_STORAGE(Ljava/lang/String;)Lse/vidstige/jadb/managers/PackageManager$InstallOption;
    .locals 4

    .line 125
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-s"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static WITH_INSTALLER_PACKAGE_NAME(Ljava/lang/String;)Lse/vidstige/jadb/managers/PackageManager$InstallOption;
    .locals 4

    .line 120
    new-instance v0, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-t"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private getErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private install(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 52
    new-instance v0, Lse/vidstige/jadb/RemoteFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lse/vidstige/jadb/RemoteFile;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    invoke-virtual {v1, p1, v0}, Lse/vidstige/jadb/JadbDevice;->push(Ljava/io/File;Lse/vidstige/jadb/RemoteFile;)V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "install"

    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {v0}, Lse/vidstige/jadb/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "pm"

    invoke-virtual {p2, v3, v1}, Lse/vidstige/jadb/JadbDevice;->executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 59
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v1}, Lse/vidstige/jadb/Stream;->readAll(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-direct {p0, v0}, Lse/vidstige/jadb/managers/PackageManager;->remove(Lse/vidstige/jadb/RemoteFile;)V

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, p2}, Lse/vidstige/jadb/managers/PackageManager;->verifyOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private remove(Lse/vidstige/jadb/RemoteFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-f"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lse/vidstige/jadb/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "rm"

    invoke-virtual {v0, p1, v1}, Lse/vidstige/jadb/JadbDevice;->executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 48
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lse/vidstige/jadb/Stream;->readAll(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    return-void
.end method

.method private verifyOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const-string v0, "Success"

    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lse/vidstige/jadb/JadbException;

    invoke-direct {p0, p1, p2, p3}, Lse/vidstige/jadb/managers/PackageManager;->getErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lse/vidstige/jadb/JadbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public forceInstall(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 78
    sget-object v0, Lse/vidstige/jadb/managers/PackageManager;->REINSTALL_KEEPING_DATA:Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lse/vidstige/jadb/managers/PackageManager;->installWithOptions(Ljava/io/File;Ljava/util/List;)V

    return-void
.end method

.method public getPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lse/vidstige/jadb/managers/Package;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    const-string v3, "list"

    const-string v4, "packages"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "pm"

    invoke-virtual {v2, v4, v3}, Lse/vidstige/jadb/JadbDevice;->executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "package:"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    new-instance v3, Lse/vidstige/jadb/managers/Package;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lse/vidstige/jadb/managers/Package;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 35
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public install(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/managers/PackageManager;->install(Ljava/io/File;Ljava/util/List;)V

    return-void
.end method

.method public installWithOptions(Ljava/io/File;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lse/vidstige/jadb/managers/PackageManager$InstallOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lse/vidstige/jadb/managers/PackageManager$InstallOption;

    .line 72
    invoke-static {v1}, Lse/vidstige/jadb/managers/PackageManager$InstallOption;->access$000(Lse/vidstige/jadb/managers/PackageManager$InstallOption;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/managers/PackageManager;->install(Ljava/io/File;Ljava/util/List;)V

    return-void
.end method

.method public launch(Lse/vidstige/jadb/managers/Package;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-p"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lse/vidstige/jadb/managers/Package;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "-c"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    const-string v2, "android.intent.category.LAUNCHER"

    aput-object v2, v1, p1

    const/4 p1, 0x4

    const-string v2, "1"

    aput-object v2, v1, p1

    const-string p1, "monkey"

    invoke-virtual {v0, p1, v1}, Lse/vidstige/jadb/JadbDevice;->executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public uninstall(Lse/vidstige/jadb/managers/Package;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lse/vidstige/jadb/managers/PackageManager;->device:Lse/vidstige/jadb/JadbDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "uninstall"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lse/vidstige/jadb/managers/Package;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "pm"

    invoke-virtual {v0, v3, v1}, Lse/vidstige/jadb/JadbDevice;->executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lse/vidstige/jadb/Stream;->readAll(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lse/vidstige/jadb/managers/Package;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, v0}, Lse/vidstige/jadb/managers/PackageManager;->verifyOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
