.class Lorg/cubepilot/herelinksettings/AirUnit$1;
.super Ljava/lang/Object;
.source "AirUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/AirUnit;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/AirUnit;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$1;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 391
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$1;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/AirUnit;->updatecheck_url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 397
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    .line 400
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 404
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 408
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/cubepilot/herelinksettings/AirUnit$1$1;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$1$1;-><init>(Lorg/cubepilot/herelinksettings/AirUnit$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-void
.end method
