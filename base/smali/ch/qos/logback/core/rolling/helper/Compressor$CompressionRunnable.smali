.class Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/rolling/helper/Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressionRunnable"
.end annotation


# instance fields
.field final innerEntryName:Ljava/lang/String;

.field final nameOfCompressedFile:Ljava/lang/String;

.field final nameOfFile2Compress:Ljava/lang/String;

.field final synthetic this$0:Lch/qos/logback/core/rolling/helper/Compressor;


# direct methods
.method constructor <init>(Lch/qos/logback/core/rolling/helper/Compressor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->this$0:Lch/qos/logback/core/rolling/helper/Compressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->nameOfFile2Compress:Ljava/lang/String;

    iput-object p3, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->nameOfCompressedFile:Ljava/lang/String;

    iput-object p4, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->innerEntryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->this$0:Lch/qos/logback/core/rolling/helper/Compressor;

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->nameOfFile2Compress:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->nameOfCompressedFile:Ljava/lang/String;

    iget-object v3, p0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;->innerEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lch/qos/logback/core/rolling/helper/Compressor;->compress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
