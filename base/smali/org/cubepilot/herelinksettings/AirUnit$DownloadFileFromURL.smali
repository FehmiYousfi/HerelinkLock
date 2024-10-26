.class Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;
.super Landroid/os/AsyncTask;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/AirUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadFileFromURL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field error:Z

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/AirUnit;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 650
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "DownloadFile"

    const/4 v2, 0x0

    .line 668
    aget-object v3, p1, v2

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v1, Ljava/net/URL;

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/16 v3, 0x1388

    .line 671
    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 672
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 676
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    .line 679
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v4, 0x2000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 683
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/AU.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    const-wide/16 v5, 0x0

    .line 691
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    int-to-long v8, v7

    add-long/2addr v5, v8

    new-array v8, v0, [Ljava/lang/String;

    .line 695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v5

    int-to-long v12, p1

    div-long/2addr v10, v12

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p0, v8}, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->publishProgress([Ljava/lang/Object;)V

    .line 698
    invoke-virtual {v1, v4, v2, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 705
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 706
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 709
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v2, "Error: "

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->error:Z

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 732
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->error:Z

    if-eqz p1, :cond_0

    .line 733
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    const-string v0, "Error downloading file"

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 735
    :cond_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 657
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 658
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 721
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 722
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 723
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
