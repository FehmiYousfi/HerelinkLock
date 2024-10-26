.class public Lorg/cubepilot/herelinksettings/util/Updater;
.super Landroid/app/Activity;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/util/Updater$PInfo;
    }
.end annotation


# instance fields
.field public ApkName:Ljava/lang/String;

.field public AppName:Ljava/lang/String;

.field public BuildVersionPath:Ljava/lang/String;

.field public InstallAppPackageName:Ljava/lang/String;

.field public PackageName:Ljava/lang/String;

.field public Text:Ljava/lang/String;

.field public VersionCode:I

.field public VersionName:Ljava/lang/String;

.field btnCheckUpdates:Landroid/widget/Button;

.field tvApkStatus:Landroid/widget/TextView;

.field tvInstallVersion:Landroid/widget/TextView;

.field public urlpath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/util/Updater;->VersionName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/util/Updater;->BuildVersionPath:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/util/Updater;->Text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DownloadOnSDcard()V
    .locals 6

    const/4 v0, 0x1

    .line 359
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/util/Updater;->urlpath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    .line 362
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 364
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 373
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/cubepilot/herelinksettings/util/Updater;->ApkName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 378
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 382
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 383
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 386
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 394
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/util/Updater;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public GetVersionFromServer(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Error."

    const/4 v1, 0x0

    .line 296
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    .line 299
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 300
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 301
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 305
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 307
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 314
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 316
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 320
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move p1, v1

    .line 322
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " "

    if-ge p1, v6, :cond_5

    :try_start_1
    const-string p1, "="

    .line 324
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v2

    .line 325
    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x20

    if-ne v6, v8, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 329
    :cond_1
    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3b

    if-eq v6, v8, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-lt v6, v8, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x39

    if-le v6, v8, :cond_3

    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2e

    if-ne v6, v8, :cond_4

    .line 331
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 335
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 338
    :cond_5
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 340
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/cubepilot/herelinksettings/util/Updater;->VersionCode:I

    .line 341
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater;->VersionName:Ljava/lang/String;

    .line 343
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/util/Updater;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 346
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/util/Updater;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public InstallApplication()V
    .locals 4

    .line 269
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/util/Updater;->PackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/util/Updater;->ApkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/util/Updater;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public UnInstallApplication(Ljava/lang/String;)V
    .locals 2

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/util/Updater;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public checkInstalledApp(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/util/Updater;->getPackages(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getInstallPackageVersionInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/util/Updater;->getInstalledApps(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-static {v3}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$000(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install Version Code: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$100(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Version Name: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$200(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 141
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledApps(Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lorg/cubepilot/herelinksettings/util/Updater$PInfo;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/util/Updater;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 242
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    .line 245
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    new-instance v4, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-direct {v4, p0}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;-><init>(Lorg/cubepilot/herelinksettings/util/Updater;)V

    .line 249
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/util/Updater;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$002(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$302(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$202(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4, v3}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$102(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;I)I

    .line 254
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPackages(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 146
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/util/Updater;->getInstalledApps(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 152
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-static {v4}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$000(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    iget v4, p0, Lorg/cubepilot/herelinksettings/util/Updater;->VersionCode:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-static {v5}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$100(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v4, v5, :cond_0

    .line 164
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 169
    new-instance v4, Lorg/cubepilot/herelinksettings/util/Updater$1;

    invoke-direct {v4, p0}, Lorg/cubepilot/herelinksettings/util/Updater$1;-><init>(Lorg/cubepilot/herelinksettings/util/Updater;)V

    .line 193
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "New Apk Available.."

    .line 194
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v7, "Yes Proceed"

    invoke-virtual {v5, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v7, "No."

    .line 195
    invoke-virtual {v5, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    :cond_0
    iget v4, p0, Lorg/cubepilot/herelinksettings/util/Updater;->VersionCode:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;

    invoke-static {v5}, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->access$100(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 200
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 204
    new-instance v4, Lorg/cubepilot/herelinksettings/util/Updater$2;

    invoke-direct {v4, p0}, Lorg/cubepilot/herelinksettings/util/Updater$2;-><init>(Lorg/cubepilot/herelinksettings/util/Updater;)V

    .line 228
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "NO need to Install."

    .line 229
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Install Forcely"

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Cancel."

    .line 230
    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
