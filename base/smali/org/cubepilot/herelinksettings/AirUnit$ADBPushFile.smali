.class Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;
.super Landroid/os/AsyncTask;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/AirUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADBPushFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bps:J

.field message:Ljava/lang/String;

.field private percentdone:D

.field private projected:Ljava/util/Calendar;

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/AirUnit;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit;)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "Pushing to AirUnit. Please Wait..."

    .line 1197
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->message:Ljava/lang/String;

    .line 1198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->projected:Ljava/util/Calendar;

    return-void
.end method

.method private sendChunk(Lcom/tananaev/adblib/AdbStream;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1511
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 1512
    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p4, 0x8

    .line 1514
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string p3, "DATA"

    .line 1515
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p3, 0x4

    .line 1516
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1517
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1518
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12

    const-string p1, "LIST"

    const-string v0, "DONE"

    const-string v1, "shell: "

    .line 1295
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->doRoot()Z

    const/4 v2, 0x0

    .line 1303
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/pub.key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/priv.key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1303
    invoke-static {v3, v4}, Lorg/cubepilot/herelinksettings/AirUnit;->setupCrypto(Ljava/lang/String;Ljava/lang/String;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10

    .line 1318
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Socket connecting..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1320
    :try_start_1
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 1321
    new-instance v5, Ljava/net/InetSocketAddress;

    const-string v6, "192.168.0.10"

    const/16 v7, 0x15b3

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 1329
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Socket connected"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1333
    :try_start_2
    invoke-static {v4, v3}, Lcom/tananaev/adblib/AdbConnection;->create(Ljava/net/Socket;Lcom/tananaev/adblib/AdbCrypto;)Lcom/tananaev/adblib/AdbConnection;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 1340
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ADB connecting..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1342
    :try_start_3
    invoke-virtual {v3}, Lcom/tananaev/adblib/AdbConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_b

    .line 1350
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ADB connected"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1352
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ADB root"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    :try_start_4
    const-string v7, "root:"

    .line 1354
    invoke-virtual {v3, v7}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->close()V

    .line 1355
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 1356
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "ADB root sleep"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 1362
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    .line 1360
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_5
    const-string v7, "shell:"

    .line 1368
    invoke-virtual {v3, v7}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v7

    .line 1369
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 1370
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v8, "whoami\n"

    .line 1371
    invoke-virtual {v7, v8}, Lcom/tananaev/adblib/AdbStream;->write(Ljava/lang/String;)V

    .line 1372
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 1373
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 1374
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1402
    :try_start_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "start sync:"

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "sync:"

    .line 1404
    invoke-virtual {v3, v4}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v4

    .line 1405
    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1406
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "sync: is closed "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1407
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1410
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "start LIST 1"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    const-string v8, "/"

    .line 1414
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const/4 v9, 0x4

    .line 1416
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    array-length v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1417
    invoke-virtual {v4, v8}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1419
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 1420
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1421
    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1422
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 1423
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1426
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "start LIST 2"

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    const-string p1, "/data/system/"

    .line 1430
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1432
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    array-length v10, p1

    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1433
    invoke-virtual {v4, p1}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1435
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v8

    invoke-direct {p1, v8}, Ljava/lang/String;-><init>([B)V

    .line 1436
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1437
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1438
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v8

    invoke-direct {p1, v8}, Ljava/lang/String;-><init>([B)V

    .line 1439
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1443
    :cond_2
    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->dataAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1444
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    :cond_3
    const-string p1, "\n\nmd5sum /data/system/AU.zip\n"

    .line 1447
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1448
    :goto_3
    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->dataAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1449
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    goto :goto_3

    .line 1452
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 1453
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "md5sum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1455
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "start SEND"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "/data/system/AU.zip,0644"

    .line 1459
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1460
    array-length v1, p1

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v5, "SEND"

    .line 1461
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1462
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1463
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1464
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/tananaev/adblib/AdbStream;->write([B)V

    .line 1474
    new-instance p1, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1475
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/AU.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1474
    invoke-virtual {p0, p1, v4}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->sendStream(Ljava/io/InputStream;Lcom/tananaev/adblib/AdbStream;)V

    .line 1479
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1, v2}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    .line 1480
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v4, p1, v0}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    .line 1481
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 1482
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v4}, Lcom/tananaev/adblib/AdbStream;->close()V

    .line 1487
    invoke-virtual {v7}, Lcom/tananaev/adblib/AdbStream;->close()V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1500
    :try_start_7
    invoke-virtual {v3}, Lcom/tananaev/adblib/AdbConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 1502
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1504
    :goto_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ADB sync Complete"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1506
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 1495
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1496
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    .line 1492
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1493
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    .line 1489
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1490
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception p1

    .line 1393
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1394
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    .line 1390
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1391
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_8
    move-exception p1

    .line 1387
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1388
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_9
    move-exception p1

    .line 1377
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1378
    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1380
    :try_start_8
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_5

    :catch_a
    move-exception p1

    .line 1382
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    const-string p1, ""

    .line 1385
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_b
    move-exception p1

    .line 1347
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1348
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_c
    move-exception p1

    .line 1344
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1345
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_d
    move-exception p1

    .line 1335
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1336
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_e
    move-exception p1

    .line 1326
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1327
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_f
    move-exception p1

    .line 1323
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1324
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_10
    move-exception p1

    .line 1313
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1314
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_11
    move-exception p1

    .line 1310
    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .line 1311
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    .line 1307
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1308
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1196
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method doRoot()Z
    .locals 6

    const/4 v0, 0x0

    .line 1220
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pub.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/priv.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1220
    invoke-static {v1, v2}, Lorg/cubepilot/herelinksettings/AirUnit;->setupCrypto(Ljava/lang/String;Ljava/lang/String;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1235
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Socket connecting..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1237
    :try_start_1
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 1238
    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "192.168.0.10"

    const/16 v5, 0x15b3

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1246
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Socket connected"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1250
    :try_start_2
    invoke-static {v2, v1}, Lcom/tananaev/adblib/AdbConnection;->create(Ljava/net/Socket;Lcom/tananaev/adblib/AdbCrypto;)Lcom/tananaev/adblib/AdbConnection;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1257
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ADB connecting..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    :try_start_3
    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1267
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ADB connected"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ADB root"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_4
    const-string v0, "root:"

    .line 1271
    invoke-virtual {v1, v0}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tananaev/adblib/AdbStream;->close()V

    .line 1272
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 1273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ADB root sleep"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1277
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1275
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1281
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1283
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :catch_3
    move-exception v1

    .line 1264
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v0

    :catch_4
    move-exception v1

    .line 1261
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_5
    move-exception v1

    .line 1252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_6
    move-exception v1

    .line 1243
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_7
    move-exception v1

    .line 1240
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    return v0

    :catch_8
    move-exception v1

    .line 1230
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_9
    move-exception v1

    .line 1227
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    return v0

    :catch_a
    move-exception v1

    .line 1224
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 1564
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1196
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1207
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1208
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1209
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1196
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 5

    .line 1551
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->percentdone:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->bps:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "bps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1552
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->percentdone:D

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1553
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ETA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->projected:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1554
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1555
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public sendStream(Ljava/io/InputStream;Lcom/tananaev/adblib/AdbStream;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 1524
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 1525
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 1526
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v6, 0x0

    :goto_0
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    .line 1529
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v10

    sub-int v10, v3, v10

    .line 1530
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    div-long/2addr v11, v8

    int-to-long v13, v10

    .line 1531
    div-long/2addr v13, v11

    iput-wide v13, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->bps:J

    .line 1532
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v13

    int-to-long v13, v13

    iget-wide v8, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->bps:J

    div-long/2addr v13, v8

    .line 1533
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->projected:Ljava/util/Calendar;

    .line 1534
    iget-object v8, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->projected:Ljava/util/Calendar;

    const/16 v9, 0xd

    long-to-int v13, v13

    invoke-virtual {v8, v9, v13}, Ljava/util/Calendar;->add(II)V

    cmp-long v8, v6, v11

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 1536
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADB sendStream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->bps:J

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ETA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->projected:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    int-to-double v6, v10

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v13

    int-to-double v13, v3

    div-double/2addr v6, v13

    .line 1537
    iput-wide v6, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->percentdone:D

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 1538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->percentdone:D

    double-to-int v8, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v6}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-wide v11, v6

    :goto_1
    move-object/from16 v6, p2

    .line 1541
    invoke-direct {p0, v6, v2, v9, v4}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->sendChunk(Lcom/tananaev/adblib/AdbStream;[BII)V

    .line 1542
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move-wide v6, v11

    const-wide/16 v8, 0x3e8

    goto/16 :goto_0

    :cond_1
    return-void
.end method
