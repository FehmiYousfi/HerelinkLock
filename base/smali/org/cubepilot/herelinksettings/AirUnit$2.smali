.class final Lorg/cubepilot/herelinksettings/AirUnit$2;
.super Ljava/lang/Object;
.source "AirUnit.java"

# interfaces
.implements Lcom/tananaev/adblib/AdbBase64;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/AirUnit;->getBase64Impl()Lcom/tananaev/adblib/AdbBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeToString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
