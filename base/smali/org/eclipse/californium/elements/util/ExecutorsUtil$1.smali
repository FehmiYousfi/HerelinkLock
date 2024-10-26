.class final Lorg/eclipse/californium/elements/util/ExecutorsUtil$1;
.super Ljava/lang/Object;
.source "ExecutorsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/ExecutorsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    invoke-static {}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "warmup ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method
