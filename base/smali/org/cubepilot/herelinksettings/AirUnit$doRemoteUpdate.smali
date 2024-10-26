.class Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;
.super Landroid/os/AsyncTask;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/AirUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "doRemoteUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field error:Z

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/AirUnit;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit;)V
    .locals 0

    .line 1577
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1577
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    .line 1589
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;

    invoke-direct {p1}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;-><init>()V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v1, "system_updater /data/system/AU.zip"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    const-string v0, "192.168.0.10"

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_5

    .line 1597
    iget-boolean v5, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->error:Z

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 1600
    :cond_0
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1602
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1605
    :goto_1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 1606
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result.getStatus(): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1608
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v5, 0x3c

    .line 1609
    :try_start_2
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6, v8}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1610
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result.get(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v5, :cond_1

    .line 1612
    iput-boolean v7, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->error:Z

    .line 1613
    :cond_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v5

    .line 1621
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 1622
    iput-boolean v7, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->error:Z

    goto :goto_2

    :catch_2
    move-exception v5

    .line 1618
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 1619
    iput-boolean v7, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->error:Z

    goto :goto_2

    :catch_3
    move-exception v5

    .line 1615
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1616
    iput-boolean v7, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->error:Z

    :cond_2
    :goto_2
    mul-int/lit8 v5, v2, 0x64

    .line 1626
    div-int/2addr v5, v4

    .line 1627
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v8, 0xd

    sub-int/2addr v4, v2

    .line 1628
    invoke-virtual {v6, v8, v4}, Ljava/util/Calendar;->add(II)V

    new-array v4, v7, [Ljava/lang/String;

    .line 1629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->publishProgress([Ljava/lang/Object;)V

    .line 1634
    :try_start_4
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    .line 1636
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    move-object v4, v3

    :goto_3
    const/16 v5, 0x1388

    .line 1639
    :try_start_5
    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1640
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "isReachable: true"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_4

    goto :goto_4

    .line 1643
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "isReachable: false"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1577
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1662
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1663
    iget-boolean p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->error:Z

    if-eqz p1, :cond_0

    .line 1664
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    const-string v0, "Unknown Error "

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1666
    :cond_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1667
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    const-string v0, "Done"

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1581
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1582
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Please wait for process to complete (allow 5 mins)"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1583
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1577
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 1654
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1655
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1656
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1657
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
