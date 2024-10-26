.class Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;
.super Landroid/os/AsyncTask;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/AirUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private context:Landroid/content/Context;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/AirUnit;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "UpdateApp"

    .line 861
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->TAG:Ljava/lang/String;

    const-string p1, ""

    .line 862
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 858
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11

    const-string v0, "UpdateAPP"

    .line 882
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 884
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 887
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 889
    new-instance v1, Ljava/io/File;

    const-string v4, "update.apk"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 890
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 893
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 895
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    .line 896
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v5, 0x400

    new-array v5, v5, [B

    move v6, v2

    .line 903
    :goto_0
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    add-int/2addr v6, v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Float;

    int-to-float v9, v6

    int-to-float v10, v4

    div-float/2addr v9, v10

    .line 905
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p0, v8}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->publishProgress([Ljava/lang/Object;)V

    .line 906
    invoke-virtual {v3, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 908
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 909
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-ne v6, v4, :cond_2

    .line 914
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->context:Landroid/content/Context;

    const-string v2, "updatehs"

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v2, v3, v4}, Lorg/cubepilot/herelinksettings/util/PackageInstaller1;->installPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1

    .line 912
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Length check failed"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 858
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 938
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 939
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 874
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 875
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Downloading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 876
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Float;)V
    .locals 2

    .line 931
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 933
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 858
    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->onProgressUpdate([Ljava/lang/Float;)V

    return-void
.end method

.method public setActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->context:Landroid/content/Context;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->packageName:Ljava/lang/String;

    return-void
.end method
