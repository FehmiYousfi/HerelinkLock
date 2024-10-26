.class public Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;
.super Landroid/os/AsyncTask;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/AirUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADBGetInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/tananaev/adblib/AdbStream;",
        ">;"
    }
.end annotation


# instance fields
.field _context:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 951
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 952
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;
    .locals 9

    const-string p1, "0"

    .line 969
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->publishProgress([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 972
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pub.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/priv.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-static {v0, v1}, Lorg/cubepilot/herelinksettings/AirUnit;->setupCrypto(Ljava/lang/String;Ljava/lang/String;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    const-string v1, "10"

    .line 985
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->publishProgress([Ljava/lang/Object;)V

    .line 987
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Socket connecting..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 990
    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "192.168.0.10"

    const/16 v4, 0x15b3

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 998
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Socket connected"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "30"

    .line 1000
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->publishProgress([Ljava/lang/Object;)V

    .line 1003
    :try_start_2
    invoke-static {v1, v0}, Lcom/tananaev/adblib/AdbConnection;->create(Ljava/net/Socket;Lcom/tananaev/adblib/AdbCrypto;)Lcom/tananaev/adblib/AdbConnection;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    const-string v2, "40"

    .line 1008
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->publishProgress([Ljava/lang/Object;)V

    .line 1010
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ADB connecting..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1012
    :try_start_3
    invoke-virtual {v0}, Lcom/tananaev/adblib/AdbConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1020
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ADB connected"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "50"

    .line 1022
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->publishProgress([Ljava/lang/Object;)V

    :try_start_4
    const-string v2, "shell:"

    .line 1027
    invoke-virtual {v0, v2}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v2

    const-string v3, "whoami\n"

    .line 1028
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1030
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 1032
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 1033
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shell: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "getprop\n"

    .line 1035
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1037
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    const-string v3, ""

    .line 1039
    :goto_0
    invoke-virtual {v2}, Lcom/tananaev/adblib/AdbStream;->dataAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1042
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    goto :goto_0

    :cond_0
    const-string v4, "\\[([^\\]]+)\\]:\\s+\\[([^\\]]+)\\]"

    .line 1047
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1049
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1050
    sget-object v4, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1051
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1052
    sget-object v4, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1054
    :cond_1
    invoke-virtual {v2}, Lcom/tananaev/adblib/AdbStream;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1077
    :try_start_5
    invoke-virtual {v0}, Lcom/tananaev/adblib/AdbConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1079
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const-string v0, "100"

    .line 1082
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->publishProgress([Ljava/lang/Object;)V

    return-object p1

    :catch_1
    move-exception v0

    .line 1072
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object p1

    :catch_2
    move-exception v0

    .line 1069
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :catch_3
    move-exception v0

    .line 1066
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p1

    :catch_4
    move-exception v0

    .line 1056
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1057
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    :try_start_6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object p1

    :catch_6
    move-exception v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object p1

    :catch_7
    move-exception v0

    .line 1014
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :catch_8
    move-exception v0

    .line 1005
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :catch_9
    move-exception v0

    .line 995
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :catch_a
    move-exception v0

    .line 992
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    return-object p1

    :catch_b
    move-exception v0

    .line 982
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :catch_c
    move-exception v0

    .line 979
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    return-object p1

    :catch_d
    move-exception v0

    .line 976
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 948
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->doInBackground([Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/tananaev/adblib/AdbStream;)V
    .locals 10

    const-string v0, "ro.build.date"

    const-string v1, "ro.product.model"

    const-string v2, "ro.serialno"

    const-string v3, "ADBGetInfo"

    const-string v4, "gsm.version.baseband"

    .line 1096
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1097
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1098
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1099
    invoke-static {p1}, Lorg/cubepilot/herelinksettings/AirUnit;->access$202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1102
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v5, 0x7f0901f2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "persist.uart.1.baud"

    const-string v6, "ro.build.version.incremental"

    if-eqz p1, :cond_7

    .line 1104
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local Version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "N/A"

    if-eqz v8, :cond_1

    :try_start_2
    sget-object v8, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v8, v9

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nSN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    .line 1106
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v9

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nModel: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    .line 1107
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v9

    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBaseBand Air: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    .line 1108
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v9

    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBaseBand GCS: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-static {v4}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuildDate: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    .line 1110
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v0, v9

    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nBaud: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    .line 1111
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    :cond_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    :cond_7
    sget-object p1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const v0, 0x7f09005d

    const v1, 0x7f090067

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    .line 1114
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1115
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1117
    :cond_8
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/AirUnit;->CheckBaseBandVersion(Landroidx/fragment/app/Fragment;)V

    .line 1119
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1120
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1122
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v4, 0x7f09019c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move v4, v2

    .line 1123
    :goto_5
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_a

    .line 1124
    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1125
    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1130
    :cond_a
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v4, ""

    if-ne p1, v4, :cond_c

    .line 1133
    :cond_b
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v4, 0x7f09005e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1134
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1135
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_7
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 948
    check-cast p1, Lcom/tananaev/adblib/AdbStream;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->onPostExecute(Lcom/tananaev/adblib/AdbStream;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 957
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 958
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Get Params..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 960
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 948
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 1088
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1089
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
